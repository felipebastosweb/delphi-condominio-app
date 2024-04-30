unit Forms.AddPhoneForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Layouts;

type
  TAddPhoneForm = class(TForm)
    Label1: TLabel;
    Layout1: TLayout;
    Layout3: TLayout;
    Layout2: TLayout;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Layout4: TLayout;
    Label3: TLabel;
    Edit1: TEdit;
    Layout5: TLayout;
    RoundRect1: TRoundRect;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddPhoneForm: TAddPhoneForm;

implementation

{$R *.fmx}

end.
