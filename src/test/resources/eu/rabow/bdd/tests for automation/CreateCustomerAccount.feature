Feature: Creating a customer´s account
  As a user I would like to record my data once so that I can use it again and again later.
  We expect at least the fields surname, first name, date of birth. Optionally there is also the address.
  If the person does not fill in a mandatory field, no new account with a customer number will be created and the person will receive one
  appropriate error message.

  Background:
    Given a new personal account is created

  Scenario: Person does not enter their name
    When name is empty
    Then the message "Please fill in your name." is shown

  Scenario: Person does not enter their birth date
    When birth date is empty
    Then the message "Please fill in your birth date." is shown

  Scenario: Customer ID is created
    When name, surname, birthday are provided
    Then a new customer number for the person is created

  Scenario: Name is longer than 120 characters
    When name has more than 120 characters
    Then the message "Please fill in a correct name." is shown

  Scenario: birth date is between 1850 and 2080
    When a date before 1850 or after 2080 is provided
    Then the message "Please check your birth date." is shown