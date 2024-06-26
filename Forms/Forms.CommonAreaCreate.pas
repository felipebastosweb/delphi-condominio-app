unit Forms.CommonAreaCreate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.SVGIconImage,
  FMX.Layouts, FMX.Memo.Types, FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo,
  FMX.Edit, FMX.ListBox;

type
  TCommomAreaCreateForm = class(TForm)
    Layout1: TLayout;
    SVGIconImage1: TSVGIconImage;
    Label9: TLabel;
    VertScrollBox1: TVertScrollBox;
    Layout2: TLayout;
    Layout3: TLayout;
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
    Label3: TLabel;
    ComboBox1: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CommomAreaCreateForm: TCommomAreaCreateForm;

implementation

{$R *.fmx}

end.
