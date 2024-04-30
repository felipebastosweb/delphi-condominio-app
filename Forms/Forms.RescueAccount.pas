unit Forms.RescueAccount;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Edit, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TRescueAccountForm = class(TForm)
    Label1: TLabel;
    Layout1: TLayout;
    Label2: TLabel;
    EmailEdit: TEdit;
    RoundRect1: TRoundRect;
    Label4: TLabel;
    procedure RoundRect1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RescueAccountForm: TRescueAccountForm;

implementation

{$R *.fmx}

uses DataModule.MainModule;

procedure TRescueAccountForm.RoundRect1Click(Sender: TObject);
begin
  //
  var exists := MainModule.EmailVerifyToAccountRecovery(EmailEdit.Text);
  if exists then begin
    MainModule.SendEmail(EmailEdit.Text, 'Recovery Account', 'Recovery code to CondominioApp account', '');
    ShowMessage('Check your email inbox for your account recovery code.');
  end;
end;

end.
