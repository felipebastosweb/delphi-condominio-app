unit Forms.RateList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Objects,
  FMX.DateTimeCtrls;

type
  TRateListForm = class(TForm)
    Layout1: TLayout;
    Button1: TButton;
    Label13: TLabel;
    Button2: TButton;
    SearchLayout: TLayout;
    ListBox1: TListBox;
    DateRateGroupLayout: TLayout;
    SearchButtonLayout: TLayout;
    Label1: TLabel;
    DateRateLayout: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    SearchRoundRect: TRoundRect;
    Label4: TLabel;
    MetropolisUIListBoxItem1: TMetropolisUIListBoxItem;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RateListForm: TRateListForm;

implementation

{$R *.fmx}

uses Utils.SessionManager;

procedure TRateListForm.FormShow(Sender: TObject);
begin
  // Condo Rate List

end;

end.
