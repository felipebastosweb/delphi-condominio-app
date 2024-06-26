unit Forms.MaintenanceList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.Controls.Presentation, FMX.StdCtrls, FMX.DateTimeCtrls;

type
  TMaintenanceListForm = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Layout3: TLayout;
    ListBox1: TListBox;
    Layout4: TLayout;
    Layout5: TLayout;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaintenanceListForm: TMaintenanceListForm;

implementation

{$R *.fmx}

end.
