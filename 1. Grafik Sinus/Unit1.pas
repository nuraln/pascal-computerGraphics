unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var fs, fy : real;
    x : integer;
begin
     fs := 0.0;
     for x := 0 to 749 do
       begin
           fy := 80*cos(fs/40);
           canvas.pixels[trunc(400+fs), trunc(260-fy)] :=clblue;
           canvas.pixels[trunc(250+fs), trunc(150-fy)] :=clblue;
           canvas.pixels[trunc(320+fs), trunc(240-fy)] :=clblue;
           fs := fs+1;
       end;
end;

end.
