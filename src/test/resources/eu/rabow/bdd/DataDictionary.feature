Feature: Data Dictionary
  Scenario: Daten der Person werden erfolgreich validiert
    Given eine Person wird angelegt
    When der Name "khkjdshfkjh" eingetragen wird
    Then wird der Name "khkjdshfkjh" gespeichert

  Scenario: Daten der Person enthalten Validierungsfehler
    Given eine Person wird angelegt
    When der Name "" eingetragen wird
    Then wird die Meldung "Bitte gib uns deinen Namen" ausgegeben

  Scenario: Daten der Person werden erfolgreich validiert
    Given eine Person wird angelegt
    When das Geburtsdatum "30.06.1970" eingetragen wird
    Then wird das Geburtsdatum "30.06.1970" gespeichert

  Scenario: Daten der Person enthalten Validierungsfehler
    Given eine Person wird angelegt
    When das Geburtsdatum "30.06.1070" eingetragen wird
    Then wird die Meldung "Das scheint nicht richtig zu sein" ausgegeben
    
    Scenario: Daten der Person enthalten Validierungsfehler
      Given eine Person wird angelegt
      When das Geburtsdatum "30.06.2970" eingetragen wird
      Then wird die Meldung "Das scheint nicht richtig zu sein" ausgegeben

  Scenario: Daten der Person enthalten Validierungsfehler
    Given eine Person wird angelegt
    When das Geburtsdatum nicht eingetragen wird
    Then wird die Meldung "Bitte gib uns dein Geburtsdatum" ausgegeben