unit belajar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, jpeg, pngimage;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Image1: TImage;
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

var
baris,kolom:integer;
  I: Integer;

begin
//       baris := 9;
//       kolom := 4;

       baris:=Image1.Picture.Bitmap.Height;
       baris:=Image1.Picture.Bitmap.Width;

       StringGrid1.RowCount:=baris;
       StringGrid1.ColCount:=kolom;

       for kolom := 0 to kolom-1 do
       begin
         for baris := 0 to baris-1 do
             begin
               StringGrid1.Cells[kolom,baris]:=
               IntToStr(kolom)+ ',' +IntToStr(baris);
             end;
       end;


end;

end.
