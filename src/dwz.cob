       IDENTIFICATION DIVISION.
       PROGRAM-ID. DWZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BENUTZERZAHL     PIC 9(4).
       01  GEGNERZAHL       PIC 9(4).
       01  ERGEBNIS         PIC A(1).
       01  SCORE            USAGE COMP-2.
       01  ERWARTUNG        USAGE COMP-2.
       01  K-FAKTOR         USAGE COMP-2.
       01  NEUEDWZ-FLOAT    USAGE COMP-2.
       01  NEUE-DWZ         PIC 9(4).
       01  A-KONST          PIC 9 VALUE 7.
       
       PROCEDURE DIVISION.
       PERFORM UNTIL BENUTZERZAHL > 400 AND BENUTZERZAHL < 3000
       DISPLAY "Bitte gib deine DWZ ein:"
       ACCEPT BENUTZERZAHL
       IF BENUTZERZAHL < 400 OR BENUTZERZAHL > 3000
       DISPLAY "Bitte gib eine gültige DWZ ein (400 - 3000):"
       END-IF
       END-PERFORM

       PERFORM UNTIL GEGNERZAHL > 400 AND GEGNERZAHL < 3000
       DISPLAY "Bitte gib die DWZ deines Gegners ein:"
       ACCEPT GEGNERZAHL
       IF GEGNERZAHL < 400 OR GEGNERZAHL > 3000
       DISPLAY "Bitte gib eine gültige DWZ ein (400 - 3000):"
       END-IF
       END-PERFORM

       PERFORM UNTIL ERGEBNIS = "w" OR ERGEBNIS = "d" OR ERGEBNIS = "l"
       OR ERGEBNIS = "W" OR ERGEBNIS = "D" OR ERGEBNIS = "L"
       DISPLAY "Bitte gib das Ergebnis der Partie ein ",
       "(w = Sieg, d = Remis, l = Niederlage):"
       ACCEPT ERGEBNIS
       IF ERGEBNIS NOT = "w" AND ERGEBNIS NOT = "d" AND
       ERGEBNIS NOT = "l" AND ERGEBNIS NOT = "W" AND ERGEBNIS NOT = "D" 
       AND ERGEBNIS NOT = "L" 
       DISPLAY "ungültige Eingabe!"
       END-IF
       END-PERFORM
       
       IF ERGEBNIS = "w" OR ERGEBNIS = "W"
       MOVE 1.0 TO SCORE
       DISPLAY "Gut gemacht. Du hast gegen einen ", GEGNERZAHL,
       " gewonnen! :)"
       END-IF

       IF ERGEBNIS = "d" OR ERGEBNIS = "D"
       MOVE 0.5 TO SCORE
       DISPLAY "Ein Unentschieden gegen einen ", GEGNERZAHL,
       " ist auch ganz okay. Immerhin hast du ja nicht verloren ;)"
       END-IF

       IF ERGEBNIS = "l" OR ERGEBNIS = "L"
       MOVE 0 TO SCORE
       DISPLAY "Schade, dass du gegen einen ", GEGNERZAHL,
       " verloren hast. Das nächste mal wird es aber besser ;)"
       END-IF

       COMPUTE K-FAKTOR = 800.0 / (1 + A-KONST)
       COMPUTE ERWARTUNG = 1 /
       (1 + FUNCTION POWER(10.0,
       (GEGNERZAHL - BENUTZERZAHL) / 400.0))
       COMPUTE NEUEDWZ-FLOAT = BENUTZERZAHL +
       K-FAKTOR * (SCORE - ERWARTUNG)
       COMPUTE NEUEDWZ-FLOAT = FUNCTION INTEGER(NEUEDWZ-FLOAT + 0.5)
       MOVE NEUEDWZ-FLOAT TO NEUE-DWZ
       DISPLAY "Deine neue DWZ beträgt ", NEUE-DWZ

       STOP RUN.
