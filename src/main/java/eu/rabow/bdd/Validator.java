package eu.rabow.bdd;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Validator {

    static final DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
    public static Set<String> validiere(Person person){
        Set<String> resultat = new HashSet<>();

        if (person.getName() == null || person.getName().equals("")){
            resultat.add("Bitte gib uns deinen Namen");
        }

        if (person.getGeburtsdatum() == null){
            resultat.add("Bitte gib uns dein Geburtsdatum");
        }else if (person.getGeburtsdatum().isBefore(LocalDate.parse("01.01.1850",dateTimeFormatter))
                || person.getGeburtsdatum().isAfter(LocalDate.parse("31.12.2080",dateTimeFormatter))){
            resultat.add("Das scheint nicht richtig zu sein");
        }
        return resultat;
    }
}
