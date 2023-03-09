package eu.rabow.bdd;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.math.RandomUtils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Random;

import static org.junit.Assert.*;

public class StepDefinitions {

    Person person;

    @Given("a new personal account is created")
    public void aNewPersonalAccountIsCreated() {
        person = new Person();
    }

    @When("name is empty")
    public void nameIsEmpty() {
        person.setName("");
    }
    @When("birth date is empty")
    public void birthDateIsEmpty() {
        person.setBirthday("");
    }
    @Then("the message {string} is shown")
    public void theMessageIsShown(String string) {
        assertTrue(Validator.validate(person).contains(string));
    }
    @When("name has more than {int} characters")
    public void nameHasMoreThanCharacters(Integer int1) {
        person.setName(RandomStringUtils.random(int1 + 1));
        Validator.validate(person);
    }
    @When("name, surname, birthday are provided")
    public void nameSurnameBirthdayAreProvided() {
        person.setName(RandomStringUtils.random(50));
        person.setSurname(RandomStringUtils.random(20));
        person.setBirthday(LocalDateTime.now().toString());
    }

    @Then("a new customer number for the person is created")
    public void aNewCustomerNumberForThePersonIsCreated() {
        if (person.dataIsValid){
            person.setAccountNo(RandomStringUtils.random(8));
            assertFalse(person.getAccountNo().isEmpty());
        };
    }

    @When("a date before {int} or after {int} is provided")
    public void aDateBeforeOrAfterIsProvided(Integer int1, Integer int2) {
//        person.setGeburtsdatum(LocalDateTime.now().plusYears(60).toString());
        person.setBirthday("30.06.1830");
        Validator.validate(person);
    }

    @When("the birth date {string} is entered")
    public void theBirthdateIsEntered(String string) {
        person.setBirthday(string);
    }
}