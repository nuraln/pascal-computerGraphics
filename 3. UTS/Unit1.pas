unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects;

type
  TForm1 = class(TForm)
    SpriteNinja: TRectangle;
    BitmapListAnimation: TBitmapListAnimation;
    imgNinja: TImage;
    animNinja: TRectangle;
    Image1: TImage;
    imgKnight: TImage;
    SpriteKnight: TRectangle;
    BitmapListAnimation1: TBitmapListAnimation;
    AnimKnight: TRectangle;
    GameLoop: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GameLoopTimer(Sender: TObject);
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
   imgNinja.Visible:=False;
   imgKnight.Visible:=False;
end;

procedure TForm1.FormShow(Sender: TObject);
var AnimList: TBitmapListAnimation;
    Enemy: array [0..20] of TRectangle;
    X:Integer;
begin              { }
  with animNinja do
    begin
      Fill.Kind:=Fill.Kind.bkBitmap;
      Fill.Bitmap.WrapMode:=Fill.Bitmap.WrapMode.wmTileStretch;
      Stroke.Kind:=Stroke.Kind.bkNone; //BringToFront;
      AnimList:= TBitmapListAnimation.Create(animNinja);
      AnimList.AnimationBitmap.Assign(imgNinja.Bitmap);
      AnimList.AnimationCount := 10;
      AnimList.AnimationRowCount := 2;
      Width:=42;
      //Height:=25;
      AnimList.PropertyName := BitmapListAnimation.PropertyName;
      AnimList.Duration := 1;
      AnimList.Loop := true;
      AnimList.Enabled:=true;
      SpriteNinja.TagObject := AnimList;
      AnimList.Parent := animNinja;
      AnimList.Start;
    end;

  with AnimKnight do
    begin
      Fill.Kind:=Fill.Kind.bkBitmap;
      Fill.Bitmap.WrapMode:=Fill.Bitmap.WrapMode.wmTileStretch;
      Stroke.Kind:=Stroke.Kind.bkNone; //BringToFront;
      AnimList:= TBitmapListAnimation.Create(AnimKnight);
      AnimList.AnimationBitmap.Assign(imgKnight.Bitmap);
      AnimList.AnimationCount := 7;
      AnimList.AnimationRowCount := 1;
      Width:=97;
      Height:=84;
      AnimList.PropertyName := BitmapListAnimation.PropertyName;
      AnimList.Duration := 1;
      AnimList.Loop := true;
      AnimList.Enabled:=true;
      SpriteNinja.TagObject := AnimList;
      AnimList.Parent := AnimKnight;
      AnimList.Start;
      Position.X:=Position.X-5;
    end;

end;

procedure TForm1.GameLoopTimer(Sender: TObject);
begin
  SpriteNinja.Position.X:=SpriteNinja.Position.X+1;

  SpriteKnight.Position.X:=SpriteKnight.Position.X-1;
end;

end.
