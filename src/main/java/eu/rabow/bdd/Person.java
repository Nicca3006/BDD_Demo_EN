package eu.rabow.bdd;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

public class Person {
    private String name;
    private String surname;
    private LocalDate birthday;
    private String street;
    private String number;
    private String zipCode;
    private String city;

    private String accountNo;

    boolean dataIsValid = false;
    boolean birthdayFormatCorrect = true;
    boolean birthdayExists = false;
    boolean nameExists = false;
    boolean surnameExists = false;

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        if (!birthday.isEmpty()){
            birthdayExists = true;
            try{
            this.birthday = (LocalDate.parse(birthday, DateTimeFormatter.ofPattern("dd.MM.yyyy")));
            }catch (DateTimeParseException e){
                birthdayFormatCorrect = false;
    }}}

    public void dataIsValid(){
        if (birthdayExists && nameExists && surnameExists){
            dataIsValid = true;
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (!name.isEmpty()) {
            nameExists = true;
            this.name = name;
        }
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        if(!surname.isEmpty()) {
            surnameExists = true;
            this.surname = surname;
        }
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
    }
}
