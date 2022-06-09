package eu.rabow.bdd;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.*;
import io.cucumber.java.de.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import static eu.rabow.bdd.Validator.validiere;
import static org.junit.Assert.*;

public class DatenfelderSteps {
    Person person;

    @Angenommen("eine Person wird angelegt")
    public void einePersonWirdAngelegt() {
        throw new PendingException();
    }

    @Angenommen("eine Person gibt ihr Geburtsdatum ein")
    public void einePersonGibtIhrGeburtsdatumEin() {
//        person.setGeburtsdatum();
        throw new PendingException();
    }
    @Angenommen("die Person gibt ihren Namen ein")
    public void die_person_gibt_ihren_namen_ein() {
        // person.setName();
        throw new io.cucumber.java.PendingException();
    }
    @Wenn("der Name nicht mehr als {int} Zeichen hat")
    public void der_name_nicht_mehr_als_zeichen_hat(Integer int1) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Dann("wird der Name gespeichert")
    public void wird_der_name_gespeichert() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Wenn("der Tag der Geburt unbekannt ist")
    public void der_tag_der_geburt_unbekannt_ist() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Dann("kann der Tag leer bleiben")
    public void kann_der_tag_leer_bleiben() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Dann("wird das Geburtsdatum gespeichert")
    public void wird_das_geburtsdatum_gespeichert() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Wenn("das Datum nach {int} liegt")
    public void das_datum_nach_liegt(Integer int1) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Wenn("das Datum vor {int} liegt")
    public void das_datum_vor_liegt(Integer int1) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Wenn("das Datum vor dem heutigen Tag liegt")
    public void das_datum_vor_dem_heutigen_tag_liegt() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Wenn("das Geburtsdatum einen Validierungsfehler enthält")
    public void das_geburtsdatum_einen_validierungsfehler_enthaelt() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Wenn("der Name nicht eingetragen wird")
    public void derNameNichtEingetragenWird() {
        // Write code here that turns the phrase above into concrete actions
        person.setName("");
    }

    @Dann("wird die Meldung {string} ausgegeben")
    public void wirdDieMeldungAusgegeben(String fehlermeldung) {
        assertTrue (validiere(person).contains(fehlermeldung));
    }

    @Wenn("das Geburtsdatum nicht eingetragen wird")
    public void dasGeburtsdatumNichtEingetragenWird() {
        person.setGeburtsdatum("");
    }
}
