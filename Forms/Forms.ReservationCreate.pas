unit Forms.ReservationCreate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.DateTimeCtrls, FMX.Calendar, FMX.ListBox, FMX.Controls.Presentation,
  FMX.StdCtrls;

type
  TReservationCreateForm = class(TForm)
    Layout1: TLayout;
    VertScrollBox1: TVertScrollBox;
    Button2: TButton;
    Label1: TLabel;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Calendar1: TCalendar;
    Label7: TLabel;
    TimeEdit3: TTimeEdit;
    TimeEdit4: TTimeEdit;
    Layout5: TLayout;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReservationCreateForm: TReservationCreateForm;

implementation

{$R *.fmx}

end.
