unit Forms.CommonAreaList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Edit, FMX.ListBox, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TCommonAreaListForm = class(TForm)
    Layout1: TLayout;
    Label2: TLabel;
    Button1: TButton;
    Layout2: TLayout;
    ListBox1: TListBox;
    Label1: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Edit1: TEdit;
    Layout5: TLayout;
    Button2: TButton;
    MetropolisUIListBoxItem1: TMetropolisUIListBoxItem;
    procedure MetropolisUIListBoxItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CommonAreaListForm: TCommonAreaListForm;

implementation

{$R *.fmx}

uses Forms.CommonAreaShow;

procedure TCommonAreaListForm.MetropolisUIListBoxItem1Click(Sender: TObject);
begin
  CommonAreaShowForm.Show;
end;

end.
