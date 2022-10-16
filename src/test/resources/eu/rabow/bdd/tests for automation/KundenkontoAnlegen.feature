Feature: Kundenkonto anlegen
  Als nutzende Person möchte ich meine Daten einmalig erfassen, um diese später immer wieder nutzen zu können.
  Wir erwarten hier mindestens die Felder Name, Vorname, Geburtsdatum. Optional gibt es auch noch die Adresse. Gibt
  die Person ein Pflichtfeld nicht an, wird kein neues Konto mit Kundennummer angelegt und die Person erhält eine
  passende Fehlermeldung.

  Background:
    Given eine neues Kundenkonto wird angelegt
    
  Scenario: Person gibt keinen Namen an
    When der Name leer ist
    Then wird die Meldung "Bitte geben Sie Ihren Namen an." ausgegeben
    
  Scenario: Person gibt kein Geburtsdatum an
    When das Geburtsdatum leer ist
    Then wird die Meldung "Bitte geben Sie Ihr Geburtsdatum an." ausgegeben

  Scenario: Kundennummer wird vergeben
    When Name, Vorname, Geburtsdatum eingegeben werden
    Then wird eine neue Kundennummer für die Person vergeben

  Scenario: Name hat mehr als 120 Zeichen
    When der Name mehr als 120 Zeichen hat
    Then wird die Meldung "Bitte geben Sie einen korrekten Namen an." ausgegeben

  Scenario: Geburtsdatum liegt zwischen 1850 und 2080
    When ein Datum vor 1850 oder nach 2080 eingetragen wird
    Then wird die Meldung "Bitte überprüfen Sie Ihr Geburtsdatum." ausgegeben
