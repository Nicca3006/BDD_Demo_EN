package eu.rabow.bdd;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class MyStepdefs {

    @Given("person completed the order form")
    public void personCompletedTheOrderForm() {
        throw new PendingException();
    }

    @When("person submits the form")
    public void personSubmitsTheForm() {
        throw new PendingException();
    }

    @Then("person gets a confirmation mail")
    public void personGetsAConfirmationMail() {
        throw new PendingException();
    }

    @Given("person did not fill in mail in order form")
    public void personDidNotFillInMailInOrderForm() {
        throw new PendingException();
    }
}
