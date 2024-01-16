unit uVg_VariaveisGlobais;

interface

var
  Vg_Ip: string;
  Vg_Empresa: string = 'CA';
  Vg_Filial: Integer = 1;
  Vg_Cnx_Sorocaba: Boolean;
  Vg_Cnx_Teste: Boolean;
  Vg_Cnx_Itape: Boolean;
  Vg_Cnx_Guapiacu : Boolean;
  Vg_Cnx_Dacar : Boolean;
  Vg_DataHora: TDateTime;
  Vg_strCnx : String;
  Vg_strCnx_Sorocaba: string = 'smart/pyxis@192.168.0.250:1521:orcl';
  Vg_strCnx_Itape: string = 'smart/pyxis@192.168.0.250:1521:orcl';
  Vg_strCnx_teste: string = 'TEST_1AVI/TEST_1AVI@192.168.0.250:1521:orcl';
  Vg_strCnx_Guapiacu: string = 'smart/pyxis@192.168.0.250:1521:orcl';
  Vg_impressora: integer;
  vg_PesaMultiCaixas : string = 'N';
  PTamString, PTamStrCompleta, PPosIniString,PSimulaPeso,
  PBaudRate, PDataBits, PParity, PStopBits, PFlowControl : string ;

implementation

end.
