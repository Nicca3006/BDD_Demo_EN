Feature: Detaillierte Tests zum Data Dictionary
#  Background:
#    Given eine Person wird angelegt
  Scenario: Daten der Person werden erfolgreich eingetragen
    Given eine Person wird angelegt
    When der Name "Rabow" eingetragen wird
    Then wird der Name "Rabow" gespeichert

  Scenario: Daten der Person erzeugen eine Fehlermeldung
    Given eine Person wird angelegt
    When der Name "" eingetragen wird
    Then wird die Meldung "Bitte geben Sie Ihren Namen an." ausgegeben

  Scenario: Daten der Person werden erfolgreich eingetragen
    Given eine Person wird angelegt
    When das Geburtsdatum "30.06.1970" eingetragen wird
    Then wird das Geburtsdatum "30.06.1970" gespeichert

  Scenario: Daten der Person erzeugen eine Fehlermeldung
    Given eine Person wird angelegt
    When das Geburtsdatum "30.06.1470" eingetragen wird
    Then wird die Meldung "Das scheint nicht richtig zu sein" ausgegeben
    
    Scenario: Daten der Person erzeugen eine Fehlermeldung
      Given eine Person wird angelegt
      When das Geburtsdatum "30.06.4970" eingetragen wird
      Then wird die Meldung "Das scheint nicht richtig zu sein" ausgegeben

      @nichtTesten
  Scenario: Daten der Person erzeugen eine Fehlermeldung
    Given eine Person wird angelegt
    When das Geburtsdatum nicht eingetragen wird
    Then wird die Meldung "Bitte geben Sie Ihr Geburtsdatum an." ausgegeben