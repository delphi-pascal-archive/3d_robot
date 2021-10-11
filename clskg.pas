unit clskg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button8: TButton;
    Bevel1: TBevel;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    Timer9: TTimer;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,h,b: integer;
  k: real;
  x:  array [1..65] of real;
  y:  array [1..65] of real;
  z:  array [1..65] of real;
  x1: array [1..65] of integer;
  y1: array [1..65] of integer;

const
 alfa=45;
 f=1/2;

implementation

{$R *.dfm}

procedure robot(a: integer);
var
 osn:    array [1..22] of TPoint; // туловище
 sh:     array [1..22] of TPoint; // шея
 gol:    array [1..22] of TPoint; // голова
 leg_l:  array [1..50] of TPoint; // ноги
 leg_r:  array [1..50] of TPoint; // ноги
 hand_l: array [1..65] of TPoint; // руки
 hand_r: array [1..65] of TPoint; // руки
 rog_l:  array [1..5]  of TPoint; // рога
 rog_r:  array [1..5]  of TPoint; // рога
 ptc:    array [0..1]  of integer;
 centr_x, centr_y: integer;
begin
 centr_x:=(Form1.Image1.Width div 2)-50;
 centr_y:=(Form1.Image1.Height div 2)+50;
 //
 with Form1.Image1.Canvas do
  begin
   // туловище
   osn[1].x:=centr_x+x1[1];
   osn[1].y:=centr_y-y1[1];
   osn[2].x:=centr_x+x1[2];
   osn[2].y:=centr_y-y1[2];
   osn[3].x:=centr_x+x1[3];
   osn[3].y:=centr_y-y1[3];
   osn[4].x:=centr_x+x1[4];
   osn[4].y:=centr_y-y1[4];
   osn[5].x:=centr_x+x1[8];
   osn[5].y:=centr_y-y1[8];
   osn[6].x:=centr_x+x1[7];
   osn[6].y:=centr_y-y1[7];
   osn[7].x:=centr_x+x1[3];
   osn[7].y:=centr_y-y1[3];
   osn[8].x:=centr_x+x1[2];
   osn[8].y:=centr_y-y1[2];
   osn[9].x:=centr_x+x1[6];
   osn[9].y:=centr_y-y1[6];
   osn[10].x:=centr_x+x1[7];
   osn[10].y:=centr_y-y1[7];
   osn[11].x:=centr_x+x1[8];
   osn[11].y:=centr_y-y1[8];
   osn[12].x:=centr_x+x1[5];
   osn[12].y:=centr_y-y1[5];
   osn[13].x:=centr_x+x1[6];
   osn[13].y:=centr_y-y1[6];
   osn[14].x:=centr_x+x1[2];
   osn[14].y:=centr_y-y1[2];
   osn[15].x:=centr_x+x1[1];
   osn[15].y:=centr_y-y1[1];
   osn[16].x:=centr_x+x1[5];
   osn[16].y:=centr_y-y1[5];
   osn[17].x:=centr_x+x1[8];
   osn[17].y:=centr_y-y1[8];
   osn[18].x:=centr_x+x1[4];
   osn[18].y:=centr_y-y1[4];
   osn[19].x:=centr_x+x1[1];
   osn[19].y:=centr_y-y1[1];
   /////////////////////////
   // шея
   sh[1].x:=centr_x+x1[9];
   sh[1].y:=centr_y-y1[9];
   sh[2].x:=centr_x+x1[10];
   sh[2].y:=centr_y-y1[10];
   sh[3].x:=centr_x+x1[11];
   sh[3].y:=centr_y-y1[11];
   sh[4].x:=centr_x+x1[12];
   sh[4].y:=centr_y-y1[12];
   sh[5].x:=centr_x+x1[9];
   sh[5].y:=centr_y-y1[9];
   sh[6].x:=centr_x+x1[13];
   sh[6].y:=centr_y-y1[13];
   sh[7].x:=centr_x+x1[16];
   sh[7].y:=centr_y-y1[16];
   sh[8].x:=centr_x+x1[12];
   sh[8].y:=centr_y-y1[12];
   sh[9].x:=centr_x+x1[11];
   sh[9].y:=centr_y-y1[11];
   sh[10].x:=centr_x+x1[10];
   sh[10].y:=centr_y-y1[10];
   sh[11].x:=centr_x+x1[14];
   sh[11].y:=centr_y-y1[14];
   sh[12].x:=centr_x+x1[15];
   sh[12].y:=centr_y-y1[15];
   sh[13].x:=centr_x+x1[11];
   sh[13].y:=centr_y-y1[11];
   sh[14].x:=centr_x+x1[15];
   sh[14].y:=centr_y-y1[15];
   sh[15].x:=centr_x+x1[16];
   sh[15].y:=centr_y-y1[16];
   sh[16].x:=centr_x+x1[13];
   sh[16].y:=centr_y-y1[13];
   sh[17].x:=centr_x+x1[14];
   sh[17].y:=centr_y-y1[14];
   sh[18].x:=centr_x+x1[13];
   sh[18].y:=centr_y-y1[13];
   sh[19].x:=centr_x+x1[9];
   sh[19].y:=centr_y-y1[9];
   /////////////////////////
   // голова
   gol[1].x:=centr_x+x1[17];
   gol[1].y:=centr_y-y1[17];
   gol[2].x:=centr_x+x1[18];
   gol[2].y:=centr_y-y1[18];
   gol[3].x:=centr_x+x1[19];
   gol[3].y:=centr_y-y1[19];
   gol[4].x:=centr_x+x1[20];
   gol[4].y:=centr_y-y1[20];
   gol[5].x:=centr_x+x1[17];
   gol[5].y:=centr_y-y1[17];
   gol[6].x:=centr_x+x1[21];
   gol[6].y:=centr_y-y1[21];
   gol[7].x:=centr_x+x1[24];
   gol[7].y:=centr_y-y1[24];
   gol[8].x:=centr_x+x1[20];
   gol[8].y:=centr_y-y1[20];
   gol[9].x:=centr_x+x1[19];
   gol[9].y:=centr_y-y1[19];
   gol[10].x:=centr_x+x1[18];
   gol[10].y:=centr_y-y1[18];
   gol[11].x:=centr_x+x1[22];
   gol[11].y:=centr_y-y1[22];
   gol[12].x:=centr_x+x1[23];
   gol[12].y:=centr_y-y1[23];
   gol[13].x:=centr_x+x1[19];
   gol[13].y:=centr_y-y1[19];
   gol[14].x:=centr_x+x1[23];
   gol[14].y:=centr_y-y1[23];
   gol[15].x:=centr_x+x1[24];
   gol[15].y:=centr_y-y1[24];
   gol[16].x:=centr_x+x1[21];
   gol[16].y:=centr_y-y1[21];
   gol[17].x:=centr_x+x1[22];
   gol[17].y:=centr_y-y1[22];
   gol[18].x:=centr_x+x1[21];
   gol[18].y:=centr_y-y1[21];
   gol[19].x:=centr_x+x1[17];
   gol[19].y:=centr_y-y1[17];
   //////////////////////////
   // ноги
   // левая
   leg_l[1].x:=centr_x+x1[25];
   leg_l[1].y:=centr_y-y1[25];
   leg_l[2].x:=centr_x+x1[26];
   leg_l[2].y:=centr_y-y1[26];
   leg_l[3].x:=centr_x+x1[27];
   leg_l[3].y:=centr_y-y1[27];
   leg_l[4].x:=centr_x+x1[28];
   leg_l[4].y:=centr_y-y1[28];
   leg_l[5].x:=centr_x+x1[25];
   leg_l[5].y:=centr_y-y1[25];
   leg_l[6].x:=centr_x+x1[29];
   leg_l[6].y:=centr_y-y1[29];
   leg_l[7].x:=centr_x+x1[32];
   leg_l[7].y:=centr_y-y1[32];
   leg_l[8].x:=centr_x+x1[28];
   leg_l[8].y:=centr_y-y1[28];
   leg_l[9].x:=centr_x+x1[27];
   leg_l[9].y:=centr_y-y1[27];
   leg_l[10].x:=centr_x+x1[26];
   leg_l[10].y:=centr_y-y1[26];
   leg_l[11].x:=centr_x+x1[30];
   leg_l[11].y:=centr_y-y1[30];
   leg_l[12].x:=centr_x+x1[31];
   leg_l[12].y:=centr_y-y1[31];
   leg_l[13].x:=centr_x+x1[27];
   leg_l[13].y:=centr_y-y1[27];
   leg_l[14].x:=centr_x+x1[31];
   leg_l[14].y:=centr_y-y1[31];
   leg_l[15].x:=centr_x+x1[32];
   leg_l[15].y:=centr_y-y1[32];
   leg_l[16].x:=centr_x+x1[29];
   leg_l[16].y:=centr_y-y1[29];
   leg_l[17].x:=centr_x+x1[30];
   leg_l[17].y:=centr_y-y1[30];
   leg_l[18].x:=centr_x+x1[29];
   leg_l[18].y:=centr_y-y1[29];
   leg_l[19].x:=centr_x+x1[25];
   leg_l[19].y:=centr_y-y1[25];
   ////////////////////////////
   // правая
   leg_r[1].x:=centr_x+x1[33];
   leg_r[1].y:=centr_y-y1[33];
   leg_r[2].x:=centr_x+x1[34];
   leg_r[2].y:=centr_y-y1[34];
   leg_r[3].x:=centr_x+x1[35];
   leg_r[3].y:=centr_y-y1[35];
   leg_r[4].x:=centr_x+x1[36];
   leg_r[4].y:=centr_y-y1[36];
   leg_r[5].x:=centr_x+x1[33];
   leg_r[5].y:=centr_y-y1[33];
   leg_r[6].x:=centr_x+x1[37];
   leg_r[6].y:=centr_y-y1[37];
   leg_r[7].x:=centr_x+x1[40];
   leg_r[7].y:=centr_y-y1[40];
   leg_r[8].x:=centr_x+x1[36];
   leg_r[8].y:=centr_y-y1[36];
   leg_r[9].x:=centr_x+x1[35];
   leg_r[9].y:=centr_y-y1[35];
   leg_r[10].x:=centr_x+x1[34];
   leg_r[10].y:=centr_y-y1[34];
   leg_r[11].x:=centr_x+x1[38];
   leg_r[11].y:=centr_y-y1[38];
   leg_r[12].x:=centr_x+x1[39];
   leg_r[12].y:=centr_y-y1[39];
   leg_r[13].x:=centr_x+x1[35];
   leg_r[13].y:=centr_y-y1[35];
   leg_r[14].x:=centr_x+x1[39];
   leg_r[14].y:=centr_y-y1[39];
   leg_r[15].x:=centr_x+x1[40];
   leg_r[15].y:=centr_y-y1[40];
   leg_r[16].x:=centr_x+x1[37];
   leg_r[16].y:=centr_y-y1[37];
   leg_r[17].x:=centr_x+x1[38];
   leg_r[17].y:=centr_y-y1[38];
   leg_r[18].x:=centr_x+x1[37];
   leg_r[18].y:=centr_y-y1[37];
   leg_r[19].x:=centr_x+x1[33];
   leg_r[19].y:=centr_y-y1[33];
   /////////////////////// руки
   // левая
   hand_l[1].x:=centr_x+x1[41];
   hand_l[1].y:=centr_y-y1[41];
   hand_l[2].x:=centr_x+x1[42];
   hand_l[2].y:=centr_y-y1[42];
   hand_l[3].x:=centr_x+x1[43];
   hand_l[3].y:=centr_y-y1[43];
   hand_l[4].x:=centr_x+x1[44];
   hand_l[4].y:=centr_y-y1[44];
   hand_l[5].x:=centr_x+x1[41];
   hand_l[5].y:=centr_y-y1[41];
   hand_l[6].x:=centr_x+x1[45];
   hand_l[6].y:=centr_y-y1[45];
   hand_l[7].x:=centr_x+x1[48];
   hand_l[7].y:=centr_y-y1[48];
   hand_l[8].x:=centr_x+x1[44];
   hand_l[8].y:=centr_y-y1[44];
   hand_l[9].x:=centr_x+x1[43];
   hand_l[9].y:=centr_y-y1[43];
   hand_l[10].x:=centr_x+x1[42];
   hand_l[10].y:=centr_y-y1[42];
   hand_l[11].x:=centr_x+x1[46];
   hand_l[11].y:=centr_y-y1[46];
   hand_l[12].x:=centr_x+x1[47];
   hand_l[12].y:=centr_y-y1[47];
   hand_l[13].x:=centr_x+x1[43];
   hand_l[13].y:=centr_y-y1[43];
   hand_l[14].x:=centr_x+x1[47];
   hand_l[14].y:=centr_y-y1[47];
   hand_l[15].x:=centr_x+x1[48];
   hand_l[15].y:=centr_y-y1[48];
   hand_l[16].x:=centr_x+x1[45];
   hand_l[16].y:=centr_y-y1[45];
   hand_l[17].x:=centr_x+x1[46];
   hand_l[17].y:=centr_y-y1[46];
   hand_l[18].x:=centr_x+x1[45];
   hand_l[18].y:=centr_y-y1[45];
   hand_l[19].x:=centr_x+x1[41];
   hand_l[19].y:=centr_y-y1[41];
   // правая
   hand_r[1].x:=centr_x+x1[49];
   hand_r[1].y:=centr_y-y1[49];
   hand_r[2].x:=centr_x+x1[50];
   hand_r[2].y:=centr_y-y1[50];
   hand_r[3].x:=centr_x+x1[51];
   hand_r[3].y:=centr_y-y1[51];
   hand_r[4].x:=centr_x+x1[52];
   hand_r[4].y:=centr_y-y1[52];
   hand_r[5].x:=centr_x+x1[49];
   hand_r[5].y:=centr_y-y1[49];
   hand_r[6].x:=centr_x+x1[53];
   hand_r[6].y:=centr_y-y1[53];
   hand_r[7].x:=centr_x+x1[56];
   hand_r[7].y:=centr_y-y1[56];
   hand_r[8].x:=centr_x+x1[52];
   hand_r[8].y:=centr_y-y1[52];
   hand_r[9].x:=centr_x+x1[51];
   hand_r[9].y:=centr_y-y1[51];
   hand_r[10].x:=centr_x+x1[50];
   hand_r[10].y:=centr_y-y1[50];
   hand_r[11].x:=centr_x+x1[54];
   hand_r[11].y:=centr_y-y1[54];
   hand_r[12].x:=centr_x+x1[55];
   hand_r[12].y:=centr_y-y1[55];
   hand_r[13].x:=centr_x+x1[51];
   hand_r[13].y:=centr_y-y1[51];
   hand_r[14].x:=centr_x+x1[55];
   hand_r[14].y:=centr_y-y1[55];
   hand_r[15].x:=centr_x+x1[56];
   hand_r[15].y:=centr_y-y1[56];
   hand_r[16].x:=centr_x+x1[53];
   hand_r[16].y:=centr_y-y1[53];
   hand_r[17].x:=centr_x+x1[54];
   hand_r[17].y:=centr_y-y1[54];
   hand_r[18].x:=centr_x+x1[53];
   hand_r[18].y:=centr_y-y1[53];
   hand_r[19].x:=centr_x+x1[49];
   hand_r[19].y:=centr_y-y1[49];
   /////////////////////// рога
   // левый
   rog_l[1].x:=centr_x+x1[57];
   rog_l[1].y:=centr_y-y1[57];
   rog_l[2].x:=centr_x+x1[58];
   rog_l[2].y:=centr_y-y1[58];
   rog_l[3].x:=centr_x+x1[57];
   rog_l[3].y:=centr_y-y1[57];
   // правый
   rog_r[1].x:=centr_x+x1[59];
   rog_r[1].y:=centr_y-y1[59];
   rog_r[2].x:=centr_x+x1[60];
   rog_r[2].y:=centr_y-y1[60];
   rog_r[3].x:=centr_x+x1[59];
   rog_r[3].y:=centr_y-y1[59];
   //
   ptc[0]:=3;
   PolyPolygon(Form1.Image1.Canvas.Handle,rog_l,ptc,1);
   PolyPolygon(Form1.Image1.Canvas.Handle,rog_r,ptc,1);
   ptc[0]:=19;
   PolyPolygon(Form1.Image1.Canvas.Handle,gol,ptc,1);
   PolyPolygon(Form1.Image1.Canvas.Handle,sh,ptc,1);
   PolyPolygon(Form1.Image1.Canvas.Handle,osn,ptc,1);
   PolyPolygon(Form1.Image1.Canvas.Handle,hand_l,ptc,1);
   PolyPolygon(Form1.Image1.Canvas.Handle,hand_r,ptc,1);
   PolyPolygon(Form1.Image1.Canvas.Handle,leg_l,ptc,1);
   PolyPolygon(Form1.Image1.Canvas.Handle,leg_r,ptc,1);
  end;
end;

////////////////////////////////////////////////

procedure proekcia(x,y,z: real; var x1,y1: integer);
begin
 x1:=Round(x+0.5*z*f*cos(alfa));
 y1:=Round(y+0.5*z*f*sin(alfa));
end;

procedure povoroty(x,y: real;var fi: real; var x22,y22: real);
begin
 x22:=x*cos(fi)-y*sin(fi);
 y22:=y*cos(fi)+x*sin(fi);
end;

////////////////////////////////////////////////

procedure TForm1.Button2Click(Sender: TObject);
var
 i: integer;
 x2,y2: real;
begin
 k:=-0.1;
 with Image1.Canvas do
  begin
   Rectangle(0,0,1400,1400);
   for i:=1 to 65 do
    begin
     povoroty(z[i],x[i],k,x2,y2);
     z[i]:=x2;
     x[i]:=y2;
     proekcia(x[i],y[i],z[i],x1[i],y1[i]);
    end;
   robot(a);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 i: integer;
 x2,y2: real;
begin
 k:=0.1;
 with Image1.Canvas do
  begin
   Rectangle(0,0,1400,1400);
   for i:=1 to 65 do
    begin
     povoroty(x[i],y[i],k,x2,y2);
     x[i]:=x2;
     y[i]:=y2;
     proekcia(x[i],y[i],z[i],x1[i],y1[i]);
    end;
   robot(a);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 i: integer;
 x2,y2: real;
begin
 k:=-0.1;
 with Image1.Canvas do
  begin
   Rectangle(0,0,1400,1400);
   for i:=1 to 65 do
    begin
     povoroty(x[i],y[i],k,x2,y2);
     x[i]:=x2;
     y[i]:=y2;
     proekcia(x[i],y[i],z[i],x1[i],y1[i]);
    end;
   robot(a);
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
 i: integer;
 x2,y2: real;
begin
 k:=0.1;
 with Image1.Canvas do
  begin
   Rectangle(0,0,1400,1400);
   for i:=1 to 65 do
    begin
     povoroty(z[i],x[i],k,x2,y2);
     z[i]:=x2;
     x[i]:=y2;
     proekcia(x[i],y[i],z[i],x1[i],y1[i]);
    end;
   robot(a);
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 i: integer;
 x2,y2: real;
begin
 k:=0.1;
 with Image1.Canvas do
  begin
   Rectangle(0,0,1400,1400);
   for i:=1 to 65 do
    begin
     povoroty(y[i],z[i],k,x2,y2);
     y[i]:=x2;
     z[i]:=y2;
     proekcia(x[i],y[i],z[i],x1[i],y1[i]);
    end;
   robot(a);
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 i: integer;
 x2,y2: real;
begin
 k:=-0.1;
 with Image1.Canvas do
  begin
   Rectangle(0,0,1400,1400);
   for i:=1 to 60 do
    begin
     povoroty(y[i],z[i],k,x2,y2);
     y[i]:=x2;
     z[i]:=y2;
     proekcia(x[i],y[i],z[i],x1[i],y1[i]);
    end;
   robot(a);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 i: integer;
begin
 Timer2.Enabled:=false;
 Timer9.Enabled:=false;
 Timer3.Enabled:=false;
 Timer4.Enabled:=false;
 Timer5.Enabled:=false;
 Timer6.Enabled:=false;
 Timer7.Enabled:=false;
 Timer8.Enabled:=false;
 //
 Button2.Enabled:=true;
 Button3.Enabled:=true;
 Button4.Enabled:=true;
 Button5.Enabled:=true;
 Button6.Enabled:=true;
 Button7.Enabled:=true;
 Button8.Enabled:=true;
 //
 k:=0;
 with Image1.Canvas do
  begin
   Pen.Color:=clWhite;
   Rectangle(0,0,1400,1400);
  end;
 /////////////////////////// туловище
 x[1]:=0;
 y[1]:=0;
 z[1]:=0;

 x[2]:=0;
 y[2]:=0;
 z[2]:=100;

 x[3]:=0;
 y[3]:=150;
 z[3]:=100;

 x[4]:=0;
 y[4]:=150;
 z[4]:=0;
 //
 x[5]:=100;
 y[5]:=0;
 z[5]:=0;

 x[6]:=100;
 y[6]:=0;
 z[6]:=100;

 x[7]:=100;
 y[7]:=150;
 z[7]:=100;

 x[8]:=100;
 y[8]:=150;
 z[8]:=0;
 /////////////////////////// шея
 x[9]:=30;
 y[9]:=150;
 z[9]:=30;

 x[10]:=30;
 y[10]:=150;
 z[10]:=70;

 x[11]:=30;
 y[11]:=170;
 z[11]:=70;

 x[12]:=30;
 y[12]:=170;
 z[12]:=30;
 //
 x[13]:=70;
 y[13]:=150;
 z[13]:=30;

 x[14]:=70;
 y[14]:=150;
 z[14]:=70;

 x[15]:=70;
 y[15]:=170;
 z[15]:=70;

 x[16]:=70;
 y[16]:=170;
 z[16]:=30;
 /////////////////////////// голова
 x[17]:=10;
 y[17]:=170;
 z[17]:=0;

 x[18]:=10;
 y[18]:=170;
 z[18]:=100;

 x[19]:=10;
 y[19]:=210;
 z[19]:=100;

 x[20]:=10;
 y[20]:=210;
 z[20]:=0;
 //
 x[21]:=90;
 y[21]:=170;
 z[21]:=0;

 x[22]:=90;
 y[22]:=170;
 z[22]:=100;

 x[23]:=90;
 y[23]:=210;
 z[23]:=100;

 x[24]:=90;
 y[24]:=210;
 z[24]:=0;
 /////////////////////////// ноги
 // левая нога
 x[25]:=20;
 y[25]:=0;
 z[25]:=35;

 x[26]:=20;
 y[26]:=0;
 z[26]:=65;

 x[27]:=20;
 y[27]:=-130;
 z[27]:=65;

 x[28]:=20;
 y[28]:=-130;
 z[28]:=35;
 //
 x[29]:=40;
 y[29]:=0;
 z[29]:=35;

 x[30]:=40;
 y[30]:=0;
 z[30]:=65;

 x[31]:=40;
 y[31]:=-130;
 z[31]:=65;

 x[32]:=40;
 y[32]:=-130;
 z[32]:=35;
 // правая нога
 x[33]:=60;
 y[33]:=0;
 z[33]:=35;

 x[34]:=60;
 y[34]:=0;
 z[34]:=65;

 x[35]:=60;
 y[35]:=-130;
 z[35]:=65;

 x[36]:=60;
 y[36]:=-130;
 z[36]:=35;
 //
 x[37]:=80;
 y[37]:=0;
 z[37]:=35;

 x[38]:=80;
 y[38]:=0;
 z[38]:=65;

 x[39]:=80;
 y[39]:=-130;
 z[39]:=65;

 x[40]:=80;
 y[40]:=-130;
 z[40]:=35;
 /////////////////////////// руки
 // левая рука
 x[41]:=0;
 y[41]:=120;
 z[41]:=35;

 x[42]:=0;
 y[42]:=120;
 z[42]:=65;

 x[43]:=0;
 y[43]:=140;
 z[43]:=65;

 x[44]:=0;
 y[44]:=140;
 z[44]:=35;
 //
 x[45]:=-130;
 y[45]:=120;
 z[45]:=35;

 x[46]:=-130;
 y[46]:=120;
 z[46]:=65;

 x[47]:=-130;
 y[47]:=140;
 z[47]:=65;

 x[48]:=-130;
 y[48]:=140;
 z[48]:=35;
 // правая рука
 x[49]:=100;
 y[49]:=120;
 z[49]:=35;

 x[50]:=100;
 y[50]:=120;
 z[50]:=65;

 x[51]:=100;
 y[51]:=140;
 z[51]:=65;

 x[52]:=100;
 y[52]:=140;
 z[52]:=35;
 //
 x[53]:=230;
 y[53]:=120;
 z[53]:=35;

 x[54]:=230;
 y[54]:=120;
 z[54]:=65;

 x[55]:=230;
 y[55]:=140;
 z[55]:=65;

 x[56]:=230;
 y[56]:=140;
 z[56]:=35;
 /////////////////////////// рога
 // левый рог
 x[57]:=35;
 y[57]:=210;
 z[57]:=50;

 x[58]:=0;
 y[58]:=250;
 z[58]:=50;
 // правый рог
 x[59]:=65;
 y[59]:=210;
 z[59]:=50;

 x[60]:=100;
 y[60]:=250;
 z[60]:=50;
 //
 k:=0;
 for i:=1 to 60 do // построение проекции фигуры
  proekcia(x[i],y[i],z[i],x1[i],y1[i]);
 //
 robot(a);
end;

////////////////////////////////////////////////

procedure TForm1.Button8Click(Sender: TObject);
begin
 if Timer2.Enabled=true
 then
  begin
   Timer9.Enabled:=false;
   Timer3.Enabled:=false;
   Timer4.Enabled:=false;
   Timer5.Enabled:=false;
   Timer6.Enabled:=false;
   Timer7.Enabled:=false;
   Timer8.Enabled:=false;
  end
 else
  begin
   Timer2.Enabled:=true;
   Timer9.Enabled:=true;   
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
 ch: integer;
begin
 ch:=Random(6)+1;
 case ch of
  1:
   begin
    Timer3.Enabled:=true;
    Timer4.Enabled:=false;
    Timer5.Enabled:=false;
    Timer6.Enabled:=false;
    Timer7.Enabled:=false;
    Timer8.Enabled:=false;
   end;
  2:
   begin
    Timer3.Enabled:=false;
    Timer4.Enabled:=true;
    Timer5.Enabled:=false;
    Timer6.Enabled:=false;
    Timer7.Enabled:=false;
    Timer8.Enabled:=false;
   end;
  3:
   begin
    Timer3.Enabled:=false;
    Timer4.Enabled:=false;
    Timer5.Enabled:=true;
    Timer6.Enabled:=false;
    Timer7.Enabled:=false;
    Timer8.Enabled:=false;
   end;
  4:
   begin
    Timer3.Enabled:=false;
    Timer4.Enabled:=false;
    Timer5.Enabled:=false;
    Timer6.Enabled:=true;
    Timer7.Enabled:=false;
    Timer8.Enabled:=false;
   end;
  5:
   begin
    Timer3.Enabled:=false;
    Timer4.Enabled:=false;
    Timer5.Enabled:=false;
    Timer6.Enabled:=false;
    Timer7.Enabled:=true;
    Timer8.Enabled:=false;
   end;
  6:
   begin
    Timer3.Enabled:=false;
    Timer4.Enabled:=false;
    Timer5.Enabled:=false;
    Timer6.Enabled:=false;
    Timer7.Enabled:=false;
    Timer8.Enabled:=true;
   end;
 end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
 Button2.Click;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
 Button3.Click;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
 Button4.Click;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
 Button5.Click;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
 Button6.Click;
end;

procedure TForm1.Timer8Timer(Sender: TObject);
begin
 Button7.Click;
end;

procedure TForm1.Timer9Timer(Sender: TObject);
begin
 Button8.Click;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13
 then Button6.Click
 else Button7.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Image1.Canvas.Brush.Color:=clTeal;
 Image1.Canvas.Rectangle(0,0,1400,1400);
 Button1.Click;
end;

end.
