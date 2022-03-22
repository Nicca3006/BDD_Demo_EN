Feature: Formularart 1

  @Application
  Scenario: Ausfüllen das Formular 1 für eine Person
    Given Ein Benutzer öffnet Formular-Seite
    Then Ausfüllen die Namens-Felder der Person
    And Ausfüllen die Namens2-Felder der Person
    And Ausfüllen die Vertretung-Felder
    And Ausfüllen die Firma-Felder
    And Ausfüllen die Angegestellte-Felder
    And Ausfüllen die Zusammenfassung-Felder
    And Ausfüllen die Payment-Felder

  @Platform
  Scenario: Ausfüllen das Formular 1 für eine Person unter Plattform
    Given Ein Benutzer öffnet Plattform-Seite
    Then Loggt sich in die Plattform ein
    And Pruefen Login-Status
    Given Ein Benutzer öffnet Formular-Seite
    Then Ausfüllen die Namens-Felder der Person
    And Ausfüllen die Namens2-Felder der Person
    And Ausfüllen die Vertretung-Felder
    And Ausfüllen die Firma-Felder
    And Ausfüllen die Angegestellte-Felder
    And Ausfüllen die Zusammenfassung-Felder
    And Ausfüllen die Payment-Felder
