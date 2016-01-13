unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TEtat = (
            Affichage, Reglage,
            Affichage_Date, Affichage_Heure, Affichage_Minute,
            Affichage_Jour, Affichage_Mois, Affichage_Annee
          );

  TSymbole = (Bouton_A, Bouton_B, Bouton_C, Temp);

  THeure = 0..23;
  TMinute = 0..59;
  TJour = 1..30;
  TMois = 1..12;
  TAnnee = 0..9999;
  
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Shape1: TShape;
    Panel2: TPanel;
    Panel_Left: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel_Right: TPanel;
    Panel_Annee: TPanel;
    Timer1: TTimer;
    Label_Points: TLabel;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    Label_Etat: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private

    Etat : TEtat;

    Heure : THeure;
    Minute : TMinute;
    Jour : TJour;
    Mois : TMois;
    Annee : TAnnee;

    Limiere: boolean;

    procedure Proc_Aff_Minute;
    procedure Proc_Aff_Mois;
    procedure Proc_Aff_Jour;
    procedure Proc_Aff_Annee;
    procedure Proc_Affichage;
    procedure Proc_Aff_Date;
    procedure Proc_Reglage;
    procedure Proc_Aff_Heure;
    procedure Proc_Limiere;
    procedure Transistion(Symbole : TSymbole; Etat : TEtat);
  end;

var
  Form1: TForm1;

implementation

uses DateUtils;

{$R *.dfm}

procedure TForm1.Proc_Aff_Heure;
begin
  if Etat = Affichage_Heure then
    begin
      if Heure < 23 then
        Heure := Heure + 1
      else
        Heure := 0;
    end
  else
    Etat := Affichage_Heure;
  Panel_Left.Caption := IntToStr(Heure);
  Panel_Right.Caption := '';
  Label_Etat.Caption := 'Affichage Heure';
end;

procedure TForm1.Proc_Aff_Minute;
begin
  if Etat = Affichage_Minute then
    begin
      if Minute < 59 then
        Minute := Minute + 1
      else
        Minute := 0;
    end
  else
    Etat := Affichage_Minute;
  Panel_Left.Caption := '';
  Panel_Right.Caption := IntToStr(Minute);
  Label_Etat.Caption := 'Affichage Minute';
end;

procedure TForm1.Proc_Aff_Mois;
begin
  if Etat = Affichage_Mois then
    begin
      if Mois < 12 then
        Mois := Mois + 1
      else
        Mois := 1;
    end
  else
    Etat := Affichage_Mois;
  Panel_Left.Caption := IntToStr(Mois);
  Panel_Right.Caption := '';
  Label_Etat.Caption := 'Affichage Mois';
end;

procedure TForm1.Proc_Aff_Jour;
begin
  if Etat = Affichage_Jour then
    begin
      if Jour < 30 then
        Jour := Jour + 1
      else
        Jour := 1;
    end
  else
    Etat := Affichage_Jour;
  Panel_Left.Caption := '';
  Panel_Right.Caption := IntToStr(Jour);
  Label_Points.Visible := false;
  Label_Etat.Caption := 'Affichage Jour';
end;

procedure TForm1.Proc_Aff_Annee;
begin
  if Etat = Affichage_Annee then
    begin
      if Annee < 9999 then
        Annee := Annee + 1
      else
        Annee := 1;
    end
  else
    Etat := Affichage_Annee;
  Panel_Left.Caption := '';
  Panel_Right.Caption := '';
  Panel_Annee.Caption := IntToStr(Annee);
  Label_Etat.Caption := 'Affichage Année';
end;

procedure TForm1.Proc_Affichage;
begin
  Etat := Affichage;
  Panel_left.Caption := IntToStr(Heure);
  Panel_Right.Caption := IntToStr(Minute);
  Panel_Annee.Caption := '' ;
  Label_Points.Visible := true;
  Label_Etat.Caption :='Affichage';
  Timer1.Enabled := false;
end;

procedure TForm1.Proc_Reglage;
begin
  Etat := Reglage;
  Panel_left.Caption := IntToStr(Heure);
  Panel_Right.Caption := IntToStr(Minute);
  Panel_Annee.Caption := '';
  Label_Etat.Caption :=  'Réglage';
  Label_Points.Visible := true;    
  Timer1.Interval := 500;
  Timer1.Enabled := true;
end;

procedure TForm1.Proc_Aff_Date;
begin
  Etat := Affichage_Date;
  Panel_left.Caption := IntToStr(Mois);
  Panel_Right.Caption := IntToStr(Jour);
  Panel_Annee.Caption := IntToStr(Annee);
  Label_Etat.Caption :=  'Affichage Date';
  Label_Points.Visible := false;
  Timer1.Interval := 2000;
  Timer1.Enabled := true;
end;

procedure TForm1.Proc_Limiere;
begin
  if Limiere = true then
    begin
      Panel_Left.Color := clBlack;
      Panel_Right.Color := clBlack;
      Panel_Annee.Color := clBlack;
      Limiere := false;
    end
  else
    begin
      Limiere := true;
      Panel_Left.Color := clgreen;
      Panel_Right.Color := clgreen;
      Panel_Annee.Color := clgreen;
    end;
end;

procedure TForm1.Transistion(Symbole : TSymbole; Etat : TEtat);
begin
  case Symbole of
    Bouton_A:
      case Etat of
        Affichage: Proc_Reglage;
        Reglage: Proc_Affichage;
      end;
    Bouton_B:
      case Etat of
        Affichage: Proc_Aff_Date;
        Reglage: Proc_Aff_Heure;
        Affichage_Heure : Proc_Aff_Minute;
        Affichage_Minute : Proc_Aff_Jour;
        Affichage_Jour : Proc_Aff_Mois;
        Affichage_Mois : Proc_Aff_Annee;
        Affichage_Annee : Proc_Reglage;
      end;
    Bouton_C:
      case Etat of
        Affichage_Heure : Proc_Aff_Heure;
        Affichage_Minute : Proc_Aff_Minute;
        Affichage_Jour : Proc_Aff_Jour;
        Affichage_Mois : Proc_Aff_Mois;
        Affichage_Annee : Proc_Aff_Annee;
      end;
    Temp:
      case Etat of
        Affichage_Date : Proc_Affichage;
      end;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Transistion(Bouton_A, Etat);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Transistion(Bouton_B, Etat);
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Transistion(Bouton_C, Etat);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Heure := HourOf(Now);
  Minute := MinuteOf(Now);
  Jour := DayOf(Now);
  Mois := MonthOf(Now);
  Annee := YearOf(Now);
  Proc_Affichage;
  Etat := Affichage;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  case Etat of
    Affichage_Date: Transistion(Temp, Affichage_Date);
    Reglage:
      begin
        if Panel_Left.Caption = '' then
            begin
              Panel_Left.Caption := IntToStr(Heure);
              Panel_Right.Caption := IntToStr(Minute);
            end
        else if Panel_Left.Caption <> '' then
            begin
              Panel_Left.Caption := '';
              Panel_Right.Caption := '';
            end;
      end;
  end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  Proc_Limiere;
end;

end.
