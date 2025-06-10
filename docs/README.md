# DWZ-Rechner in COBOL

Dieses COBOL-Projekt berechnet deine neue DWZ auf Basis der offiziellen Berechnungsformel. Dabei wird aus deiner bisherigen DWZ, der DWZ des Gegners und dem Partieergebnis dein neuer Wert ermittelt. Verwendet wird dabei folgende Formel:

```
DWZ_neu = DWZ_alt + K * (S - E)

E = 1 / (1 + 10^((GegnerDWZ - DWZ_alt) / 400))
K = 800 / (1 + A)
```

*S* entspricht 1 bei Sieg, 0,5 bei Remis und 0 bei Niederlage. Als feste Entwicklungskonstante wird hier **A = 7** angenommen (damit ergibt sich K = 100).

Das Projekt richtet sich an Einsteiger im Bereich COBOL-Programmierung mit Fokus auf textbasierter Benutzereingabe.


## Projektstruktur

```

cobol-dwz-calculator/
├── src/              # COBOL-Quellcode (dwz.cob)
├── build/            # Kompilierte Ausgabedateien
├── build.sh          # Build-Skript zum Kompilieren
├── run.sh            # Ausführ-Skript
├── docs/             # Dokumentation (z. B. dieses README)

````


## Beispiel-Ausführung

```text
Bitte gib deine DWZ ein:
1800
Bitte gib die DWZ deines Gegners ein:
1900
Bitte gib das Ergebnis der Partie ein
(w = Sieg, d = Remis, l = Niederlage):
d
Ein Unentschieden gegen 1900 ist auch ganz okay.
Deine neue DWZ beträgt 1814
````

---

## Kompilieren und Ausführen

### Manuell im Terminal

```bash
# Schritt 1: Build-Ordner anlegen (nur einmal nötig)
mkdir -p build

# Schritt 2: Kompilieren
cobc -x src/dwz.cob -o build/dwz

# Schritt 3: Ausführen
./build/dwz
```

### Alternativ: Mit Skripten

```bash
# Kompilieren
./build.sh

# Ausführen
./run.sh
```

---

## Voraussetzungen

* Linux, macOS, oder Windows mit WSL oder Git Bash
* GnuCOBOL installiert:

  ```bash
  sudo apt update
  sudo apt install gnucobol4
  ```

---

## Autor

**Aurelius Pilat / Nichtaurelius**
Informatikstudent & angehender COBOL-Entwickler
GitHub: [github.com/Nichtaurelius](https://github.com/Nichtaurelius)

