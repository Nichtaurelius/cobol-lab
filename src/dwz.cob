       IDENTIFICATION DIVISION.
       PROGRAM-ID. DWZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BENUTZERZAHL     PIC 9(4).
       01  GEGNERZAHL       PIC 9(4).
       01  ERGEBNIS         PIC A(1).
       01  PERFORMANCE      PIC 9(4).
       
       PROCEDURE DIVISION.
       PERFORM UNTIL BENUTZERZAHL < 400 OR BENUTZERZAHL > 3000
       DISPLAY "Bitte gib deine DWZ ein: "
       ACCEPT BENUTZERZAHL
       IF BENUTZERZAHL < 400 OR BENUTZERZAHL > 3000
       DISPLAY "Bitte gib eine gültige DWZ ein (400 - 3000):"
       END-IF
       END-PERFORM

       PERFORM UNTIL GEGENERZAHL < 400 OR GEGNERZAHL > 3000
       DISPLAY "Bitte gib die DWZ deines Gegners ein:"
       ACCEPT GEGNERZAHL
       IF GEGNERZAHL < 400 OR GEGNERZAHL > 3000
       DISPLAY "Bitte gib eine gültige DWZ ein (400 - 3000):"
       END-IF
       END-PERFORM

       PERFORM UNTIL ERGEBNIS = "w" OR ERGEBNIS = "d" OR ERGEBNIS = "l"
       DISPLAY "Bitte gib das Ergebnis der Partie ein ",
       "(w = Sieg, d = Remis, l = Niederlage):"
       ACCEPT ERGEBNIS
       IF ERGEBNIS NOT = "w" AND ERGEBNIS NOT = "d" AND
       ERGEBNIS NOT = "l"
       DISPLAY "Bitte gib ein gültiges Ergebnis ein (w, d oder l)",
       "(w = Sieg, d = Remis, l = Niederlage):"
       END-IF
       END-PERFORM
       
       IF ERGEBNIS = "w"
       DISPLAY "Gut gemacht. Du hast gegen nen ", GEGNERZAHL,
       " gewonnen! :)"
       COMPUTE PERFORMANCE = GEGNERZAHL + 400
       DISPLAY "Deine Performance liegt bei ", PERFORMANCE
       END-IF

       IF ERGEBNIS = "d"
       DISPLAY "Ein Unentschieden gegen einen ", GEGNERZAHL,
       " ist auch ganz okay. Immerhin hast du ja nicht verloren ;)"
       COMPUTE PERFORMANCE = GEGNERZAHL
       DISPLAY "Deine Performance liegt bei ", PERFORMANCE
       END-IF
       
       IF ERGEBNIS = "l"
       DISPLAY "Schade, dass du gegen einen ", GEGNERZAHL,
       " verloren hast. Das nächste mal wird es aber besser ;)"
       COMPUTE PERFORMANCE = GEGNERZAHL - 400
       DISPLAY "Deine Performance liegt bei ", PERFORMANCE
       END-IF

       STOP RUN.
