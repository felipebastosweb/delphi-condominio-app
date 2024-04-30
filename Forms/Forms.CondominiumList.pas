unit Forms.CondominiumList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Generics.Collections,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FelipeBastosWeb.Pages.RestrictForm, FMX.Objects,
  FMX.Controls.Presentation, FMX.Header, FMX.Menus,  FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Edit, Models.Condominium;

type
  TCondominiumListForm = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    ListView1: TListView;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    SearchRoundRect1: TRoundRect;
    Label4: TLabel;
    Edit2: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure SearchRoundRect1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CondominiumList : TList<TCondominium>;
  end;

var
  CondominiumListForm: TCondominiumListForm;

implementation

{$R *.fmx}

uses Forms.CondominiumCreate, DataModule.MainModule;

procedure TCondominiumListForm.Button2Click(Sender: TObject);
begin
  CondominiumCreateForm.Show;
end;

procedure TCondominiumListForm.SearchRoundRect1Click(Sender: TObject);
begin
  //
  CondominiumList := MainModule.CondominiumList();
end;

end.
