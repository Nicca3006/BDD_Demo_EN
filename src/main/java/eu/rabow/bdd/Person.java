package eu.rabow.bdd;

import java.time.LocalDate;
import java.util.Date;

public class Person {
    private String name;
    private LocalDate geburtsdatum;

    public LocalDate getGeburtsdatum() {
        return geburtsdatum;
    }

    public void setGeburtsdatum(LocalDate geburtsdatum) {
        this.geburtsdatum = geburtsdatum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
