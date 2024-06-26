unit Forms.MaintenanceRequest;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FelipeBastosWeb.Pages.RestrictForm, FMX.Controls.Presentation, FMX.Header,
  FMX.Calendar, FMX.Menus, FMX.Layouts, FMX.ListBox, FMX.Edit, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Objects, FMX.DateTimeCtrls;

type
  TMaintenanceRequestForm = class(TForm)
    Layout1: TLayout;
    VertScrollBox1: TVertScrollBox;
    Layout2: TLayout;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Layout3: TLayout;
    Label3: TLabel;
    Edit1: TEdit;
    Layout4: TLayout;
    Layout5: TLayout;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Layout6: TLayout;
    Label2: TLabel;
    Memo1: TMemo;
    Layout7: TLayout;
    RoundRect1: TRoundRect;
    Label4: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaintenanceRequestForm: TMaintenanceRequestForm;

implementation

{$R *.fmx}

end.
