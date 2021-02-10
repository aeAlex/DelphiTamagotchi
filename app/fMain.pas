unit fMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, fCharacter, fIdleCharacter, fBackground,
  fSpriteAnimation, fShowerAnimation;

type
  TForm1 = class(TForm)
    TIdleCharacter1: TIdleCharacter;
    TBackground1: TBackground;
    TShowerAnimationFrame1: TShowerAnimationFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Start the Character Animation
  TIdleCharacter1.StartAnimation;
  // Start the Shower Animation
  TShowerAnimationFrame1.StartAnimation;
end;

end.
