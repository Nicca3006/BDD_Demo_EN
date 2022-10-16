Feature: Newsletter bestellen
  Als nutzende Person möchte ich einen Newsletter bestellen, um immer die aktuellsten Informationen zu erhalten.
  Hier kann jetzt noch ganz viel Information stehen...

  Scenario: Person füllt alle Pflichtfelder aus
    Given die Person hat das Bestellformular ausgefüllt
    When die Person das Formular einreicht
    Then erhält die Person eine Bestätigungs-E-Mail

  Scenario: Person gibt keine Mail-Adresse an
    Given die Person hat keine Mail im Bestellformular angegeben
    When die Person das Formular einreicht
    Then kommt ein Hinweis auf die fehlende Mailadresse
