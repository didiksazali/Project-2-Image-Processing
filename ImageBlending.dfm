object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'F_ImageBlending'
  ClientHeight = 356
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -8
    Width = 785
    Height = 81
    TabOrder = 0
    object Label1: TLabel
      Left = 235
      Top = 45
      Width = 15
      Height = 13
      Caption = 'wA'
    end
    object Label2: TLabel
      Left = 360
      Top = 45
      Width = 14
      Height = 13
      Caption = 'wB'
    end
    object Button1: TButton
      Left = 40
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Ambil Citra 1'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 136
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Ambil Citra 2'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 496
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Blending'
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 256
      Top = 42
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 380
      Top = 42
      Width = 81
      Height = 21
      TabOrder = 4
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 688
    Top = 24
  end
end
