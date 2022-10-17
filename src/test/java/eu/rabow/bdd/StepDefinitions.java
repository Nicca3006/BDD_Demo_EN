package eu.rabow.bdd;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.de.*;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.math.RandomUtils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Random;

import static org.junit.Assert.*;

public class StepDefinitions {

    Person person;


    @Then("wird die Meldung {string} ausgegeben")
    public void wirdDieMeldungAusgegeben(String string) {
        assertTrue(Validator.validiere(person).contains(string));
    }
    @When("der Name mehr als {int} Zeichen hat")
    public void derNameMehrAlsZeichenHat(Integer int1) {
        person.setName(RandomStringUtils.random(int1 + 1));
        Validator.validiere(person);
    }
    @When("Name, Vorname, Geburtsdatum eingegeben werden")
    public void nameVornameGeburtsdatumEingegebenWerden() {
        person.setName(RandomStringUtils.random(50));
        person.setVorname(RandomStringUtils.random(20));
        person.setGeburtsdatum(LocalDateTime.now().toString());
    }

    @Then("wird eine neue Kundennummer für die Person vergeben")
    public void wirdEineNeueKundennummerFürDiePersonVergeben() {
        if (person.dataIsValid){
            person.setKundennummer(RandomStringUtils.random(8));
            assertFalse(person.getKundennummer().isEmpty());
        };
    }

    @When("ein Datum vor {int} oder nach {int} eingetragen wird")
    public void einDatumVorOderNachEingetragenWird(Integer int1, Integer int2) {
//        person.setGeburtsdatum(LocalDateTime.now().plusYears(60).toString());
        person.setGeburtsdatum("30.06.1830");
        Validator.validiere(person);
    }

    @Wenn("das Geburtsdatum {string} eingetragen wird")
    public void dasGeburtsdatumWertEingetragenWird(String string) {
        person.setGeburtsdatum(string);
    }
}