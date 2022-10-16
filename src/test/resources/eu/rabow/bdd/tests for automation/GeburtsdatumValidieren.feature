#language:de
@Validierung
  Funktionalität: Äquivalenzklassentests für das Geburtsdatum

  Szenariogrundriss:
  Angenommen eine neues Kundenkonto wird angelegt
  Wenn das Geburtsdatum <Wert> eingetragen wird
  Dann wird die Meldung <Meldung> ausgegeben
  Beispiele:
   | Wert | Meldung |
   |"31.12.1849"  | "Bitte überprüfen Sie Ihr Geburtsdatum." |
   | "01.01.2081"  | "Bitte überprüfen Sie Ihr Geburtsdatum." |
   | "15.12.2023" | "Bitte überprüfen Sie Ihr Geburtsdatum." |
   |"00.00.0000"  |"Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "12345678901" |"Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "ABC4567EFG" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "01.--.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "--.01.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "00.12.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
   | "32.01.2000" | "Bitte geben Sie das Datum im Format tt.mm.yyyy an." |
