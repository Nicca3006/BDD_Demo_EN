@Newsletter
Feature: Order newsletter
  As a user I want to order a newsletter to get the latest information.
  There might be lots of text here...

  Scenario: Person fills in all mandatory fields
    Given person completed the order form
    When person submits the form
    Then person gets a confirmation mail

  Scenario: Person does not fill in mail adress
    Given person did not fill in mail in order form
    When person submits the form
    Then the message "Enter mail adress" is shown
