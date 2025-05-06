       IDENTIFICATION DIVISION.
       PROGRAM-ID. DWZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BENUTZERZAHL     PIC 9(4).
       01  GEGNERZAHL       PIC 9(4).
       01  ERGEBNIS         PIC A(1).
       
       PROCEDURE DIVISION.
       DISPLAY "Bitte gib deine DWZ ein:"
       ACCEPT BENUTZERZAHL
       DISPLAY "Bitte gib die DWZ deinses Gegners ein:"
       ACCEPT GEGNERZAHL
       DISPLAY "Bitte gib das Ergebnis der Partie ein (l/d/w):"
       ACCEPT ERGEBNIS
       IF ERGEBNIS = "w"
       DISPLAY "Gut gemacht. Du hast gegen nen ", GEGNERZAHL, " gewonnen! :)"
       END-IF
       STOP RUN.
