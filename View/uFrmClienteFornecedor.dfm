object frmClienteFornecedor: TfrmClienteFornecedor
  Left = 0
  Top = 0
  Caption = 'Cliente - Fornecedor'
  ClientHeight = 449
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 89
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    object edtNome: TEdit
      Left = 8
      Top = 16
      Width = 217
      Height = 21
      TabOrder = 0
      Text = 'Nome'
    end
    object edtNomeComercial: TEdit
      Left = 8
      Top = 43
      Width = 217
      Height = 21
      TabOrder = 1
      Text = 'Nome Comercial'
    end
    object edtCnpjCpf: TEdit
      Left = 231
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'CNPJ/CPF'
    end
    object edtInscricaoRg: TEdit
      Left = 358
      Top = 16
      Width = 123
      Height = 21
      TabOrder = 3
      Text = 'Inscri'#231#227'o Estadual/RG'
    end
    object edtCodMunicipal: TEdit
      Left = 231
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'C'#243'digo Municipal'
    end
    object edtSuframa: TEdit
      Left = 358
      Top = 43
      Width = 123
      Height = 21
      TabOrder = 5
      Text = 'Suframa'
    end
  end
  object pnlEndereco: TPanel
    Left = 0
    Top = 89
    Width = 491
    Height = 112
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 1
    object edtEndereco: TEdit
      Left = 136
      Top = 16
      Width = 345
      Height = 21
      TabOrder = 0
      Text = 'Endere'#231'o'
    end
    object edtNumero: TEdit
      Left = 8
      Top = 43
      Width = 98
      Height = 21
      TabOrder = 1
      Text = 'N'#250'mero'
    end
    object edtComplemento: TEdit
      Left = 8
      Top = 70
      Width = 369
      Height = 21
      TabOrder = 2
      Text = 'Complemento'
    end
    object edtBairro: TEdit
      Left = 112
      Top = 43
      Width = 193
      Height = 21
      TabOrder = 3
      Text = 'Bairro'
    end
    object edtCep: TEdit
      Left = 40
      Top = 16
      Width = 90
      Height = 21
      TabOrder = 4
      Text = 'CEP'
      OnEnter = edtCepEnter
    end
    object edtCidade: TEdit
      Left = 311
      Top = 43
      Width = 170
      Height = 21
      TabOrder = 5
      Text = 'Cidade'
    end
    object cbbEstado: TComboBox
      Left = 383
      Top = 70
      Width = 98
      Height = 21
      TabOrder = 6
      Text = 'Estado'
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object btnPesqCep: TButton
      Left = 8
      Top = 16
      Width = 26
      Height = 21
      Caption = '...'
      TabOrder = 7
    end
  end
  object pnlContato: TPanel
    Left = 0
    Top = 201
    Width = 491
    Height = 56
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 2
    object edtEmail: TEdit
      Left = 8
      Top = 16
      Width = 306
      Height = 21
      TabOrder = 0
      Text = 'Email'
    end
    object edtTelefone: TEdit
      Left = 320
      Top = 16
      Width = 161
      Height = 21
      TabOrder = 1
      Text = 'Telefone'
    end
  end
  object pnlObservacao: TPanel
    Left = 0
    Top = 257
    Width = 491
    Height = 138
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 3
    object lblObservacao: TLabel
      Left = 10
      Top = 6
      Width = 62
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object mmoObservacao: TMemo
      Left = 10
      Top = 25
      Width = 473
      Height = 96
      Lines.Strings = (
        'mmoObservacao')
      TabOrder = 0
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 395
    Width = 491
    Height = 54
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 4
    object btnSalvar: TButton
      Left = 325
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
    end
    object btnAlterar: TButton
      Left = 406
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
    end
    object ccbClienteFornecedor: TCheckBox
      Left = 10
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Cliente / Fornecedor'
      TabOrder = 2
    end
    object ccbInativo: TCheckBox
      Left = 128
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Inativo'
      TabOrder = 3
    end
    object btnPesquisa: TButton
      Left = 200
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Pesquisa'
      TabOrder = 4
      OnClick = btnPesquisaClick
    end
  end
end
