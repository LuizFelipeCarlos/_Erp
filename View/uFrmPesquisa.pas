unit uFrmPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Datasnap.DBClient, uQuery, Vcl.Grids,
  Vcl.DBGrids, uValidacoes;

type
  TFrmPesquisa = class(TForm)
    pnlBuscaProd: TPanel;
    edtBusca: TEdit;
    imgBuscaProd: TImage;
    pnlListaBusca: TPanel;
    cds: TClientDataSet;
    dts: TDataSource;
    cdsID: TIntegerField;
    cdsUsuario: TStringField;
    cdsNome: TStringField;
    GrdPesquisa: TDBGrid;
    pnlBotaoFiltro: TPanel;
    lblBtnFiltrar: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure imgBuscaProdClick(Sender: TObject);
    procedure GrdPesquisaDblClick(Sender: TObject);


  private
    Ffiltro: string;
    FQueri: TTDtmQuery;
    { Private declarations }
    property filtro: string read Ffiltro write Ffiltro;
    property Queri: TTDtmQuery read FQueri write FQueri;

    procedure InstanciaQueri;
    procedure FiltraBusca(Filtro: string);
    procedure LimpaFiltro;

  public
    { Public declarations }
    constructor CreateCliente;
    procedure AbreTela;
    procedure FechaTela;
    procedure CarregaCliente;
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

{$R *.dfm}


procedure TFrmPesquisa.FormCreate(Sender: TObject);
//var
  //quer: TTDtmQuery;
begin
  InstanciaQueri;
  //CarregaCliente;
end;



procedure TFrmPesquisa.GrdPesquisaDblClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesquisa.AbreTela;
begin
  ShowModal;
end;

procedure TFrmPesquisa.CarregaCliente;
begin
  InstanciaQueri;
  Queri.Consulta('select * from usuario where id in (1,2,3)');
  Queri.TQuery.First;
  while not (Queri.TQuery.Eof) do
    begin
      cds.Append;
      cds.FieldByName('Id').AsString:= UpperCase(Queri.TQuery.FieldByName('Id').AsString);
      cds.FieldByName('Usuario').AsString:= UpperCase(Queri.TQuery.FieldByName('Usuario').AsString);
      cds.FieldByName('Nome').AsString:= UpperCase(Queri.TQuery.FieldByName('Nome').AsString);
      cds.Post;
      Queri.TQuery.Next;
    end;
end;

constructor TFrmPesquisa.CreateCliente;
begin
  inherited;
  //FormCreate(Nil);
  InstanciaQueri;
  CarregaCliente;
end;

procedure TFrmPesquisa.imgBuscaProdClick(Sender: TObject);
var
  CampoVazio: TCampoVazio;
begin
  CampoVazio := TCampoVazio.Create;
  try
    if CampoVazio.VerificaCampoVazio(edtBusca.Text) then begin
      //ShowMessage('Campo n?o esta vazio');
      FiltraBusca(edtBusca.Text);
    end else begin
      LimpaFiltro;
      ShowMessage('Campo esta vazio');
    end;

  finally
    //CampoVazio.Free;
  end;

end;

procedure TFrmPesquisa.InstanciaQueri;
begin
  Queri:= TTDtmQuery.Create;
  //cds:= TClientDataSet.Create(nil);
end;

procedure TFrmPesquisa.FechaTela;
begin
  FreeAndNil(Self);
end;

procedure TFrmPesquisa.FiltraBusca(Filtro: string);
begin
  cds.Filter:= ('Nome like '+QuotedStr('%'+UpperCase(Filtro)+'%'));
  cds.Filtered:= true;
  //cds.
end;

procedure TFrmPesquisa.LimpaFiltro;
begin
  cds.Filtered:= False;
end;

end.
