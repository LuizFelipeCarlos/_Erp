unit uFrmClienteFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFrmPesquisa
  , Datasnap.DBClient;

type
  TfrmClienteFornecedor = class(TForm)
    pnlDados: TPanel;
    edtNome: TEdit;
    edtNomeComercial: TEdit;
    edtCnpjCpf: TEdit;
    edtInscricaoRg: TEdit;
    edtCodMunicipal: TEdit;
    edtSuframa: TEdit;
    pnlEndereco: TPanel;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtCep: TEdit;
    edtCidade: TEdit;
    cbbEstado: TComboBox;
    pnlContato: TPanel;
    edtEmail: TEdit;
    edtTelefone: TEdit;
    pnlObservacao: TPanel;
    lblObservacao: TLabel;
    mmoObservacao: TMemo;
    pnlBotoes: TPanel;
    btnSalvar: TButton;
    btnAlterar: TButton;
    ccbClienteFornecedor: TCheckBox;
    ccbInativo: TCheckBox;
    btnPesquisa: TButton;
    btnPesqCep: TButton;
    procedure btnPesquisaClick(Sender: TObject);
    procedure edtCepEnter(Sender: TObject);
  private
    FPesquisa: TFrmPesquisa;
    { Private declarations }
    property Pesquisa: TFrmPesquisa read FPesquisa write FPesquisa;
    procedure PopulaCampos;
  public
    { Public declarations }

  end;

var
  frmClienteFornecedor: TfrmClienteFornecedor;

implementation

{$R *.dfm}

{ TfrmClienteFornecedor }


{ TfrmClienteFornecedor }
procedure TfrmClienteFornecedor.btnPesquisaClick(Sender: TObject);
begin
  Pesquisa:= TFrmPesquisa.Create(nil);
  Pesquisa.CarregaCliente;
  pesquisa.AbreTela;
  PopulaCampos;
  Pesquisa.FechaTela;
end;


procedure TfrmClienteFornecedor.edtCepEnter(Sender: TObject);
begin
  ShowMessage('Deu Enter');
end;

procedure TfrmClienteFornecedor.PopulaCampos;
begin
  edtNome.Text:= Pesquisa.cds.FieldByName('Nome').AsString;
end;

end.
