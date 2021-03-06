unit U_TampilCitraRotasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, ExtCtrls;

type
  TF_TampilCitra = class(TForm)
    Panel1: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    btnAmbilCitra: TButton;
    btnKonversi: TButton;
    btnRotasi: TButton;
    procedure btnRotasiClick(Sender: TObject);
  private
    { Private declarations }

  Procedure rotasi;

  public
    { Public declarations }
  end;

var
  F_TampilCitra: TF_TampilCitra;

implementation

uses U_Rotasi;

{$R *.dfm}

procedure TF_TampilCitra.btnRotasiClick(Sender: TObject);
begin
Application.CreateForm(TF_TampilCitra,F_Rotasi);
F_Rotasi.Image1.Picture:=F_Rotasi.Image1.Picture;
F_Rotasi.Top:=F_TampilCitra.Top;
F_Rotasi.Left:=F_TampilCitra.Left+F_TampilCitra.Width;
F_Rotasi.Caption:='Citra Hasil Rotasi';
rotasi;
F_Rotasi.ClientHeight:=F_Rotasi.Image1.Height;
F_Rotasi.ClientWidth:=F_Rotasi.Image1.Width;
end;

procedure TF_TampilCitra.rotasi;
var
  x,y,x1,y1,w,h,w1,h1:integer;
  PC,PH:PByteArray;
  Ri,Gi,Bi,Ko,Ro,Bo,Go:array of array of byte;

  begin
       w:=F_Rotasi.Image1.Picture.Width;
       h:=F_Rotasi.Image1.Picture.Height;
       w1:=h;
       h1:=w;
       F_Rotasi.Image1.Picture.Bitmap.Width:=w1;
       F_Rotasi.Image1.Picture.Bitmap.Width:=h1;

       SetLength(Ri,w,h);
       SetLength(Gi,w,h);
       SetLength(Bi,w,h);
       SetLength(Ro,w,h);
       SetLength(Go,w,h);
       SetLength(Bo,w,h);

       for Y := 0 to H - 1 do
         begin
           PC:=F_Rotasi.Image1.Picture.Bitmap.ScanLine[y];
           for x := 0 to w - 1 do
             begin
               Bi[x,y]:=PC[3*x];
               Gi[x,y]:=PC[3*x+1];
               Ri[x,y]:=PC[3*x+2];

             end;
         end;

         for x1 := 0 to w1 - 1 do
         begin
           for y1 := 0 to h1 - 1 do
             begin
               x:=y1;
               y:=(w1-1)-x1;
               Ro[x1,y1]:=Ri[x,y];
               Go[x1,y1]:=Ri[x,y];
               Bo[x1,y1]:=Ri[x,y];

             end;
         end;

         for y1 := 0 to h1 - 1 do
         begin
          PH:=F_Rotasi.Image1.Picture.Bitmap.ScanLine[y1];
           for x1 := 0 to w1 - 1 do
             begin
               PH[3*x1]:=Bo[x1,y1];
               PH[3*x1+1]:=Go[x1,y1];
               PH[3*x1+2]:=Ro[x1,y1];

             end;
         end;

         Ri:=nil;
         Gi:=nil;
         Bi:=nil;
         Ro:=nil;
         Go:=nil;
         Bo:=nil;

  end;

end.
