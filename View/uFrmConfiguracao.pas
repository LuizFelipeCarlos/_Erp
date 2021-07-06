unit uFrmConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uFrmClienteFornecedor;

type
  TFrmConfiguracao = class(TForm)
    pnlBotoes: TPanel;
    btnClienteFornecedor: TButton;
    Button2: TButton;
    procedure btnClienteFornecedorClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FrmConfiguracao: TFrmConfiguracao;

implementation

{$R *.dfm}

procedure TFrmConfiguracao.btnClienteFornecedorClick(Sender: TObject);
var
  telaCliFor: TfrmClienteFornecedor;

begin
  telaCliFor:= TfrmClienteFornecedor.Create(nil);
  telaCliFor.ShowModal;
  telaCliFor.Free;
end;


end.
