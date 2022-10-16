Feature: Kundenkonto anlegen
  Als nutzende Person möchte ich meine Daten einmalig erfassen, um diese später immer wieder nutzen zu können.

  Background:
    Given eine neues Kundenkonto wird angelegt

  Scenario: Kundennummer wird vergeben
    When Name, Vorname, Geburtsdatum eingegeben werden
    Then wird eine neue Kundennummer für die Person vergeben

  Scenario: Name hat mehr als 120 Zeichen
    When der Name mehr als 120 Zeichen hat
    Then wird die Meldung "Bitte geben Sie einen korrekten Namen an." ausgegeben

  Scenario: Geburtsdatum liegt zwischen 1850 und 2080
    When ein Datum vor 1850 oder nach 2080 eingetragen wird
    Then wird die Meldung "Bitte überprüfen Sie Ihr Geburtsdatum." ausgegeben
