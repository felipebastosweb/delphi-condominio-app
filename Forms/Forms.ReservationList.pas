unit Forms.ReservationList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FelipeBastosWeb.Pages.RestrictForm, FMX.Controls.Presentation, FMX.Header,
  FMX.ListBox, FMX.Menus, FMX.Layouts, FMX.TabControl, FMX.Calendar,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Edit, FMX.DateTimeCtrls,
  FMX.Objects, FMX.SVGIconImage;

type
  TReservationListForm = class(TForm)
    Layout1: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Panel1: TPanel;
    ListBox1: TListBox;
    TabItem2: TTabItem;
    VertScrollBox1: TVertScrollBox;
    TabControl2: TTabControl;
    TabItem5: TTabItem;
    TabItem3: TTabItem;
    SVGIconImage1: TSVGIconImage;
    Label9: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    TimeEdit1: TTimeEdit;
    TimeEdit2: TTimeEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReservationListForm: TReservationListForm;

implementation

{$R *.fmx}

end.
