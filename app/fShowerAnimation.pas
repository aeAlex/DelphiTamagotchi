unit fShowerAnimation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, fSpriteAnimation, FMX.Ani, FMX.Objects;

type
  TShowerAnimationFrame = class(TSpriteAnimationFrame)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowerAnimationFrame: TShowerAnimationFrame;

implementation

{$R *.fmx}

end.
