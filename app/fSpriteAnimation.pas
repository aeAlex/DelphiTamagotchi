unit fSpriteAnimation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Ani, FMX.Objects, IAnimationController;

type
  TSpriteAnimationFrame = class(TFrame, IAnimationControler)
    rectAnimation: TRectangle;
    SpriteAnimation: TBitmapListAnimation;
    rectNoAnimation: TRectangle;
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
  rectNoAnimation.Visible := false;
  rectAnimation.Visible := true;
  SpriteAnimation.Start;
end;

procedure TSpriteAnimationFrame.StopAnimation;
begin
  SpriteAnimation.Stop;
  rectAnimation.Visible := false;
  rectNoAnimation.Visible := true;
end;

end.
