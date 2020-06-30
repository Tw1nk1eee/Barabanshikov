unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button2Click(Sender: TObject);
var a,b,d:real;
begin
Edit1.Visible:=false;
Edit2.Visible:=true;
Edit3.Visible:=false;
a:= StrToFloat(Edit1.Text);
b:= StrToFloat(Edit2.Text);
d:= a-b;
Edit3.text:=FloatToStr(d);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.Button4Click(Sender: TObject);
begin

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit1.Visible:=false;
Edit2.Visible:=false;
Edit3.Visible:=true;
end;

end.

