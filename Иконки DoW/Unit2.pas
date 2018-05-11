unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Lpath1: TLabel;
    LPath2: TLabel;
    Edit2: TEdit;
    CBdis: TCheckBox;
    Edit3: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}


procedure TForm2.FormCreate(Sender: TObject);
begin
Form2.Edit1.Text:=Ini.ReadString('Paths','Backgrounds','C:\Backgrounds');
Form2.Edit2.Text:=Ini.ReadString('Paths','Borders','C:\Borders');
Form2.CBDis.Checked:=Ini.ReadBool('Dis','enabled',false);
Form2.Edit3.Text:=Ini.ReadString('Dis','prefix','dis');
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
Ini.WriteString('Paths','Backgrounds',Edit1.Text);
Ini.WriteString('Paths','Borders',Edit2.Text);
Ini.WriteBool('Dis','enabled',CBDis.Checked);
Ini.WriteString('Dis','prefix',Edit3.Text);
end;

end.
