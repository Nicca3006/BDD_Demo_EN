Feature: Als nutzende Person möchte ich meine Daten erfassen, um diese später übermitteln zu können.
  Background:
    Given eine Person wird angelegt

  Scenario: Name der Person wird erfolgreich eingetragen
    When der Name "Rabow" eingetragen wird
    Then wird der Name "Rabow" gespeichert

  Scenario: Name der Person wird nicht eingetragen erzeugt Fehlermeldung
    When der Name nicht eingetragen wird
    Then wird die Meldung "Bitte geben Sie Ihren Namen an." ausgegeben

  Scenario: Geburtsdatum der Person werden erfolgreich eingetragen
    When das Geburtsdatum "30.06.1970" eingetragen wird
    Then wird das Geburtsdatum "30.06.1970" gespeichert

  Scenario: Zu frühes Geburtsdatum der Person erzeugt eine Fehlermeldung
    When das Geburtsdatum "30.06.1470" eingetragen wird
    Then wird die Meldung "Das scheint nicht richtig zu sein" ausgegeben
    
    Scenario: Zu spätes Geburtsdatum der Person erzeugt eine Fehlermeldung
      When das Geburtsdatum "30.06.4970" eingetragen wird
      Then wird die Meldung "Das scheint nicht richtig zu sein" ausgegeben

  @nichtTesten
  Scenario: Geburtsdatum der Person wird nicht eingetragen mit Fehlermeldung
    Given eine Person wird angelegt
    When das Geburtsdatum nicht eingetragen wird
    Then wird die Meldung "Bitte geben Sie Ihr Geburtsdatum an." ausgegeben