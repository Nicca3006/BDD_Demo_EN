#language:en-pirate
@Validation
  Ahoy matey!: Equivalent class test for birth dates

  Shiver me timbers:
  Gangway! a new personal account is created
  Blimey! the birth date <value> is entered
  Let go and haul the message <message> is shown
  Dead men tell no tales:
   | value | message |
   |"31.12.1849"  | "Please check your birth date." |
   | "01.01.2081"  | "Please check your birth date." |
   | "15.12.2023" | "Please check your birth date." |
   |"00.00.0000"  |"Please enter the date as dd.mm.yyyy" |
   | "12345678901" |"Please enter the date as dd.mm.yyyy" |
   | "ABC4567EFG" | "Please enter the date as dd.mm.yyyy" |
   | "01.--.2000" | "Please enter the date as dd.mm.yyyy" |
   | "--.01.2000" | "Please enter the date as dd.mm.yyyy" |
   | "00.12.2000" | "Please enter the date as dd.mm.yyyy" |
   | "32.01.2000" | "Please enter the date as dd.mm.yyyy" |
