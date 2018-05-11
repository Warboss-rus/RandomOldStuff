unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Math;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    Button1: TButton;
    CBIter: TComboBox;
    Label1: TLabel;
    EZoom: TEdit;
    Label2: TLabel;
    TBZoom: TTrackBar;
    Label3: TLabel;
    CBDegree: TComboBox;
    Label4: TLabel;
    EShiftX: TEdit;
    EShiftY: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure TBZoomChange(Sender: TObject);
    procedure EZoomKeyPress(Sender: TObject; var Key: Char);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Dx,Dy:INTEGER;

implementation

{$R *.dfm}

PROCEDURE TForm1.Button1Click(Sender: TObject);
VAR
  X,Y,Iter,Lim,Zoom: INTEGER;
  Xn,Yn,P,Q,Temp: EXTENDED;
BEGIN
  Zoom := STRTOINT(EZoom.Text);
  Lim := STRTOINT(CBIter.Text);
  Dx := STRTOINT(EShiftX.Text);
  Dy := STRTOINT(EShiftY.Text);
  FOR X := - ROUND(PaintBox1.Width / 2) + Dx TO ROUND(PaintBox1.Width / 2) + Dx DO
    FOR y := - ROUND(PaintBox1.Height / 2) + Dy TO ROUND(PaintBox1.Height / 2) + Dy DO
      BEGIN
        Xn := 0;
        Yn := 0;
        P := x / Zoom - 0.5;
        Q := y / Zoom;
        Iter := 0;
        REPEAT
          CASE CBDegree.ItemIndex OF
            0:
              BEGIN
                Temp := Xn*Xn-Yn*Yn+P;
                Yn := 2*Xn*Yn+Q
              END;
            1:
              BEGIN
                Temp := Xn*Xn*Xn-3*Xn*Yn*Yn+P;
                Yn := 3*Xn*Xn*Yn-Yn*Yn*Yn+Q
              END;
            2:
              BEGIN
                Temp := SQR(Xn*Xn-Yn*Yn)-4*Xn*Xn*Yn*Yn+P;
                Yn := 4*(Xn*Xn-Yn*Yn)*Xn*Yn+Q
              END;
            3:
              BEGIN
                Temp := SQR(Xn*Xn-Yn*Yn)*Xn-4*Xn*Xn*Xn*Yn*Yn-4*(Xn*Xn-Yn*Yn)*Xn*Yn*Yn+P;
                Yn := 4*(Xn*Xn-Yn*Yn)*Xn*Xn*Yn+SQR(Xn*Xn-Yn*Yn)*Yn-4*+Xn*Xn*Yn*Yn*Yn+Q
              END;
            4:
              BEGIN
                Temp := Xn*Xn*Xn*Xn*Xn*Xn-15*Xn*Xn*Xn*Xn*Yn*Yn+15*Xn*Xn*Yn*Yn*Yn*Yn-Yn*Yn*Yn*Yn*Yn*Yn+P;
                Yn := 2*(3*Xn*Xn*Yn-Yn*Yn*Yn)*(Xn*Xn*Xn-3*Xn*Yn*Yn)+Q
              END;
            5:
              BEGIN
                Temp := Xn*(Xn*Xn*Xn*Xn*Xn*Xn-15*Xn*Xn*Xn*Xn*Yn*Yn+15*Xn*Xn*Yn*Yn*Yn*Yn-Yn*Yn*Yn*Yn*Yn*Yn)-2*Yn*(3*Xn*Xn*Yn-Yn*Yn*Yn)*(Xn*Xn*Xn-3*Xn*Yn*Yn)+P;
                Yn := 2*Xn*(3*Xn*Xn*Yn-Yn*Yn*Yn)*(Xn*Xn*Xn-3*Xn*Yn*Yn)+(Xn*Xn*Xn*Xn*Xn*Xn-15*Xn*Xn*Xn*Xn*Yn*Yn+15*Xn*Xn*Yn*Yn*Yn*Yn-Yn*Yn*Yn*Yn*Yn*Yn)*Yn+Q
              END;
            6:
              BEGIN
                Temp := sqr(sqr(Xn*Xn-Yn*Yn)-4*Xn*Xn*Yn*Yn)-16*Xn*Xn*Yn*Yn*sqr(Xn*Xn-Yn*Yn)+P;
                Yn := 8*(Xn*Xn-Yn*Yn)*Xn*Yn*(sqr(Xn*Xn-Yn*Yn)-4*Xn*Xn*Yn*Yn)+Q
              END;
          END;
          Xn:= Temp;
          Iter := Iter + 1;
        UNTIL (Iter = Lim) OR (Xn*Xn + Yn*Yn > 4);
        PaintBox1.Canvas.Pixels[X+ROUND(PaintBox1.Width/2)-Dx,Y+ROUND(PaintBox1.Height/2)-Dy]:=rgb(Iter*round(256/Lim),Iter*round(256/Lim),Iter*round(256/Lim))
      END
END;

PROCEDURE TForm1.EZoomKeyPress(Sender: TObject; var Key: Char);
BEGIN
CASE KEY OF
  '0'..'9','-',#8:;
  #13:Button1.Click;
ELSE
  KEY:=#0;
END;
END;

PROCEDURE TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
BEGIN
  DX := x;
  DY := y;
END;

PROCEDURE TForm1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
BEGIN
  EShiftX.Text := INTTOSTR(DX-X);
  EShiftY.TEXT := INTTOSTR(DY-Y)
END;

PROCEDURE TForm1.TBZoomChange(Sender: TObject);
BEGIN
  EZoom.Text := INTTOSTR(TBZoom.Position);
END;

END.
