@Validierung
Feature: Hier werden Äquivalenzklassentests für das Geburtsdatum durchgeführt
Scenario Outline:
  Given eine Person wird angelegt
  When das Geburtsdatum <Wert> eingetragen wird
  Then wird die Meldung <Meldung> ausgegeben
  Examples:
   | Wert | Meldung |
   |"31.12.1849"  | "Das scheint nicht richtig zu sein" |
   | "01.01.2081"  | "Das scheint nicht richtig zu sein" |
   | "15.12.2023" | "Das scheint nicht richtig zu sein" |
   |"00.00.0000"  |"Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "12345678901" |"Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "ABC4567EFG" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "01.--.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "--.01.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "00.12.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "32.01.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
