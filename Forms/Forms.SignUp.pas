unit Forms.SignUp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Layouts, DataModule.MainModule,
  FMX.Objects;

type
  TSignUpForm = class(TForm)
    FDQuery1: TFDQuery;
    VertScrollBox1: TVertScrollBox;
    Label1: TLabel;
    Layout1: TLayout;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    UsernameEdit: TEdit;
    Label3: TLabel;
    PasswordEdit: TEdit;
    Label4: TLabel;
    RepeatPasswordEdit: TEdit;
    Label5: TLabel;
    EmailEdit: TEdit;
    Label6: TLabel;
    TelephoneEdit: TEdit;
    ConfirmRoundRect1: TRoundRect;
    Label7: TLabel;
    procedure CheckBox1Change(Sender: TObject);
    procedure ConfirmRoundRect1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UsernameIsValid, PasswordIsValid, RepeatPasswordIsValid,
    EmailIsValid, TelephoneIsValid, AcceptTermsIsValid : Boolean;
  end;

var
  SignUpForm: TSignUpForm;

implementation

{$R *.fmx}

uses Forms.Home;

procedure TSignUpForm.CheckBox1Change(Sender: TObject);
begin

  ConfirmRoundRect1.Enabled := CheckBox1.IsChecked;
end;

procedure TSignUpForm.ConfirmRoundRect1Click(Sender: TObject);
begin
    //
    // TODO: valida��o de demais campos
  //UsernameIsValid and PasswordIsValid and RepeatPasswordIsValid and
  //  EmailIsValid and TelephoneIsValid and

    // Salva usu�rio no banco de dados
    // Save user to database
    var success : Boolean := MainModule.UserSignUp(UsernameEdit.Text, PasswordEdit.Text, EmailEdit.Text, TelephoneEdit.Text);

    if not success then begin
      // show error message
      ShowMessage('Register of user failed!');
    end else begin
      ShowMessage('User registration successful! Please login.');
      // fecha a janela para retornar para a p�gina principal
        // - ela se incubir� de mostrar os usu�rios cadastrados para login autom�tico
      // close the window to return to the main page
         // - it will be responsible for showing registered users for automatic login
      self.Close;
    end;
end;

end.
