object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Master Member ILC'
  ClientHeight = 562
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 8
    Width = 217
    Height = 26
    Caption = 'Data Master Member ILC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 328
    Width = 562
    Height = 225
    Caption = 'Data Member ILC'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 556
      Height = 206
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = OnDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'email'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'npm'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idline'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'angkatan'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ttl'
          Title.Caption = 'TTL'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hobi'
          Title.Caption = 'Hobi'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'waktu'
          Title.Caption = 'Waktu Join'
          Width = 125
          Visible = True
        end>
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = -232
      Width = 185
      Height = 105
      Caption = 'GroupBox2'
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 40
    Width = 559
    Height = 217
    Caption = 'Form Data member'
    TabOrder = 1
    object Label2: TLabel
      Left = 11
      Top = 21
      Width = 95
      Height = 13
      Caption = 'NPM Mahasiswa :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 90
      Width = 103
      Height = 13
      Caption = 'Nama Mahasiswa :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 162
      Width = 129
      Height = 13
      Caption = 'Tempat Tanggal Lahir :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 314
      Top = 69
      Width = 61
      Height = 13
      Caption = 'Angkatan :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 314
      Top = 21
      Width = 36
      Height = 13
      Caption = 'Email :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 314
      Top = 117
      Width = 45
      Height = 13
      Caption = 'ID Line :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 314
      Top = 165
      Width = 42
      Height = 13
      Caption = 'Hobby :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TxtNPM: TEdit
      Left = 11
      Top = 40
      Width = 262
      Height = 21
      TabOrder = 0
    end
    object TxtNama: TEdit
      Left = 11
      Top = 114
      Width = 262
      Height = 21
      TabOrder = 1
    end
    object TxtTTL: TEdit
      Left = 11
      Top = 181
      Width = 262
      Height = 21
      TabOrder = 2
    end
    object TxtEmail: TEdit
      Left = 314
      Top = 40
      Width = 239
      Height = 21
      TabOrder = 3
    end
    object TxtAngkatan: TEdit
      Left = 314
      Top = 90
      Width = 103
      Height = 21
      TabOrder = 4
    end
    object TxtLine: TEdit
      Left = 314
      Top = 138
      Width = 239
      Height = 21
      TabOrder = 5
    end
    object TxtHobby: TEdit
      Left = 314
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object TxtId: TEdit
      Left = 491
      Top = 90
      Width = 62
      Height = 21
      TabOrder = 7
      Text = 'TxtId'
      Visible = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 263
    Width = 559
    Height = 59
    Caption = 'Aksi'
    TabOrder = 2
    object BtnSimpan: TButton
      Left = 11
      Top = 15
      Width = 75
      Height = 35
      Caption = 'Tambah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnSimpanClick
    end
    object BtnUbah: TButton
      Left = 134
      Top = 15
      Width = 75
      Height = 35
      Caption = 'Ubah'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnUbahClick
    end
    object BtnHapus: TButton
      Left = 248
      Top = 15
      Width = 75
      Height = 35
      Caption = 'Hapus'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnHapusClick
    end
    object BtnBatal: TButton
      Left = 368
      Top = 15
      Width = 75
      Height = 35
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnBatalClick
    end
    object BtnKeluar: TButton
      Left = 481
      Top = 15
      Width = 75
      Height = 35
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clScrollBar
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnKeluarClick
    end
  end
  object ADOMahasiswaCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ilc-3' +
      '2-64;Option=2;'
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object ADOMahasiswa: TADOQuery
    Active = True
    Connection = ADOMahasiswaCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from master_member order by npm asc')
    Left = 544
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOMahasiswa
    Left = 472
    Top = 8
  end
end
