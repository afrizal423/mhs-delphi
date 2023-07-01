unit UnitDataMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    ADOMahasiswaCon: TADOConnection;
    ADOMahasiswa: TADOQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TxtNPM: TEdit;
    TxtNama: TEdit;
    TxtTTL: TEdit;
    TxtEmail: TEdit;
    TxtAngkatan: TEdit;
    TxtLine: TEdit;
    TxtHobby: TEdit;
    TxtId: TEdit;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BtnKeluar: TButton;
    procedure BtnKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
