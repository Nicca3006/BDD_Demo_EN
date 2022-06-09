package eu.rabow.bdd;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.Set;

public class Validator {

    static final DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");

    public static Set<String> validiere(Person person) {
        Set<String> resultat = new HashSet<>();

        resultat.add(validiereName(person));
        resultat.add(validiereGeburtsdatum(person));

        return resultat;
    }

    private static String validiereName(Person person) {
//        Set<String> resultat = new HashSet<>();
        String resultatName = "";
        if (person.getName() == null || person.getName().equals("")) {
            resultatName = "Bitte geben Sie Ihren Namen an.";
        } else if (person.getName().length() > 120) {
            resultatName = "Die Eingabe ist zu lang";
        }
        return resultatName;
    }

    private static String validiereGeburtsdatum(Person person) {
//        Set<String> resultat = new HashSet<>();
        String resultatGeburtsdatum = "";
        if (!person.geburtsdatumIstVorhanden) {
            resultatGeburtsdatum = "Bitte geben Sie Ihr Geburtsdatum an.";
        } else if (person.geburtsdatumHatRichtigesFormat) {
            if (person.getGeburtsdatum().isBefore(LocalDate.parse("01.01.1850", dateTimeFormatter))
                    || person.getGeburtsdatum().isAfter(LocalDate.parse("31.12.2080", dateTimeFormatter))
                    || person.getGeburtsdatum().isAfter(LocalDate.now())) {
                resultatGeburtsdatum = "Das scheint nicht richtig zu sein";
            }
        } else
            resultatGeburtsdatum = "Bitte geben Sie das Datum im Format tt.mm.yyyy an.";

            return resultatGeburtsdatum;


    }
}
