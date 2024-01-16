object FrmSenhaAcesso: TFrmSenhaAcesso
  Left = 463
  Top = 254
  ActiveControl = btnOk
  Caption = 'Senha Acesso'
  ClientHeight = 96
  ClientWidth = 175
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 14
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 31
    Height = 14
    Caption = 'Senha'
  end
  object btnOk: TButton
    Left = 9
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = btnOkClick
  end
  object btnSair: TButton
    Left = 97
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object edtSenha: TEdit
    Left = 9
    Top = 21
    Width = 161
    Height = 22
    PasswordChar = '*'
    TabOrder = 2
    OnKeyPress = edtSenhaKeyPress
  end
end
