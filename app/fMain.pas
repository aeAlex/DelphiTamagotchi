unit fMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, fCharacter, fIdleCharacter, fBackground,
  fSpriteAnimation, fShowerAnimation, fButton, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm1 = class(TForm)
    TIdleCharacter1: TIdleCharacter;
    TBackground1: TBackground;
    TShowerAnimationFrame1: TShowerAnimationFrame;
    Layout1: TLayout;
    btnShower: TMyButton;
    GridLayout1: TGridLayout;
    rectLifeImage: TRectangle;
    lblLifes: TLabel;
    rectWaterImage: TRectangle;
    lblWater: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnShowerClick(Sender: TObject);
  private
    { Private declarations }
    showerActivated: boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnShowerClick(Sender: TObject);
begin
  // Start the Shower Animation
  if not showerActivated then begin
    TShowerAnimationFrame1.StartAnimation;
    btnShower.Label1.Text := 'Deactivate Shower';
  end else begin
    TShowerAnimationFrame1.StopAnimation;
    btnShower.Label1.Text := 'Activate Shower';
  end;
      showerActivated := not showerActivated;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    showerActivated := false;
  // Start the Character Animation
  TIdleCharacter1.StartAnimation;
end;

end.
