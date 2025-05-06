       IDENTIFICATION DIVISION.
       PROGRAM-ID. DWZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BENUTZERZAHL     PIC 9(4).
       01  GEGNERZAHL       PIC 9(4).
       01  ERGEBNIS         PIC A(1).
       01  PERFORMANCE      PIC S9(5) COMP.

       PROCEDURE DIVISION.
           DISPLAY "Bitte gib deine DWZ ein:".
           ACCEPT BENUTZERZAHL.
           
           DISPLAY "Bitte gib die DWZ deines Gegners ein:".
           ACCEPT GEGNERZAHL.

           DISPLAY "Bitte gib das Ergebnis der Partie ein ".
           DISPLAY "(w = Sieg, d = Remis, l = Niederlage):".
           ACCEPT ERGEBNIS.

           IF ERGEBNIS = "w"
               DISPLAY "Gut gemacht. Du hast gegen ", GEGNERZAHL, 
               " gewonnen! :)"
               COMPUTE PERFORMANCE = GEGNERZAHL + 400
               DISPLAY "Deine Performance liegt bei ", PERFORMANCE
           END-IF

           IF ERGEBNIS = "d"
               DISPLAY "Ein Unentschieden gegen ", GEGNERZAHL,
                " ist auch ganz okay."
               COMPUTE PERFORMANCE = GEGNERZAHL
               DISPLAY "Deine Performance liegt bei ", PERFORMANCE
           END-IF

           IF ERGEBNIS = "l"
               DISPLAY "Schade, dass du gegen ", GEGNERZAHL,
                " verloren hast."
               COMPUTE PERFORMANCE = GEGNERZAHL - 400
               DISPLAY "Deine Performance liegt bei ", PERFORMANCE
           END-IF

           STOP RUN.
