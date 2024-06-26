unit Forms.MeetingSchedule;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FelipeBastosWeb.Pages.RestrictForm, FMX.Objects,
  FMX.Controls.Presentation, FMX.Header, FMX.Menus, FMX.Layouts;

type
  TScheduleMeetingForm = class(TForm)
    Layout1: TLayout;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScheduleMeetingForm: TScheduleMeetingForm;

implementation

{$R *.fmx}

end.
