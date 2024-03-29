unit fIdleCharacter;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Ani, FMX.Objects,
  fCharacter;

type
  TIdleCharacter = class(TCharacterSprite)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IdleCharacter: TIdleCharacter;

implementation

{$R *.fmx}

end.
