unit Forms.UnitList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FelipeBastosWeb.Pages.RestrictForm, FMX.TabControl, FMX.Controls.Presentation,
  FMX.Header, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.Objects;

type
  TUnitListForm = class(TForm)
    Layout1: TLayout;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Layout2: TLayout;
    ListBox1: TListBox;
    Label2: TLabel;
    Edit1: TEdit;
    SearchRoundRect1: TRoundRect;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitListForm: TUnitListForm;

implementation

{$R *.fmx}

end.
