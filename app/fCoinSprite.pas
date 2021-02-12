unit fCoinSprite;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  fSprite, FMX.Ani, FMX.Objects;

type
  TCoinSprite = class(TSprite)
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  CoinSprite: TCoinSprite;

implementation

{$R *.fmx}

{ TSprite1 }

constructor TCoinSprite.Create(AOwner: TComponent);
begin
  inherited;
  GoodOrBad := good;
end;

end.
