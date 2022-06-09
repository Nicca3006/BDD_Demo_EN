package eu.rabow.bdd;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

public class Person {
    private String name;
    private LocalDate geburtsdatum;
    boolean geburtsdatumHatRichtigesFormat = true;
    boolean geburtsdatumIstVorhanden = false;
    boolean nameIstVorhanden = false;

    public LocalDate getGeburtsdatum() {
        return geburtsdatum;
    }

    public void setGeburtsdatum(String geburtsdatum) {
        if (!geburtsdatum.isEmpty()){
            geburtsdatumIstVorhanden = true;
            try{
            this.geburtsdatum = (LocalDate.parse(geburtsdatum, DateTimeFormatter.ofPattern("dd.MM.yyyy")));
            }catch (DateTimeParseException e){
            geburtsdatumHatRichtigesFormat = false;
    }}}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (!name.isEmpty()) {
            nameIstVorhanden = true;
            this.name = name;
        }
    }

}
