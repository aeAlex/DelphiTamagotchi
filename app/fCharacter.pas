unit fCharacter;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Ani, IAnimationController;

type
  TCharacterSprite = class(TFrame, IAnimationControler)
    Rectangle1: TRectangle;
    CharacterAnimation: TBitmapListAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartAnimation;
    procedure StopAnimation;
  end;

implementation

{$R *.fmx}

{ TCharacterSprite }

procedure TCharacterSprite.StartAnimation;
begin
  CharacterAnimation.Enabled := true;
end;

procedure TCharacterSprite.StopAnimation;
begin
  CharacterAnimation.Enabled := false;
end;

end.