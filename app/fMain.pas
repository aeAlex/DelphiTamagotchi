unit fMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, fCharacter,
  fIdleCharacter, fBackground,
  System.Threading,
  fSpriteAnimation, fShowerAnimation, fButton, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, Generics.Collections;

type
  TForm1 = class(TForm)
    TIdleCharacter1: TIdleCharacter;
    TBackground1: TBackground;
    TShowerAnimationFrame1: TShowerAnimationFrame;
    LShower: TLayout;
    btnShower: TMyButton;
    GridLayout1: TGridLayout;
    rectLifeImage: TRectangle;
    lblLifes: TLabel;
    rectWaterImage: TRectangle;
    lblWater: TLabel;
    LDead: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label1: TLabel;
    btnResurect: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnShowerClick(Sender: TObject);
    procedure btnResurectClick(Sender: TObject);
  private
    { Private declarations }
    showerActivated: boolean;
    outerElementsList: TList<TControl>;
    procedure initGame();
    procedure makeAllControlsInvisible();
    procedure killSlime();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses dmStatsDataManager;

procedure TForm1.FormCreate(Sender: TObject);
begin
  outerElementsList := TList<TControl>.Create;
  outerElementsList.Add(LDead);
  outerElementsList.Add(LShower);
  outerElementsList.Add(TIdleCharacter1);
  outerElementsList.Add(TBackground1);
  outerElementsList.Add(TShowerAnimationFrame1);

  initGame();
end;

procedure TForm1.initGame;
var
  reduceWaterTask: ITask;
var
  waterIncrementValue: integer;
begin

  statsDataManager.initialize();

  // Make needed Controls visible
  LShower.Visible := true;
  TIdleCharacter1.Visible := true;
  TBackground1.Visible := true;
  TShowerAnimationFrame1.Visible := true;

  showerActivated := false;
  TShowerAnimationFrame1.StopAnimation;
  btnShower.Label1.Text := 'Activate Shower';

  // Start the Character Animation
  TIdleCharacter1.StartAnimation;

  statsDataManager.waterLevel := statsDataManager.maxWaterLevel;
  statsDataManager.lifes := statsDataManager.maxLifes;
  // slowly Reduce Water Level
  reduceWaterTask := TTask.Create(
    procedure
    begin
      while (statsDataManager.waterLevel >= 0) and
        (statsDataManager.lifes > 0) do
      begin
        sleep(1000);

        // check if slime has water
        if statsDataManager.waterLevel = 0 then
        begin
          statsDataManager.lifes := statsDataManager.lifes - 1;
        end;

        if showerActivated then
        begin
          waterIncrementValue := 1;
        end
        else
        begin
          waterIncrementValue := -1;
        end;

        statsDataManager.waterLevel := statsDataManager.waterLevel +
          waterIncrementValue;

        if statsDataManager.waterLevel < 0 then
          statsDataManager.waterLevel := 0;

        if statsDataManager.waterLevel > statsDataManager.maxWaterLevel then
        begin
          statsDataManager.waterLevel := statsDataManager.maxWaterLevel;
          statsDataManager.lifes := statsDataManager.lifes + 1;

          if statsDataManager.lifes > statsDataManager.maxLifes then begin
             statsDataManager.lifes := statsDataManager.maxLifes;
          end

        end;

        // kill slime when lifes are 0
        if statsDataManager.lifes <= 0 then
        begin
          killSlime();
        end;

        lblWater.Text := statsDataManager.waterLevel.toString;
        lblLifes.Text := statsDataManager.lifes.toString;

      end;
    end);
  reduceWaterTask.Start();

  lblWater.Text := statsDataManager.waterLevel.toString;
  lblLifes.Text := statsDataManager.lifes.toString;
end;

procedure TForm1.btnResurectClick(Sender: TObject);
begin
  LDead.Visible := false;
  initGame();
end;

procedure TForm1.btnShowerClick(Sender: TObject);
begin
  // Start the Shower Animation
  if not showerActivated then
  begin
    TShowerAnimationFrame1.StartAnimation;
    btnShower.Label1.Text := 'Deactivate Shower';
  end
  else
  begin
    TShowerAnimationFrame1.StopAnimation;
    btnShower.Label1.Text := 'Activate Shower';
  end;
  showerActivated := not showerActivated;

end;

procedure TForm1.killSlime;
begin
  makeAllControlsInvisible();
  LDead.Visible := true;
end;

procedure TForm1.makeAllControlsInvisible;
var
  i: integer;
begin
  for i := 0 to outerElementsList.Count - 1 do
    outerElementsList[i].Visible := false;
end;

end.
