Feature: Wenn unser Kunde ein Verein ist, dann wollen wir nicht nur den Namen wissen, sondern auch die Angaben zum Vereinsregistereintrag abfragen. Ist der Verein innerhalb der letzten 3 Monate gegründet worden, dann wollen wir verpflichtend auch noch das Eintragungsdatum ins Vereinsregister kennen.
  In Abhängigkeit von diesen Angaben wollen wir bestimmte Unterlagen erhalten.
  Um den Passierschein A38 zu erhalten, braucht es keinen Supernachweis. Wenn hier auch NICHT Kindergarten ausgewählt ist, dann brauchen wir auch keinen Versicherungsnachweis

  Background:
    Given Nutzende Person loggt sich ein
    And nutzende Person bearbeitet einen Vorgang
    And nutzende Person schliesst mehrere Schritte erstmal ab
    Given nutzende Person befindet sich auf der Seite Verein

  Scenario: Es handelt sich um einen Verein in Gründung
    When Radiobutton VereinInGründung ist aktiviert
    Then Eingabetextfeld "Im Vereinsregister eingetragener Name"* ist Pflichtfeld
    And Eingabetextfeld “Straße”* ist Pflichtfeld
    And Eingabetextfeld “Hausnummer”* ist Pflichtfeld
    And Eingabetextfeld “Postleitzahl"* ist Pflichtfeld
    And Eingabetextfeld “Ort"* ist Pflichtfeld
    And Infotext "Kontaktperson für Rückfragen" wird angezeigt
    And Eingabetextfeld “Name"* ist Pflichtfeld
    And Eingabetextfeld “Vorname"* ist Pflichtfeld
    And Eingabetextfeld “Stellung im Verein" ist optionales Feld
    And Eingabetextfeld “E-Mail"* ist Pflichtfeld
    And Eingabetextfeld “Telefon” ist optionales Feld
    And Eingabetextfeld “Mobil" ist optionales Feld
    And keine weiteren Eingabefelder sind vorhanden
    And Buttonleiste ist vorhanden

  Scenario: Die Eintragung des Vereins war vor weniger als drei Monaten
    When Radiobutton VereinMitEintragungWenigerAls3Monate ist aktiviert
    Then Eingabetextfeld "Im Vereinsregister eingetragener Name"* ist Pflichtfeld
    And Eingabetextfeld "Vereinsregistergericht"* ist Pflichtfeld
    And Eingabetextfeld "Vereinsregister-Nummer"* ist Pflichtfeld
    And Eingabetextfeld "Datum der Eintragung ins Vereinsregister"* ist Pflichtfeld
    And Eingabetextfeld “Straße”* ist Pflichtfeld
    And Eingabetextfeld “Hausnummer”* ist Pflichtfeld
    And Eingabetextfeld “Postleitzahl"* ist Pflichtfeld
    And Eingabetextfeld “Ort"* ist Pflichtfeld
    And Infotext "Kontaktperson für Rückfragen" wird angezeigt
    And Eingabetextfeld “Name"* ist Pflichtfeld
    And Eingabetextfeld “Vorname"* ist Pflichtfeld
    And Eingabetextfeld “Stellung im Verein" ist optionales Feld
    And Eingabetextfeld “E-Mail"* ist Pflichtfeld
    And Eingabetextfeld “Telefon” ist optionales Feld
    And Eingabetextfeld “Mobil" ist optionales Feld
    And keine weiteren Eingabefelder sind vorhanden
    And Buttonleiste ist vorhanden

  Scenario:
    When Radiobutton VereinderenEintragungInsRegisterVorMehrAls3MonatenErfolgtIst ist aktiviert
    Then Eingabetextfeld "Vereinsregister eingetragener Name"* ist Pflichtfeld
    And Eingabetextfeld "Vereinsregistergericht"* ist Pflichtfeld
    And Eingabetextfeld "Vereinsregister-Nummer"* ist Pflichtfeld
    And Eingabetextfeld "Datum der Eintragung ins Vereinsregister" ist optionales Feld
    And Eingabetextfeld “Straße”* ist Pflichtfeld
    And Eingabetextfeld “Hausnummer”* ist Pflichtfeld
    And Eingabetextfeld “Postleitzahl"* ist Pflichtfeld
    And Eingabetextfeld “Ort"* ist Pflichtfeld
    And Infotext "Kontaktperson für Rückfragen" wird angezeigt
    And Eingabetextfeld “Name"* ist Pflichtfeld
    And Eingabetextfeld “Vorname"* ist Pflichtfeld
    And Eingabetextfeld “Stellung im Verein" ist optionales Feld
    And Eingabetextfeld “E-Mail"* ist Pflichtfeld
    And Eingabetextfeld “Telefon” ist optionales Feld
    And Eingabetextfeld “Mobil" ist optionales Feld
    And keine weiteren Eingabefelder sind vorhanden
    And Buttonleiste ist vorhanden


  Scenario: Anforderung von Unterlagen in Abhängigkeit von den Angaben zum Verein
    And Seite Verein ist geöffnet
    When Radiobutton VereinInGründung ist aktiviert
    And alle Pflichtfelder sind ausgefüllt
    And Button Weiter wird geklickt
    Then Seite Unterlagen ist geöffnet
    And Infotexte werden angezeigt
    And Checkbox HakMichAn wird angezeigt
    And Datei-Upload-Abschnitt “Versicherungsnachweis” zum Hochladen eines Dokuments  ist vorhanden
    And Datei-Upload-Abschnitt "Auszug Vereinsregister (oder, falls sich der Verein in Gründung befindet, die Satzung)" ist vorhanden
    And Buttonleiste ist vorhanden

  Scenario:
    When Radiobutton VereinderenEintragungInsRegisterNichtLängerAls3MonateZurückliegt ist aktiviert
    And alle Pflichtfelder sind ausgefüllt
    And Button Weiter wird geklickt
    Then Seite Unterlagen ist geöffnet
    And Infotexte werden angezeigt
    And Checkbox HakMichAn wird angezeigt
    And Datei-Upload-Abschnitt “Versicherungsnachweis” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt "Auszug Vereinsregister (oder, falls sich der Verein in Gründung befindet, die Satzung)" ist vorhanden
    And Buttonleiste ist vorhanden

  Scenario:
    When Radiobutton VereinderenEintragungInsRegisterVorMehrAls3MonatenErfolgtIst ist aktiviert
    And alle Pflichtfelder sind ausgefüllt
    And Button Weiter wird geklickt
    Then Seite Unterlagen ist geöffnet
    And Infotexte werden angezeigt
    And Checkbox HakMichAn wird angezeigt
    And Datei-Upload-Abschnitt “Bescheinigung vom Finanzamt:” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt “Auskunft” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt “Bestätigung” zum Hochladen mehrerer Dokumente ist vorhanden
    And Datei-Upload-Abschnitt “Versicherungsnachweis” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt "Auszug Vereinsregister (oder, falls sich der Verein in Gründung befindet, die Satzung)" ist vorhanden
    And Buttonleiste ist vorhanden


  Scenario: Notwendige Angaben für gesetzliche Vertretung in Abhängigkeit vom Verein

    And Seite Verein ist geöffnet
    When Radiobutton VereinInGründung ist aktiviert
    And alle Pflichtfelder sind ausgefüllt
    And Button Weiter wird geklickt
    And Seite Unterlagen ist geöffnet
    And Button Weiter wird geklickt
    Then Seite Vertretung ist geöffnet
    And Eingabetextfeld “Familienname"* ist vorhanden
    And Eingabetextfeld “Vorname"* ist vorhanden
    And Eingabetextfeld “Geburtsname” ist vorhanden
    And Eingabe-Datumsfeld “Geburtsdatum"* ist vorhanden
    And Eingabetextfeld “Geburtsort"* ist vorhanden
    And Eingabetextfeld “Geburtsland” ist vorhanden
    And DropDown-Liste “Staatsangehörigkeit(en)"* ist vorhanden
    And Infotext "Anschrift Hauptwohnsitz gesetzliche Vertretung" ist vorhanden
    And Eingabetextfeld “Straße"* ist vorhanden
    And Eingabetextfeld "Hausnummer" ist vorhanden
    And Eingabetextfeld “Postleitzahl"* ist vorhanden
    And Eingabetextfeld “Ort"* ist vorhanden
    And Eingabetextfeld “E-Mail"* ist vorhanden
    And Eingabetextfeld “Telefon” ist vorhanden
    And Eingabetextfeld “Mobil" ist vorhanden
    And Infotext "Erforderliche Unterlagen" ist vorhanden
    And Infotext "Die eingereichten Dokumente dürfen nicht älter als 3 Monate sein" ist vorhanden
    And Checkbox "Wichtige Angabe" ist vorhanden
    And Label “Auskunft aus dem Bundeszentralregister (Führungszeugnis)” ist vorhanden
    And Datei-Upload-Abschnitt “Bescheinigung in Steuersachen (sog. Unbedenklichkeitsbescheinigung) vom Finanzamt:” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt “Auskunft” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt “Bestätigung” zum Hochladen mehrerer Dokumente ist vorhanden
    And Datei-Upload-Abschnitt “Supernachweis” zum Hochladen mehrerer Dokumente ist vorhanden
    And Button "Weitere gesetzliche Vertretung hinzufügen" ist vorhanden
    And Buttonleiste ist vorhanden

  Scenario:
    When Radiobutton VereinderenEintragungInsRegisterNichtLängerAls3MonateZurückliegt ist aktiviert
    And alle Pflichtfelder sind ausgefüllt
    And Button Weiter wird geklickt
    And Seite Unterlagen ist geöffnet
    And Button Weiter wird geklickt
    Then Seite Vertretung ist geöffnet
    And Eingabetextfeld “Familienname"* ist vorhanden
    And Eingabetextfeld “Vorname"* ist vorhanden
    And Eingabetextfeld “Geburtsname” ist vorhanden
    And Eingabe-Datumsfeld “Geburtsdatum"* ist vorhanden
    And Eingabetextfeld “Geburtsort"* ist vorhanden
    And Eingabetextfeld “Geburtsland” ist vorhanden
    And DropDown-Liste “Staatsangehörigkeit(en)"* ist vorhanden
    And Infotext "Anschrift Hauptwohnsitz gesetzliche Vertretung" ist vorhanden
    And Eingabetextfeld “Straße"* ist vorhanden
    And Eingabetextfeld "Hausnummer" ist vorhanden
    And Eingabetextfeld “Postleitzahl"* ist vorhanden
    And Eingabetextfeld “Ort"* ist vorhanden
    And Eingabetextfeld “E-Mail"* ist vorhanden
    And Eingabetextfeld “Telefon” ist vorhanden
    And Eingabetextfeld “Mobil" ist vorhanden
    And Bereich "Anschrift abweichende Hauptwohnsitze der letzten 5 Jahre" ist vorhanden
    And Infotext "Erforderliche Unterlagen" ist vorhanden
    And Infotext "Die eingereichten Dokumente dürfen nicht älter als 3 Monate sein" ist vorhanden
    And Checkbox "Wichtige Angabe" ist vorhanden
    And Label “Auskunft aus dem Bundeszentralregister (Führungszeugnis) zur Vorlage bei einer Behörde (§ 30 Abs. 5 BZRG, Belegart O):” ist vorhanden
    And Datei-Upload-Abschnitt “Bescheinigung vom Finanzamt:” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt “Auskunft” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt “Bestätigung” zum Hochladen mehrerer Dokumente ist vorhanden
    And Datei-Upload-Abschnitt “Supernachweis” zum Hochladen mehrerer Dokumente ist vorhanden
    And Button "Weitere gesetzliche Vertretung hinzufügen" ist vorhanden
    And Buttonleiste ist vorhanden

  Scenario:
    When Radiobutton VereinderenEintragungInsRegisterVorMehrAls3MonatenErfolgtIst ist aktiviert
    And alle Pflichtfelder sind ausgefüllt
    And Button Weiter wird geklickt
    And Seite Unterlagen ist geöffnet
    And Button Weiter wird geklickt
    Then Seite Vertretung ist geöffnet
    And Auf-/Zuklappbares Panel "Gesetzliche Vertretung (1)" ist vorhanden
    And Eingabetextfeld “Familienname"* ist vorhanden
    And Eingabetextfeld “Vorname"* ist vorhanden
    And Eingabetextfeld “Geburtsname” ist vorhanden
    And Eingabe-Datumsfeld “Geburtsdatum"* ist vorhanden
    And Eingabetextfeld “Geburtsort"* ist vorhanden
    And Eingabetextfeld “Geburtsland” ist vorhanden
    And DropDown-Liste “Staatsangehörigkeit(en)"* ist vorhanden
    And Infotext "Anschrift Hauptwohnsitz gesetzliche Vertretung" ist vorhanden
    And Eingabetextfeld “Straße"* ist vorhanden
    And Eingabetextfeld "Hausnummer" ist vorhanden
    And Eingabetextfeld “Postleitzahl"* ist vorhanden
    And Eingabetextfeld “Ort"* ist vorhanden
    And Eingabetextfeld “E-Mail"* ist vorhanden
    And Eingabetextfeld “Telefon” ist vorhanden
    And Eingabetextfeld “Mobil" ist vorhanden
    And Bereich "Anschrift abweichende Hauptwohnsitze der letzten 5 Jahre" ist vorhanden
    And Infotext "Erforderliche Unterlagen" ist vorhanden
    And Infotext "Die eingereichten Dokumente dürfen nicht älter als 3 Monate sein" ist vorhanden
    And Checkbox "Wichtige Angabe" ist vorhanden
    And Label “Auskunft aus dem Bundeszentralregister (Führungszeugnis)” ist vorhanden
    And Datei-Upload-Abschnitt “Bescheinigung vom Finanzamt:” zum Hochladen eines Dokuments ist vorhanden
    And Datei-Upload-Abschnitt “Supernachweis” zum Hochladen mehrerer Dokumente ist vorhanden
    And Button "Weitere gesetzliche Vertretung hinzufügen" ist vorhanden
    And Buttonleiste ist vorhanden

  Scenario: Unterlagen der Vertretung bei persönlicher Erlaubnis

    And Seite Vertretung ist geöffnet
    When Checkbox "Wichtige Angabe" ist aktiviert
    Then Label “Auskunft aus dem Bundeszentralregister (Führungszeugnis)” ist ausgeblendet
    And Datei-Upload-Abschnitt “Bescheinigung vom Finanzamt:” ist ausgeblendet
    And Datei-Upload-Abschnitt “Auskunft” ist ausgeblendet
    And Datei-Upload-Abschnitt “Bestätigung” ist ausgeblendet
  AD Datei-Upload-Abschnitt “Supernachweis” ist ausgeblendet

    When Checkbox "Wichtige Angabe" ist nicht aktiviert
    Then Datei-Upload-Abschnitt  "Nachweis für wichtige Angabe - nicht älter als 3 Monate" wird ausgeblendet

  Scenario:Unterlagen abhängig von bereits bestehender Erlaubnis

    And Seite Unterlagen ist geöffnet
    When Radiobutton WichtigeAngabe ist mit Ja aktiviert
    Then Datei-Upload-Abschnitt  “Nachweis Wichtige Angabe - nicht älter als 3 Monate” ist vorhanden

    When Radiobutton WichtigeAngabe ist mit Nein aktiviert
    Then Datei-Upload-Abschnitt  “Nachweis Wichtige Angabe - nicht älter als 3 Monate” ist ausgeblendet

    When Radiobutton WichtigeAngabe ist mit Ja aktiviert
    Then Datei-Upload-Abschnitt “Bescheinigung vom Finanzamt:” wird ausgeblendet
    And Datei-Upload-Abschnitt “Auskunft” wird ausgeblendet
    And Datei-Upload-Abschnitt “Bestätigung” wird ausgeblendet

    When Radiobutton WichtigeAngabe ist mit Ja aktiviert
    And Button Weiter wird geklickt
    Then Seite Vertretung ist geöffnet
    And Checkbox "WichtigeAngabe - nicht älter als 3 Monate - nach § 34c GewO, § 34d GewO und/oder § 34i GewO " ist ausgeblendet
    And Datei-Upload-Abschnitt  "Nachweis zu Wichtige Angabe  - nicht älter als 3 Monate" ist ausgeblendet
    And Label “Auskunft aus dem Bundeszentralregister (Führungszeugnis)” ist ausgeblendet
    And Datei-Upload-Abschnitt “Bescheinigung vom Finanzamt:” ist ausgeblendet
    And Datei-Upload-Abschnitt “Auskunft” ist ausgeblendet
    And Datei-Upload-Abschnitt “Bestätigung” ist ausgeblendet

  Scenario: Hinweis fehlende Dokumente für Verein in Gründung

    And Seite Verein ist geöffnet
    And Radiobutton VereinInGründung ist aktiviert
    And alle Pflichtfelder sind ausgefüllt
    And Button Weiter wird geklickt
    And Seite Unterlagen ist geöffnet
    When Datei-Upload-Abschnitt "Auszug Vereinsregister (oder Satzung)" ist nicht befüllt
    And Button Weiter wird geklickt
    Then kein Hinweis erscheint auf fehlendes Dokument "Auszug Vereinsregister (oder Satzung)"