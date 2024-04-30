unit Forms.CommonAreaShow;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TCommonAreaShowForm = class(TForm)
    Layout1: TLayout;
    Label2: TLabel;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    ListBox1: TListBox;
    Layout5: TLayout;
    Label1: TLabel;
    Layout6: TLayout;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CommonAreaShowForm: TCommonAreaShowForm;

implementation

{$R *.fmx}

end.
