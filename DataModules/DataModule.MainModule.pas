unit DataModule.MainModule;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait,
  Utils.SessionManager, Models.UserModel, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdMessage,
  Models.Condominium;

type
  TMainModule = class(TDataModule)
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateDatabase;
    function UserLogin(Username, Password: String;
      KeepConnected: Boolean): Boolean;
    function UserSignUp(Username, Password, Email, Telephone: String): Boolean;
    function UserRegisteredList: TList<TUser>;
    function EmailVerifyToAccountRecovery(Email : String) : Boolean;
    function SendEmail(ToEmail: String; Title: String; Subject: String; Body: String): Boolean;
    function CondominiumList : TList<TCondominium>;
  end;

var
  MainModule: TMainModule;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses System.IOUtils;

procedure TMainModule.FDConnection1BeforeConnect(Sender: TObject);
begin
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
  FDConnection1.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'database.sqlite');
  {$ENDIF}
end;

procedure TMainModule.CreateDatabase;
begin
  //
  //FDConnection1.ExecSQL('DROP TABLE IF EXISTS Users;');
  FDConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS Users ('+
    'UserId       INTEGER PRIMARY KEY NOT NULL,'+
    'Username     TEXT UNIQUE NOT NULL,'+
    'Password     TEXT NOT NULL,'+
    'Email        TEXT NOT NULL,'+
    'Telephone    TEXT NULL,'+
    'KeepConnected BOOL,'+
    'CreationDate Datetime'+
    ');');

  //
  //FDConnection1.ExecSQL('DROP TABLE IF EXISTS Condominiums;');
  FDConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS Condominiums ('+
    'CondominiumId   INTEGER PRIMARY KEY NOT NULL,'+
    'UserId       INTEGER NOT NULL,'+
    'Name         TEXT UNIQUE NOT NULL,'+
    'Address      TEXT NOT NULL,'+
    'Email        TEXT NOT NULL,'+
    'Telephone    TEXT NULL,'+
    'Active       BOOL,'+
    'CreationDate Datetime,'+
    'FOREIGN KEY(UserId) REFERENCES Users(UserId)'+
    ');');

  //
  //FDConnection1.ExecSQL('DROP TABLE IF EXISTS Condominiums;');
  FDConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS Units ('+
    'UnitId       INTEGER PRIMARY KEY NOT NULL,'+
    'CondominiumId   INTEGER NOT NULL,'+
    'UserId       INTEGER NOT NULL,'+
    'Name         TEXT UNIQUE NOT NULL,'+
    'Address      TEXT NOT NULL,'+
    'Email        TEXT NOT NULL,'+
    'Telephone    TEXT NULL,'+
    'Active       BOOL,'+
    'CreationDate Datetime,'+
    'FOREIGN KEY(CondominiumId) REFERENCES Condominiums(CondominiumId)'+
    ');');

  //
  //FDConnection1.ExecSQL('DROP TABLE IF EXISTS CondominiumManagers;');
  FDConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS CondominiumManagers ('+
    'CondominiumManagerId   INTEGER PRIMARY KEY NOT NULL,'+
    'CondominiumId          INTEGER NOT NULL,'+
    'Name         TEXT UNIQUE NOT NULL,'+
    'Address      TEXT NOT NULL,'+
    'Email        TEXT NOT NULL,'+
    'Telephone    TEXT NULL,'+
    'Active       BOOL,'+
    'StartDate Datetime,'+
    'EndDate Datetime,'+
    'CreationDate Datetime,'+
    'FOREIGN KEY(CondominiumId) REFERENCES Condominiums(CondominiumId)'+
    ');');
end;


procedure TMainModule.DataModuleCreate(Sender: TObject);
begin
  //
  FDConnection1.Connected := True;
  CreateDatabase;
end;


procedure TMainModule.FDConnection1AfterConnect(Sender: TObject);
begin
  //
end;

function TMainModule.UserRegisteredList : TList<TUser>;
var userRegistered : TUser;
begin
  //
  Result := TList<TUser>.Create;
  FDQuery1.SQL.Text := 'SELECT * FROM Users;';
  FDQuery1.Open;

  if not FDQuery1.IsEmpty then
  begin
    while (not FDQuery1.Eof) do begin
      userRegistered := TUser.Create;
      userRegistered.UserId := FDQuery1.FieldByName('UserId').AsInteger;
      userRegistered.Username := FDQuery1.FieldByName('Username').AsString;
      userRegistered.Password := FDQuery1.FieldByName('Password').AsString;
      userRegistered.Email := FDQuery1.FieldByName('Email').AsString;
      userRegistered.Telephone := FDQuery1.FieldByName('Telephone').AsString;
      userRegistered.KeepConnected := FDQuery1.FieldByName('KeepConnected').AsBoolean;
      userRegistered.CreationDate := FDQuery1.FieldByName('CreationDate').AsDatetime;
      Result.Add(userRegistered);
      FDQuery1.Next;
    end;
  end;
end;

function TMainModule.UserLogin(Username : String; Password : String; KeepConnected : Boolean) : Boolean;
begin
  Result := False;
  try
    FDQuery1.Active := False;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Text := 'SELECT * FROM Users WHERE Username = :Username;'; // AND Password = :Password;';
    FDQuery1.ParamByName('Username').AsString := Username;
    //FDQuery1.ParamByName('Password').AsString := Password;
    FDQuery1.Open;

    if not FDQuery1.IsEmpty and FDQuery1.FieldByName('Password').AsString.Equals(Password) then begin
      // assign user
      var userLogged := TUser.Create;
      userLogged.Username := FDQuery1.FieldByName('Username').AsString;
      userLogged.Password := FDQuery1.FieldByName('Password').AsString;
      userLogged.Email := FDQuery1.FieldByName('Email').AsString;
      userLogged.Telephone := FDQuery1.FieldByName('Telephone').AsString;
      userLogged.KeepConnected := FDQuery1.FieldByName('KeepConnected').AsBoolean;
      UserLogged.CreationDate := Now;
      // Salva usu�rio na sess�o
      Session.UserLogged := userLogged;
      Result := True;
    end;
  except
    on E: Exception do
    begin
    end;
  end;
end;

function TMainModule.EmailVerifyToAccountRecovery(Email : String) : Boolean;
begin
  Result := False;
  try
    FDQuery1.Active := False;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Text := 'SELECT * FROM Users WHERE Email = :Email;'; // AND Password = :Password;';
    FDQuery1.ParamByName('Email').AsString := Email;
    FDQuery1.Open;

    if not FDQuery1.IsEmpty then begin
      // assign user
      var userLogged := TUser.Create;
      userLogged.Username := FDQuery1.FieldByName('Username').AsString;
      userLogged.Password := FDQuery1.FieldByName('Password').AsString;
      userLogged.Email := FDQuery1.FieldByName('Email').AsString;
      userLogged.Telephone := FDQuery1.FieldByName('Telephone').AsString;
      userLogged.KeepConnected := FDQuery1.FieldByName('KeepConnected').AsBoolean;
      UserLogged.CreationDate := Now;

      //QuickSend('smtp.google.com:675', )
      // Salva usu�rio na sess�o
      Session.UserLogged := userLogged;
      Result := True;
    end;
  except
    on E: Exception do begin
    end;
  end;
end;

{
http://portal.tdevrocks.com.br/2017/05/05/tutorial-como-enviar-e-mail-pelo-gmail-com-delphi-10/
}
function TMainModule.SendEmail(ToEmail: String; Title: String; Subject: String; Body: String): Boolean;
begin
  IdSMTP1.Host := 'smtp.google.com';
  IdSMTP1.Port := 587;
  IdSMTP1.UseTLS := utUseImplicitTLS;
  IdSMTP1.AuthType := satDefault;
  IdSMTP1.Username := '';
  IdSMTP1.Password := '';
  IdSMTP1.Connect;
  IdSMTP1.Authenticate;

  idMessage1 := TIdMessage.Create(Self);
  IdMessage1.CharSet := 'utf-8';
  IdMessage1.Encoding := meMIME;
  IdMessage1.From.Name := Title + ' in CondominioApp';
  IdMessage1.From.Address := 'condorate@gmail.com';
  IdMessage1.Priority := mpNormal;
  IdMessage1.Subject := Subject;

  idMessage1.Recipients.Add;
  idMessage1.Recipients.EMailAddresses := ToEmail;

  if IdSMTP1.Connected then begin
    try
      IdSMTP1.Send(idMessage1);

    except on E:Exception do
       begin
         //
       end;
    end;
  end;

end;

function TMainModule.UserSignUp(Username : String; Password : String; Email : String; Telephone : String) : Boolean;
begin
  Result := False;
  try
    FDQuery1.Active := False;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('INSERT INTO Users (Username, Password, Email, Telephone, KeepConnected, CreationDate) ');
    FDQuery1.SQL.Add('VALUES (:Username, :Password, :Email, :Telephone, :KeepConnected, :CreationDate);');
    FDQuery1.ParamByName('Username').AsString := Username;
    FDQuery1.ParamByName('Password').AsString := Password;
    FDQuery1.ParamByName('Email').AsString := Email;
    FDQuery1.ParamByName('Telephone').AsString := Telephone;
    FDQuery1.ParamByName('KeepConnected').AsBoolean := False;
    FDQuery1.ParamByName('CreationDate').AsDateTime := Now;
    FDQuery1.Active := True;
    // result
    Result:= FDQuery1.RowsAffected > 0;
  except
    on E: Exception do
    begin
    end;
  end;
end;



function TMainModule.CondominiumList : TList<TCondominium>;
var condominium : TCondominium;
begin
  //
  Result := TList<TCondominium>.Create;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Text := 'SELECT * FROM Condominiums;';
  FDQuery1.Open;

  if not FDQuery1.IsEmpty then
  begin
    while (not FDQuery1.Eof) do begin
      condominium := TCondominium.Create;
      condominium.UserId := FDQuery1.FieldByName('UserId').AsInteger;
      condominium.Name := FDQuery1.FieldByName('Name').AsString;
      condominium.Address := FDQuery1.FieldByName('Address').AsString;
      condominium.Email := FDQuery1.FieldByName('Email').AsString;
      condominium.Telephone := FDQuery1.FieldByName('Telephone').AsString;
      condominium.Active := FDQuery1.FieldByName('Active').AsBoolean;
      condominium.CreationDate := FDQuery1.FieldByName('CreationDate').AsDatetime;
      Result.Add(condominium);
      FDQuery1.Next;
    end;
  end;
end;

end.
