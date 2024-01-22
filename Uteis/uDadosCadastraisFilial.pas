unit uDadosCadastraisFilial;

interface

type TDadosCadastraisFilial = class(TObject)
  private
    _nomeFilial: string;
    _apelido: string;
    _inscricaoEstadual: string;
    _inscricaoMunicipal: string;
    _cnpj: string;
    _cnae: string;
    _cep: string;
    _endereco: string;
    _numero: string;
    _bairro: string;
    _codigoCidade: string;
    _cidade: string;
    _codigoEstado: string;
    _estado: string;
    _UF: string;
    _codigoPais: string;
    _pais: string;
    _fone: string;
    _serieCertificado : string ;
    _dtVencCertificado : TDateTime ;
    _controleCaixa : string ;
  public
    property NomeFilial: string read _nomeFilial write _nomeFilial;
    property Apelido: string read _apelido write _apelido;
    property InscricaoEstadual: string read _inscricaoEstadual write _inscricaoEstadual;
    property InscricaoMunicipal: string read _inscricaoMunicipal write _inscricaoMunicipal;
    property Cnpj: string read _cnpj write _cnpj;
    property Cnae: string read _cnae write _cnae;
    property Cep: string read _cep write _cep;
    property Endereco: string read _endereco write _endereco;
    property Numero: string read _numero write _numero;
    property Bairro: string read _bairro write _bairro;
    property CodigoCidade: string read _codigoCidade write _codigoCidade;
    property Cidade: string read _cidade write _cidade;
    property CodigoEstado: string read _codigoEstado write _codigoEstado;
    property Estado: string read _estado write _estado;
    property UF: string read _UF write _UF;
    property CodigoPais: string read _codigoPais write _codigoPais;
    property Pais: string read _pais write _pais;
    property Fone: string read _fone write _fone;
    property SerieCertificado: string read _serieCertificado write _serieCertificado;
    property DtVencCertificado: TDateTime read _dtVencCertificado write _dtVencCertificado;
    property ControleCaixa: string read _controleCaixa write _controleCaixa;

    end;

implementation

end.
