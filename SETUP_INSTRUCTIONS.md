# 🚀 Lead Stage Tracker Setup & Deployment Instructions

Diese Datei erklärt dir, wie du das HubSpot Lead Stage Tracker Modul aufbaust und deployst.

## Quickstart (Automatisiert) ⚡

Die einfachste Methode - führe einfach einen Befehl aus:

```bash
# 1. Gehe zum Projekt-Verzeichnis
cd /path/to/hubspot-lead-stage-tracker

# 2. Führe das Setup-Script aus (alles automatisch)
chmod +x build-and-deploy.sh
./build-and-deploy.sh

# 3. Authentifiziere dich mit HubSpot
hs auth

# 4. Starte das Deployment
hs project upload
```

## Schritt-für-Schritt Anleitung 📋

### Schritt 1: Repository klonen
```bash
git clone https://github.com/JulioBanana69/hubspot-lead-stage-tracker.git
cd hubspot-lead-stage-tracker
```

### Schritt 2: Dependencies installieren
```bash
npm install
```

### Schritt 3: Projekt bauen
```bash
npm run build
```

Dies erstellt eine `dist/` Verzeichnis mit allen kompilierten Dateien.

### Schritt 4: HubSpot CLI installieren
```bash
npm install -g @hubspot/cli
```

### Schritt 5: Mit HubSpot authentifizieren
```bash
hs auth
```

Das öffnet einen Browser, wo du dich mit deinem HubSpot-Konto anmelden kannst.

### Schritt 6: Modul zu HubSpot hochladen
```bash
hs project upload
```

Das lädt das Modul in dein HubSpot-Konto hoch.

## Im HubSpot Layout-Editor verwenden 🎯

1. Gehe zu **Deals** > **Deal-Ansicht anpassen**
2. Klicke auf **Custom Modules** hinzufügen
3. Wähle **Lead Stage Tracker** aus
4. Konfiguriere die Datenfelder:
   - Deal Name → Property "dealname"
   - Owner → Property "dealstage"
   - Lead Type → Custom Property
   - Stages → Pipeline-Stadien

## Troubleshooting 🔧

**Problem:** `npm install` funktioniert nicht
- Lösung: Node.js neu installieren:
  ```bash
  brew install node
  ```

**Problem:** `hs auth` funktioniert nicht
- Lösung: HubSpot CLI aktualisieren:
  ```bash
  npm install -g @hubspot/cli@latest
  ```

**Problem:** Upload fehlgeschlagen
- Lösung: Stelle sicher, dass du angemeldet bist:
  ```bash
  hs auth list
  ```

## Dateistruktur 📁

```
├── src/
│   ├── components/
│   │   ├── LeadStageTracker.tsx
│   │   └── LeadStageTracker.module.css
│   ├── types/
│   │   └── index.ts
│   └── index.tsx
├── dist/                 # Build-Ausgabe
├── package.json
├── tsconfig.json
├── webpack.config.js
└── build-and-deploy.sh   # Automatisches Setup-Script
```

## Support & Weitere Hilfe 💬

Bei Fragen oder Problemen öffne ein **Issue** auf GitHub:
https://github.com/JulioBanana69/hubspot-lead-stage-tracker/issues
