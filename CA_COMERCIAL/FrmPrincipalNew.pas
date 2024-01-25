unit FrmPrincipalNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXCtrls, System.ImageList, Vcl.ImgList;

type
  TUFrmPrincipalNew = class(TForm)
    ImageList1: TImageList;
    SplitVendas: TSplitView;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SplitView1: TSplitView;
    Panel1: TPanel;
    BtnAjuda: TSpeedButton;
    BtnLogistica: TSpeedButton;
    BtnManutencao: TSpeedButton;
    BtnImpressao: TSpeedButton;
    BtnTransporte: TSpeedButton;
    BtnVendas: TSpeedButton;
    BtnArquivo: TSpeedButton;
    BtnMenu: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UFrmPrincipalNew: TUFrmPrincipalNew;

implementation

{$R *.dfm}

end.
