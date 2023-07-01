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
    BtnSimpan: TButton;
    BtnUbah: TButton;
    BtnHapus: TButton;
    BtnBatal: TButton;
    BtnKeluar: TButton;
    procedure BtnKeluarClick(Sender: TObject);
    procedure OnDblClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnUbahClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnBatalClick(Sender: TObject);
begin
  ADOMahasiswa.SQL.Text := 'select * from master_member order by npm asc';
  ADOMahasiswa.Active:=True;
  TxtNPM.Clear;
  TxtNama.Clear;
  TxtTTL.Clear;
  TxtEmail.Clear;
  TxtAngkatan.Clear;
  TxtId.Clear;
  TxtLine.Clear;
  TxtHobby.Clear;
  BtnUbah.Enabled:=False;
  BtnHapus.Enabled:=False;
end;

procedure TForm1.BtnHapusClick(Sender: TObject);
begin
  if TxtId.Text <> '' then
   begin
    if MessageDlg('Yakin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0) = MrYes then
    begin
    //ShowMessage('proses hapus');
    ADOMahasiswa.SQL.Clear;
    ADOMahasiswa.SQL.Text := 'DELETE FROM master_member WHERE id = ' + TxtId.Text;
    ADOMahasiswa.ExecSQL;
    TxtNPM.Clear;
    TxtNama.Clear;
    TxtTTL.Clear;
    TxtEmail.Clear;
    TxtAngkatan.Clear;
    TxtId.Clear;
    TxtLine.Clear;
  TxtHobby.Clear;
    ADOMahasiswa.Active:=False;
    ADOMahasiswa.SQL.Text := 'select * from master_member order by npm asc';
    ADOMahasiswa.Active:=True;
    BtnUbah.Enabled:=False;
    BtnHapus.Enabled:=False;
    end;

   end
  else
   begin
   ShowMessage('Silahkan pilih data dahulu!');
   end;
end;

procedure TForm1.BtnKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.BtnSimpanClick(Sender: TObject);
begin
  ADOMahasiswa.Append;
  ADOMahasiswa.FieldByName('npm').AsString := TxtNPM.Text;
  ADOMahasiswa.FieldByName('nama').AsString := TxtNama.Text;
  ADOMahasiswa.FieldByName('ttl').AsString := TxtTTL.Text;
  ADOMahasiswa.FieldByName('email').AsString := TxtEmail.Text;
  ADOMahasiswa.FieldByName('angkatan').AsString := TxtAngkatan.Text;
//  ADOMahasiswa.FieldByName('id').AsString := TxtId.Text;
  ADOMahasiswa.FieldByName('idline').AsString := TxtLine.Text;
  ADOMahasiswa.FieldByName('hobi').AsString := TxtHobby.Text;
  ADOMahasiswa.Post;
  TxtNPM.Clear;
  TxtNama.Clear;
  TxtTTL.Clear;
  TxtEmail.Clear;
  TxtAngkatan.Clear;
  TxtId.Clear;
  TxtLine.Clear;
  TxtHobby.Clear;
  ShowMessage('Data Berhasil Ditambah!');
end;

procedure TForm1.BtnUbahClick(Sender: TObject);
begin
  ADOMahasiswa.Edit;
  ADOMahasiswa.FieldByName('npm').AsString := TxtNPM.Text;
  ADOMahasiswa.FieldByName('nama').AsString := TxtNama.Text;
  ADOMahasiswa.FieldByName('ttl').AsString := TxtTTL.Text;
  ADOMahasiswa.FieldByName('email').AsString := TxtEmail.Text;
  ADOMahasiswa.FieldByName('angkatan').AsString := TxtAngkatan.Text;
  ADOMahasiswa.FieldByName('id').AsString := TxtId.Text;
  ADOMahasiswa.FieldByName('idline').AsString := TxtLine.Text;
  ADOMahasiswa.FieldByName('hobi').AsString := TxtHobby.Text;
  ADOMahasiswa.Post;
  TxtNPM.Clear;
  TxtNama.Clear;
  TxtTTL.Clear;
  TxtEmail.Clear;
  TxtAngkatan.Clear;
  TxtId.Clear;
  TxtLine.Clear;
  TxtHobby.Clear;
// logical button
  BtnUbah.Enabled:=False;
  BtnHapus.Enabled:=False;
  TxtNPM.ReadOnly:=False;
  BtnSimpan.Enabled:=True;
  ShowMessage('Data Berhasil Diubah!');
end;

procedure TForm1.OnDblClick(Sender: TObject);
begin
  TxtNPM.Clear;
  TxtNama.Clear;
  TxtTTL.Clear;
  TxtEmail.Clear;
  TxtAngkatan.Clear;
  TxtId.Clear;
  TxtLine.Clear;
  TxtHobby.Clear;
  // ambil data masukkan ke form
  TxtNPM.Text := ADOMahasiswa.FieldByName('npm').AsString;
  TxtNama.Text := ADOMahasiswa.FieldByName('nama').AsString;
  TxtTTL.Text := ADOMahasiswa.FieldByName('ttl').AsString;
  TxtEmail.Text := ADOMahasiswa.FieldByName('email').AsString;
  TxtAngkatan.Text := ADOMahasiswa.FieldByName('angkatan').AsString;
  TxtId.Text := ADOMahasiswa.FieldByName('id').AsString;
  TxtLine.Text := ADOMahasiswa.FieldByName('idline').AsString;
  TxtHobby.Text := ADOMahasiswa.FieldByName('hobi').AsString;
  BtnUbah.Enabled:=True;
  BtnHapus.Enabled:=True;
  TxtNPM.ReadOnly:=True;
  BtnSimpan.Enabled:=False;
end;

end.
