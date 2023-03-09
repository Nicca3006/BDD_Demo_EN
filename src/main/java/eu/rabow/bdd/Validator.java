package eu.rabow.bdd;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.Set;

public class Validator {

    static final DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");

    public static Set<String> validate(Person person) {
        Set<String> result = new HashSet<>();

        result.add(validateName(person));
        result.add(validateBirthday(person));

        return result;
    }

    private static String validateName(Person person) {
        String resultName = "";
        if (person.getName() == null || person.getName().equals("")) {
            resultName = "Please fill in your name.";
        } else if (person.getName().length() > 120) {
            resultName = "Please fill in a correct name.";
        }
        return resultName;
    }

    private static String validateBirthday(Person person) {
        String resultBirthday = "";
        if (!person.birthdayExists) {
            resultBirthday = "Please fill in your birth date.";
        } else if (person.birthdayFormatCorrect) {
            if (person.getBirthday().isBefore(LocalDate.parse("01.01.1850", dateTimeFormatter))
                    || person.getBirthday().isAfter(LocalDate.parse("31.12.2080", dateTimeFormatter))
                    || person.getBirthday().isAfter(LocalDate.now())) {
                resultBirthday = "Please check your birth date.";
            }
        } else
            resultBirthday = "Please enter the date as dd.mm.yyyy";

        return resultBirthday;


    }
}