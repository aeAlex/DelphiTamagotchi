unit fBombSprite;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, fSprite, FMX.Ani, FMX.Objects;

type
  TBombSprite = class(TSprite)
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  BombSprite: TBombSprite;

implementation

{$R *.fmx}

{ TSprite1 }

constructor TBombSprite.Create(AOwner: TComponent);
begin
  inherited;
  GoodOrBad := Bad;
end;

end.