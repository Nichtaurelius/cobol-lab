       IDENTIFICATION DIVISION.
       PROGRAM-ID. DWZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BENUTZERZAHL     PIC 9(4).
       01  GEGNERZAHL       PIC 9(4).
       01  ERGEBNIS         PIC A(1).
       01  PERFORMANCE      PIC 9(4).
       
       PROCEDURE DIVISION.
       DISPLAY "Bitte gib deine DWZ ein:"
       ACCEPT BENUTZERZAHL
       DISPLAY "Bitte gib die DWZ deines Gegners ein:"
       ACCEPT GEGNERZAHL
       DISPLAY "Bitte gib das Ergebnis der Partie ein ",
       "(w = Sieg, d = Remis, l = Niederlage):"
       ACCEPT ERGEBNIS
       
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
