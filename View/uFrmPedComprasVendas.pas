unit uFrmPedComprasVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TPedComprasVendas = class(TForm)
    pnlDadosCliFor: TPanel;
    pnlTotais: TPanel;
    pnlItens: TPanel;
    pnlCondicoes: TPanel;
    edtCliFor: TEdit;
    btnPesqCliFor: TButton;
    cbbContato: TComboBox;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    pnlInfoCredito: TPanel;
    edtCredito: TEdit;
    EdtValidade: TEdit;
    edtCreditoDisponivel: TEdit;
    lblCreditoAprovado: TLabel;
    lblCreditoUtilizado: TLabel;
    lblCreditoDisponivel: TLabel;
    edtProduto: TEdit;
    btnAdicaoProduto: TButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PedComprasVendas: TPedComprasVendas;

implementation

{$R *.dfm}

end.
