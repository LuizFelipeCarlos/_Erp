unit uQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  uDtmConexao;

type
  TTDtmQuery = class(TDataModule)
    TQuery: TIBQuery;
  private
    FConBDados: TDtmConexao;
    { Private declarations }
    property ConBDados: TDtmConexao read FConBDados write FConBDados;
    procedure AbreTransacao;

  public
    { Public declarations }
    constructor Create;
    procedure Configura;
    procedure Consulta(Query: String);
    destructor Destroy;
  end;

var
  TDtmQuery: TTDtmQuery;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TTDtmQuery }
{ TTDtmQuery }

constructor TTDtmQuery.Create;
begin
  Configura;
end;

procedure TTDtmQuery.AbreTransacao;
begin
  ConBDados.AbreConexao;
end;

procedure TTDtmQuery.Configura;
begin
  TQuery:= TIBQuery.Create(nil);  // TIBQuery.Create(nil); /// teste property e componente
  conBDados:= TDtmConexao.Create;

  with TQuery do
  begin
    Database:= conBDados.TDtbConexao;
    Transaction:= conBDados.TTrasacao;
  end;
end;

procedure TTDtmQuery.Consulta(Query: String);
begin
  //AbreTransacao;
  with TQuery do
  begin
    Close;
    SQL.add(Query);
    Open;
  end;
end;

destructor TTDtmQuery.Destroy;
begin
  ConBDados.Destroy;
  ConBDados.Free;
  TQuery.Free;
end;

end.
