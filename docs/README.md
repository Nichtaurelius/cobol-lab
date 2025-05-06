# DWZ-Rechner in COBOL

Dieses COBOL-Projekt berechnet deine Performance-Zahl (DWZ) auf Basis des Ergebnisses einer Schachpartie. Grundlage ist die einfache Formel:

- **Sieg**: Gegner-DWZ + 400  
- **Remis**: Gegner-DWZ  
- **Niederlage**: Gegner-DWZ − 400

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
Deine Performance liegt bei 1900
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

