unit Utils.SessionManager;

interface
uses System.SysUtils, System.Classes, Models.UserModel;

type
TSessionManager = class
  private
    FUserLogged: TUser;
  public
    constructor Create;
    destructor Destroy; override;
    property UserLogged: TUser read FUserLogged write FUserLogged;
  end;

var
  Session: TSessionManager;

implementation

constructor TSessionManager.Create;
begin
  FUserLogged := nil; // Inicializa o usu�rio logado como nulo
end;

destructor TSessionManager.Destroy;
begin
  if Assigned(FUserLogged) then
    FreeAndNil(FUserLogged);
  inherited;
end;


initialization
  Session := TSessionManager.Create;

finalization
  FreeAndNil(Session);

end.
