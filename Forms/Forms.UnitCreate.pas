unit Forms.UnitCreate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FelipeBastosWeb.Pages.RestrictForm, FMX.Edit, FMX.ListBox, FMX.Objects,
  FMX.Controls.Presentation, FMX.Header, FMX.Menus,
  FMX.SVGIconImage, FMX.Layouts;

type
  TUnitCreateForm = class(TForm)
    Layout1: TLayout;
    VertScrollBox1: TVertScrollBox;
    Button1: TButton;
    Label9: TLabel;
    Layout2: TLayout;
    Layout3: TLayout;
    Label5: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Layout4: TLayout;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Layout5: TLayout;
    RoundRect1: TRoundRect;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitCreateForm: TUnitCreateForm;

implementation

{$R *.fmx}

end.
