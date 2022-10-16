package eu.rabow.bdd;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

public class Person {
    private String name;
    private String vorname;
    private LocalDate geburtsdatum;
    private String strasse;
    private String hausnummer;
    private String plz;
    private String ort;

    private String kundennummer;

    boolean dataIsValid = false;
    boolean geburtsdatumHatRichtigesFormat = true;
    boolean geburtsdatumIstVorhanden = false;
    boolean nameIstVorhanden = false;
    boolean vornameIstVorhanden = false;

    public LocalDate getGeburtsdatum() {
        return geburtsdatum;
    }

    public void setGeburtsdatum(String geburtsdatum) {
        if (!geburtsdatum.isEmpty()){
            geburtsdatumIstVorhanden = true;
            try{
            this.geburtsdatum = (LocalDate.parse(geburtsdatum, DateTimeFormatter.ofPattern("dd.MM.yyyy")));
            }catch (DateTimeParseException e){
                geburtsdatumHatRichtigesFormat   = false;
    }}}

    public void dataIsValid(){
        if (geburtsdatumIstVorhanden && nameIstVorhanden && vornameIstVorhanden){
            dataIsValid = true;
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (!name.isEmpty()) {
            nameIstVorhanden = true;
            this.name = name;
        }
    }

    public String getVorname() {
        return vorname;
    }

    public void setVorname(String vorname) {
        if(!vorname.isEmpty()) {
            vornameIstVorhanden = true;
            this.vorname = vorname;
        }
    }

    public String getStrasse() {
        return strasse;
    }

    public void setStrasse(String strasse) {
        this.strasse = strasse;
    }

    public String getHausnummer() {
        return hausnummer;
    }

    public void setHausnummer(String hausnummer) {
        this.hausnummer = hausnummer;
    }

    public String getPlz() {
        return plz;
    }

    public void setPlz(String plz) {
        this.plz = plz;
    }

    public String getOrt() {
        return ort;
    }

    public void setOrt(String ort) {
        this.ort = ort;
    }

    public String getKundennummer() {
        return kundennummer;
    }

    public void setKundennummer(String kundennummer) {
        this.kundennummer = kundennummer;
    }
}
