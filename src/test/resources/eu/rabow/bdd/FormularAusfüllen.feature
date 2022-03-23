Feature: Eine Person möchte unser Formular ausfüllen.
  Hier kann jetzt noch ganz viel Information stehen...

  Scenario: Ausfüllen ohne Übernahme der persönlichen Daten aus dem Bestand
    Given die Person hat ein Formular ausgefüllt
    When die Person das Formular einreicht
    Then erhält die Person eine Bestätigungs-E-Mail

  Scenario: Keine Telefonnummer bei der Person angegeben
    Given die Person erfasst die persönlichen Angaben
    And die Person gibt keine Telefonnummer an
    When die Person ihre Angaben speichert
    Then kommt ein Hinweis auf die fehlende Nummer

 @nichtTesten
Scenario Outline: Person waehlt die Vorgangsart aus
  Given die Person ist auf der Seite <VorgangsartAuswaehlen>
  When die Person StartenEinesVorgangs waehlt
  And PersoenlicheDatenInAntragUebernehmen waehlt
  And den Button Weiter anklickt
  Then die Person ist auf der Seite VorgangErstellenPerson
  Examples:
    |VorgangsartAusWaehlen
    |Formular1
    |Formular2


