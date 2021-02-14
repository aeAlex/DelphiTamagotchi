unit dmStatsDataManager;

interface

uses
  System.SysUtils, System.Classes;

type
  TStatsDataManager = class(TDataModule)
  private
    FwaterLevel: integer;
    Flifes: integer;
    FmaxLifes: integer;
    FmaxWaterLevel: integer;
    Fcoins: integer;
    procedure SetwaterLevel(const Value: integer);
    procedure Setlifes(const Value: integer);
    procedure Setcoins(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    procedure initialize();
    property waterLevel: integer read FwaterLevel write SetwaterLevel;
    property lifes: integer read Flifes write Setlifes;
    property maxLifes: integer read FmaxLifes;
    property maxWaterLevel: integer read FmaxWaterLevel;
    property coins: integer read Fcoins write Setcoins;
  end;

var
  statsDataManager: TStatsDataManager;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TStatsDataManager }

{ TStatsDataManager }

procedure TStatsDataManager.initialize;
begin
  FmaxLifes := 10;
  FmaxWaterLevel := 10;
  Fcoins := 0;
end;

procedure TStatsDataManager.Setcoins(const Value: integer);
begin
  Fcoins := Value;
end;

procedure TStatsDataManager.Setlifes(const Value: integer);
begin
  Flifes := Value;
end;

procedure TStatsDataManager.SetwaterLevel(const Value: integer);
begin
  FwaterLevel := Value;
end;

end.
