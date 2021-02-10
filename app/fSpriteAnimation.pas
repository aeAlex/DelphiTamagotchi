unit fSpriteAnimation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Ani, FMX.Objects, IAnimationController;

type
  TSpriteAnimationFrame = class(TFrame, IAnimationControler)
    Rectangle1: TRectangle;
    SpriteAnimation: TBitmapListAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartAnimation;
    procedure StopAnimation;
  end;

implementation

{$R *.fmx}

{ TSpriteAnimationFrame }

procedure TSpriteAnimationFrame.StartAnimation;
begin
  SpriteAnimation.Enabled := true;
end;

procedure TSpriteAnimationFrame.StopAnimation;
begin
  SpriteAnimation.Enabled := false;
end;

end.
