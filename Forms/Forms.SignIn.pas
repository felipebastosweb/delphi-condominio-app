unit Forms.SignIn;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Layouts, FMX.Objects;

type
  TSignInForm = class(TForm)
    Label1: TLabel;
    FDQuery1: TFDQuery;
    Layout1: TLayout;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    RoundRect1: TRoundRect;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RoundRect1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SignInForm: TSignInForm;

implementation

{$R *.fmx}

uses Forms.Home;

procedure TSignInForm.Button1Click(Sender: TObject);
begin
    //
end;

procedure TSignInForm.RoundRect1Click(Sender: TObject);
begin
    HomeForm.Show;
end;

end.
