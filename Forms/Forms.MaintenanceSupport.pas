unit Forms.MaintenanceSupport;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.Objects, FMX.ScrollBox, FMX.Memo, FMX.DateTimeCtrls, FMX.Edit,
  FMX.ListBox, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TMaintenanceSupportForm = class(TForm)
    Layout1: TLayout;
    VertScrollBox1: TVertScrollBox;
    Layout2: TLayout;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Layout3: TLayout;
    Label3: TLabel;
    Edit1: TEdit;
    Layout4: TLayout;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Layout5: TLayout;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Layout6: TLayout;
    Label2: TLabel;
    Memo1: TMemo;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    RoundRect1: TRoundRect;
    Label4: TLabel;
    Label7: TLabel;
    Memo2: TMemo;
    Label8: TLabel;
    ComboBox3: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaintenanceSupportForm: TMaintenanceSupportForm;

implementation

{$R *.fmx}

end.
