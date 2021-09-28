unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, uFrmConfiguracao;

type
  TForm1 = class(TForm)
    pnlMenu: TPanel;
    imgMenu: TImage;
    imgVendas: TImage;
    pnlVendas: TPanel;
    lblMenuVenda: TLabel;
    pnlExpedicao: TPanel;
    imgExpedicao: TImage;
    lblExpedicao: TLabel;
    pnlEstoque: TPanel;
    pnlFinanceiro: TPanel;
    lblEstoque: TLabel;
    lblFinanceiro: TLabel;
    imgFinanceiro: TImage;
    imgEstoque: TImage;
    pnlConfig: TPanel;
    imgConfig: TImage;
    lblConfig: TLabel;
    procedure imgMenuClick(Sender: TObject);
    procedure imgConfigClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.imgConfigClick(Sender: TObject);
var
  CriaTela: TFrmConfiguracao;
begin
  CriaTela:= TFrmConfiguracao.Create(nil);
  CriaTela.ShowModal;
  CriaTela.Free;
end;

procedure TForm1.imgMenuClick(Sender: TObject);
begin
  if imgMenu.Left = 0 then
    begin
      pnlMenu.Visible:= true;
      imgMenu.Left:= 561;
    end
  else
    begin
      pnlMenu.Visible:= false;
      imgMenu.Left:= 0;
    end;
end;

end.
