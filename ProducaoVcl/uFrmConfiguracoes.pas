{************ CRÉDITOS DO SISTEMA *************
* Revisado por: Edmilde Freire Montagnoli     *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmConfiguracoes;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ExtCtrls, DBClient, Midas;

type
  TFrmConfiguracoes = class(TForm)
    Panel1: TPanel;
    btnFechar: TButton;
    dtsConfiguracoes: TDataSource;
    Label1: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBox1: TGroupBox;
    edt_BaudRate: TEdit;
    edt_Databits: TEdit;
    Cmb_Paridade: TComboBox;
    cmb_StopBits: TComboBox;
    cmb_FlowControl: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Parity: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edt_TamStrCompleta: TEdit;
    Label20: TLabel;
    edt_PosIniStr: TEdit;
    Label21: TLabel;
    edt_TamString: TEdit;
    btnSalvar: TButton;
    btnSalvarIni: TButton;
    Btn_Exportar: TButton;
    DBEdit15: TDBEdit;
    Ds_SeqLocal: TDataSource;
    edt_MaxServer: TDBEdit;
    Ds_SeqServer: TDataSource;
    Label22: TLabel;
    Label23: TLabel;
    Button1: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dtsConfiguracoesDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarIniClick(Sender: TObject);
    procedure Btn_ExportarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfiguracoes: TFrmConfiguracoes;

implementation

uses uDmPrincipal, IniFiles, uFrmPrincipal, uVg_VariaveisGlobais,
     UFrmVerificaProducao;

{$R *.dfm}

procedure CriaFor_FrmConfiguracoes;
begin
  try
    FrmConfiguracoes := TFrmConfiguracoes.Create(Application);

    FrmConfiguracoes.ShowModal;
  finally
    FreeAndNil(FrmConfiguracoes);
  end;
end;

procedure TFrmConfiguracoes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfiguracoes.btnSalvarClick(Sender: TObject);

begin
     DmPrincipal.cdsIpBalanca.Post;
     //DmPrincipal.cdsIpBalanca.ApplyUpdates(0);
     DmPrincipal.cdsIpBalanca.ApplyUpdates(0);
    ShowMessage('Configurações foram gravadas.');

end;

procedure TFrmConfiguracoes.dtsConfiguracoesDataChange(Sender: TObject;
  Field: TField);
begin
  btnSalvar.Enabled := DmPrincipal.cdsIpBalanca.State = dsEdit;
end;

procedure TFrmConfiguracoes.FormShow(Sender: TObject);
begin
     FrmPrincipal.CarregarConfiguracoes;

     edt_BaudRate.Text := PBaudRate;
     edt_Databits.Text := PDataBits;
     Cmb_Paridade.Text := PParity;
     Cmb_StopBits.Text := PStopBits;
     cmb_FlowControl.Text := PFlowControl;
     edt_TamString.Text    := PTamString;
     edt_TamStrCompleta.Text := PTamStrCompleta;
     edt_PosIniStr.Text      := PPosIniString;

end;

procedure TFrmConfiguracoes.btnSalvarIniClick(Sender: TObject);
var ArqIni: TIniFile ;
begin
     try
        ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ProducaoVcl.ini');
        ArqIni.WriteString ('BALANCA','BAUDRATE', edt_BaudRate.Text );
        ArqIni.WriteString ('BALANCA','DATABITS', edt_Databits.Text );
        ArqIni.WriteString ('BALANCA','PARITY', Cmb_Paridade.Text );
        ArqIni.WriteString ('BALANCA','STOPBITS', cmb_StopBits.Text );
        ArqIni.WriteString ('BALANCA','FLOWCONTROL', cmb_FlowControl.Text );
        ArqIni.WriteString ('BALANCA','TAMSTR', edt_TamString.Text );
        ArqIni.WriteString ('BALANCA','TAMSTRCOMPLETA', edt_TamStrCompleta.Text );
        ArqIni.WriteString ('BALANCA','POSINISTRING', edt_PosIniStr.Text );

     finally
        ArqIni.Free;
     end;

    FrmPrincipal.CarregarConfiguracoes;

    ShowMessage('Configurações foram gravadas.');

end;

procedure TFrmConfiguracoes.Btn_ExportarClick(Sender: TObject);
begin
    //Muda ampulheta
    Screen.Cursor := crSQLWait;
    //Exporta os dados recebidos
    try
      try
         if ( not DmPrincipal.SomenteLocal ) then
            DmPrincipal.ExportaDados;
      except
        //
      end;
    finally
      //Volta a ampulheta
      Screen.Cursor := crDefault;
    end;

end;

procedure TFrmConfiguracoes.Button1Click(Sender: TObject);
begin
      try
          Frm_DadosProducao := TFrm_DadosProducao.Create(Application);
          Frm_DadosProducao.ShowModal;
      finally
        FreeAndNil(Frm_DadosProducao);
      end;
end;

end.
