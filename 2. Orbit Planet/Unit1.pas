// Nama  : Nur Anisah
// Nim   : 200170015
// Kelas : A4-Grafika Komputer
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Timer1: TTimer;
    Shape1: TShape;
    orbit1: TShape;
    orbit2: TShape;
    orbit3: TShape;
    putih: TShape;
    biru: TShape;
    merah: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  constanta : integer;
  theta, c, d : double;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    constanta := 5;
    biru.Visible := true;
    merah.Visible := true;
    putih.Visible := true;
    Timer1.Enabled := TRUE;
    theta := 0.0;
    c := 1/100;
    d := 2*PI;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
  var x1, y1, x2, y2, x3, y3 : real;
begin
   if (theta <= (2*d)) then
   begin
   x3 := ((orbit3.width)/2)+(orbit3.Left)+((orbit3.width)/2)*cos(2*theta);
   y3 := ((orbit3.height/2)+(orbit3.top))-(orbit3.height/2)*sin(2*theta);
   x2 := ((orbit2.width)/2)+(orbit2.left)-((orbit2.width)/2)*cos(-4*theta);
   y2 := ((orbit2.height)/2)+(orbit2.top)-(orbit2.height/2)*sin(-4*theta);
   x1 := ((orbit1.width)/2)+(orbit1.left)-((orbit1.width)/2)*cos(6*theta);
   y1 := ((orbit1.height/2)+(orbit1.top))-(orbit1.height/2)*sin(6*theta);

      merah.left := trunc(x2)-constanta;
      merah.top := trunc(y2)-constanta;
      biru.left := trunc(x3)-constanta;
      biru.top := trunc(y3)-constanta;
      putih.left := trunc(x1)-constanta;
      putih.top := trunc(y1)-constanta;
      theta := theta+c;
   end;

   if (theta>=2*d) then theta := 0.0;

end;

end.
