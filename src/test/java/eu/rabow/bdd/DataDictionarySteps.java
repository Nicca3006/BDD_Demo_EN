package eu.rabow.bdd;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import javax.swing.text.DateFormatter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import static eu.rabow.bdd.Validator.validiere;
import static org.junit.Assert.*;

public class DataDictionarySteps {
    Person person;

    @Given("eine Person wird angelegt")
    public void einePersonWirdAngelegt() {
        person = new Person();
    }

    @When("der Name {string} eingetragen wird")
    public void derNameEingetragenWird(String name) {
        person.setName(name);
    }

    @Then("wird der Name {string} gespeichert")
    public void wirdDerNameGespeichert(String name) {
        assertEquals(name, person.getName());
    }

    @Then("wird die Meldung {string} ausgegeben")
    public void wirdDieMeldungAusgegeben(String fehlermeldung) {
        assertTrue (validiere(person).contains(fehlermeldung));
    }

    @When("das Geburtsdatum {string} eingetragen wird")
    public void dasGeburtsdatumEingetragenWird(String geburtsdatum) {
        person.setGeburtsdatum(LocalDate.parse(geburtsdatum, DateTimeFormatter.ofPattern("dd.MM.yyyy")));
    }

    @Then("wird das Geburtsdatum {string} gespeichert")
    public void wirdDasGeburtsdatumGespeichert(String geburtsdatum) {
        assertEquals(LocalDate.parse(geburtsdatum, DateTimeFormatter.ofPattern("dd.MM.yyyy")),person.getGeburtsdatum());
    }

    @When("das Geburtsdatum nicht eingetragen wird")
    public void dasGeburtsdatumNichtEingetragenWird() throws PendingException {
        throw new PendingException();
        //TODO implementieren
    }
}
