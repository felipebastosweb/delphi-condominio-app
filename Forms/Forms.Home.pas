unit Forms.Home;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Menus, FMX.Controls.Presentation,
  FMX.Header, FMX.ListBox, FMX.Layouts, FelipeBastosWeb.Pages.RestrictForm,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView,
  Forms.CondominiumList, Forms.UnitList,
  FMX.TabControl, FMX.Objects, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  THomeForm = class(TForm)
    FDQuery1: TFDQuery;
    Layout1: TLayout;
    Label13: TLabel;
    VertScrollBox1: TVertScrollBox;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    VertScrollBox2: TVertScrollBox;
    ReservationAreasLayout: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle1: TRectangle;
    Image2: TImage;
    MaintenanceListLayout: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Rectangle6: TRectangle;
    Image6: TImage;
    Layout4: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Rectangle5: TRectangle;
    Image3: TImage;
    Layout5: TLayout;
    Label7: TLabel;
    Label8: TLabel;
    Rectangle4: TRectangle;
    Image4: TImage;
    Layout6: TLayout;
    Label10: TLabel;
    Label9: TLabel;
    Rectangle3: TRectangle;
    Image5: TImage;
    RateListLayout: TLayout;
    Label11: TLabel;
    Label12: TLabel;
    Rectangle2: TRectangle;
    Image1: TImage;
    TabItem2: TTabItem;
    VertScrollBox3: TVertScrollBox;
    Panel1: TPanel;
    Circle1: TCircle;
    Image7: TImage;
    StoresOfUserComboBox: TComboBox;
    PersonNameLabel: TLabel;
    UserLoggedUsernameLabel: TLabel;
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ReservationAreasLayoutClick(Sender: TObject);
    procedure MaintenanceListLayoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HomeForm: THomeForm;

implementation

{$R *.fmx}

uses Forms.CommonAreaList, Forms.MaintenanceRequest,
  Forms.MaintenanceList, Forms.MaintenanceSupport;

procedure THomeForm.ReservationAreasLayoutClick(Sender: TObject);
begin
  CommonAreaListForm.Show;
end;

procedure THomeForm.MaintenanceListLayoutClick(Sender: TObject);
begin
  MaintenanceListForm.Show;
end;

procedure THomeForm.ListBoxItem1Click(Sender: TObject);
begin
  inherited;
  CondominiumListForm.Show;
end;

procedure THomeForm.ListBoxItem2Click(Sender: TObject);
begin
  inherited;
  UnitListForm.Show;
end;

end.
