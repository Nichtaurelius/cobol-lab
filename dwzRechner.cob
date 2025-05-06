       IDENTIFICATION DIVISION.
       PROGRAM-ID. DWZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BENUTZERZAHL     PIC 9(4).
       01  GEGNERZAHL       PIC 9(4).
       01  ERGEBNIS         PIC 9V9 VALUE 0.0.
       01  PERFORMANCE    PIC 9(5).
       
       PROCEDURE DIVISION.
       DISPLAY "Bitte gib deine DWZ ein:"
       ACCEPT BENUTZERZAHL
       DISPLAY "Bitte gib die DWZ deines Gegners ein:"
       ACCEPT GEGNERZAHL
       DISPLAY "Bitte gib das Ergebnis der Partie ein ",
       "(1.0 = Sieg, 0.5 = Remis, 0.0 = Niederlage):"
       ACCEPT ERGEBNIS
       
       IF ERGEBNIS = "1.0"
       DISPLAY "Gut gemacht. Du hast gegen nen ", GEGNERZAHL,
       " gewonnen! :)"
       COMPUTE PERFORMANCE = GEGNERZAHL + 400
       DISPLAY "Deine Performance liegt bei ", PERFORMANCE
       END-IF

       IF ERGEBNIS = "0.5"
       DISPLAY "Ein Unentschieden gegen einen ", GEGNERZAHL,
       " ist auch ganz okay. Immerhin hast du ja nicht verloren ;)"
       COMPUTE PERFORMANCE = GEGNERZAHL
       DISPLAY "Deine Performance liegt bei ", PERFORMANCE
       END-IF
       
       IF ERGEBNIS = "0"
       DISPLAY "Schade, dass du gegen einen ", GEGNERZAHL,
       " verloren hast. Das nächste mal wird es aber besser ;)"
       COMPUTE PERFORMANCE = GEGNERZAHL - 400
       DISPLAY "Deine Performance liegt bei ", PERFORMANCE
       END-IF

       STOP RUN.
