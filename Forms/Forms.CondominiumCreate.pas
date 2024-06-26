unit Forms.CondominiumCreate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FelipeBastosWeb.Pages.RestrictForm, FMX.Objects,
  FMX.Controls.Presentation, FMX.Header, FMX.Edit, FMX.TabControl, FMX.ListBox,
  FMX.Menus, FMX.Layouts, FMX.SVGIconImage;

type
  TCondominiumCreateForm = class(TForm)
    Layout1: TLayout;
    SVGIconImage1: TSVGIconImage;
    Label1: TLabel;
    SVGIconImage2: TSVGIconImage;
    Button1: TButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Label13: TLabel;
    ComboBox3: TComboBox;
    TabItem2: TTabItem;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Layout2: TLayout;
    Label7: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CondominiumCreateForm: TCondominiumCreateForm;

implementation

{$R *.fmx}

end.
