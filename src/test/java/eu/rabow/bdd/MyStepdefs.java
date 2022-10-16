package eu.rabow.bdd;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class MyStepdefs {
    @Given("die Person hat das Bestellformular ausgefüllt")
    public void diePersonHatDasBestellformularAusgefüllt() {;
    }

    @When("die Person das Formular einreicht")
    public void diePersonDasFormularEinreicht() {
    }

    @Then("erhält die Person eine Bestätigungs-E-Mail")
    public void erhältDiePersonEineBestätigungsEMail() {
    }

    @Given("die Person hat keine Mail im Bestellformular angegeben")
    public void diePersonHatKeineMailImBestellformularAngegeben() {
    }

    @Then("kommt ein Hinweis auf die fehlende Mailadresse")
    public void kommtEinHinweisAufDieFehlendeMailadresse() {
    }
}
