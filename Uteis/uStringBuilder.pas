unit uStringBuilder;

interface

uses
  SysUtils, StrUtils;

type
  TStringBuilder = class(TObject)

  private
    s: String;

  public
    constructor Create;
    procedure Clear;
    {
    procedure Append(value: Integer); overload;
    procedure Append(value: Double); overload;
    procedure Append(value: Char); overload;
    procedure Append(value: Boolean); overload;
    procedure Append(value: String); overload;
    procedure Append(value: TDateTime); overload;
    }
    procedure Append(value: Variant);

    function ToString: string;
  end;

implementation

uses {$IFNDEF VER130} Variants {$ENDIF};

{ TStringBuilder }
{
procedure TStringBuilder.Append(value: Double);
begin
  s := s + FloatToStr(value);
end;

procedure TStringBuilder.Append(value: Integer);
begin
  s := s + IntToStr(value);
end;

procedure TStringBuilder.Append(value: Char);
begin
  s := s + value;
end;

procedure TStringBuilder.Append(value: String);
begin
  s := s + value;
end;

procedure TStringBuilder.Append(value: Boolean);
begin
  s := s + IfThen(value, '1', '0');
end;

procedure TStringBuilder.Append(value: TDateTime);
begin
  s := s + DateToStr(value);
end;
}

constructor TStringBuilder.Create;
begin
  s := '';
end;

procedure TStringBuilder.Clear;
begin
  s := '';
end;

function TStringBuilder.ToString: string;
begin
  Result := s;
end;

procedure TStringBuilder.Append(value: Variant);
begin
  s := s + VarToStr(value);
end;

end.
