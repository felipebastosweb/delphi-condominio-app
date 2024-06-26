unit Forms.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Generics.Collections,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.ListBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Forms.SignIn, Forms.SignUp, DataModule.MainModule,
   Models.UserModel;

type
  TMainForm = class(TForm)
    Image1: TImage;
    UsersRegisteredLayout: TLayout;
    Label1: TLabel;
    UsersRegisteredListBox: TListBox;
    ButtonsLayout: TLayout;
    Label3: TLabel;
    Label2: TLabel;
    RoundRect1: TRoundRect;
    Label4: TLabel;
    RoundRect2: TRoundRect;
    Label5: TLabel;
    RoundRect3: TRoundRect;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RoundRect1Click(Sender: TObject);
    procedure RoundRect2Click(Sender: TObject);
    procedure RoundRect3Click(Sender: TObject);
    procedure UsersRegisteredListBoxItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  UserRegisteredList : TList<TUser>;

implementation

{$R *.fmx}

uses Utils.SessionManager, Forms.RescueAccount, Forms.Home;

procedure TMainForm.FormShow(Sender: TObject);
begin
  // update user listbox
  UserRegisteredList := MainModule.UserRegisteredList;
  UsersRegisteredListBox.BeginUpdate;
  UsersRegisteredListBox.Items.Clear;
  for var i := 0 to UserRegisteredList.Count - 1 do begin
    UsersRegisteredListBox.Items.Add(UserRegisteredList[i].Username);
  end;
  UsersRegisteredListBox.EndUpdate;
end;

procedure TMainForm.RoundRect1Click(Sender: TObject);
begin
    SignInForm.Show;
end;

procedure TMainForm.RoundRect2Click(Sender: TObject);
begin
    SignUpForm.Show;
end;

procedure TMainForm.RoundRect3Click(Sender: TObject);
begin
  RescueAccountForm.Show;
end;

procedure TMainForm.UsersRegisteredListBoxItemClick(
  const Sender: TCustomListBox; const Item: TListBoxItem);
  var   Index :  Integer;
begin
  //
  if UserRegisteredList.Count > 0 then begin
    for Index := 0 to UserRegisteredList.Count -1 do begin
      if UserRegisteredList.Items[Index].Username = Item.Text then begin
        //HomeForm.UserLogged := UserRegisteredList.Items[Index];
        Session.UserLogged := UserRegisteredList.Items[Index];
        break;
      end;
    end;
    // Go to HomeForm
    HomeForm.Show;
  end;
end;

end.
