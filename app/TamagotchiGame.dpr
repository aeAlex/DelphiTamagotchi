program TamagotchiGame;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {Form1},
  fCharacter in 'fCharacter.pas' {CharacterSprite: TFrame},
  fIdleCharacter in 'fIdleCharacter.pas' {IdleCharacter: TFrame},
  fBackground in 'fBackground.pas' {Background: TFrame},
  fSpriteAnimation in 'fSpriteAnimation.pas' {SpriteAnimationFrame: TFrame},
  fShowerAnimation in 'fShowerAnimation.pas' {ShowerAnimationFrame: TFrame},
  IAnimationController in 'IAnimationController.pas',
  fButton in '..\..\FirstDelphiGame\app\fButton.pas' {MyButton: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
