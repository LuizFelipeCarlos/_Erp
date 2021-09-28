program Erp;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {Form1},
  uFrmClienteFornecedor in 'View\uFrmClienteFornecedor.pas' {frmClienteFornecedor},
  uFrmConfiguracao in 'View\uFrmConfiguracao.pas' {FrmConfiguracao},
  uFrmPesquisa in 'View\uFrmPesquisa.pas' {FrmPesquisa},
  uDtmConexao in 'DA\uDtmConexao.pas' {DtmConexao: TDataModule},
  uQuery in 'DA\uQuery.pas' {TDtmQuery: TDataModule},
  uValidacoes in 'Model\uValidacoes.pas';

{$R *.res}

begin
  Application.Initialize;
  //ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmClienteFornecedor, frmClienteFornecedor);
  Application.CreateForm(TFrmConfiguracao, FrmConfiguracao);
  Application.CreateForm(TFrmPesquisa, FrmPesquisa);
  Application.CreateForm(TDtmConexao, DtmConexao);
  Application.CreateForm(TTDtmQuery, TDtmQuery);
  Application.Run;
end.
