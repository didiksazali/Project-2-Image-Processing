program ProjectRotation;

uses
  Forms,
  U_Rotasi in 'U_Rotasi.pas' {F_Rotasi},
  U_TampilCitraRotasi in 'U_TampilCitraRotasi.pas' {F_TampilCitra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_TampilCitra, F_TampilCitra);
  Application.Run;
end.
