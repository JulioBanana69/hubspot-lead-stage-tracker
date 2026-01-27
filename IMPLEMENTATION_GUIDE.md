# HubSpot Lead Stage Tracker - Implementation Guide

## 🚀 Schnellstart (10 Minuten)

### Schritt 1: Clone Repository
```bash
git clone https://github.com/JulioBanana69/hubspot-lead-stage-tracker.git
cd hubspot-lead-stage-tracker
```

### Schritt 2: Dependencies installieren
```bash
npm install
```

### Schritt 3: HubSpot CLI installieren
```bash
npm install -g @hubspot/cli
hs auth
```

### Schritt 4: Projekt bauen & deployen
```bash
npm run build
npm run upload
```

---

## 📋 Detaillierte Setup-Anleitung

### Voraussetzungen
- Node.js 16+ installiert
- HubSpot Developer Account
- Admin-Zugriff auf dein HubSpot Portal

### HubSpot CLI Setup

1. **CLI installieren:**
```bash
npm install -g @hubspot/cli@latest
```

2. **Mit HubSpot anmelden:**
```bash
hs auth
```
Follge den Anweisungen. Du wirst zur HubSpot-Website weitergeleitet.

3. **Dein Portal auswählen:**
```bash
hs account list
hs account use <your-portal-id>
```

### Projekt-Konfiguration

1. **Überprüfe dein `hs-config.yml`:**
```yaml
default_account: YOUR_PORTAL_ID
```

2. **Projekt initialisieren:**
```bash
hs project create
```

### Build & Deployment

**Development Mode:**
```bash
npm run dev
```
Das Template wird bei Änderungen automatisch aktualisiert.

**Production Build:**
```bash
npm run build
```

**Zum HubSpot Portal uploaden:**
```bash
npm run upload
```

---

## 🔧 Modulkonfiguration

### 1. Module im HubSpot Dashboard hinzufügen

1. Gehe zu Settings → CRM Setup → Datenmodell → Deals
2. Wähle "Custom Module" und "Lead stage tracker"
3. Konfiguriere die Felder:
   - `dealname` (Deal-Name)
   - `dealstage` (Pipeline-Phase)
   - `hubspot_owner_id` (Owner)
   - `dealtype` (Deal-Typ)

### 2. Layout anpassen

1. Öffne eine Deal-Seite in deinem HubSpot
2. Klicke auf "Edit" → "Layout-Editor"
3. Suche nach "Lead stage tracker"
4. Füge das Modul zum Layout hinzu
5. Positioniere es nach deinen Vorlieben

---

## 📊 Features

✅ Visuelle Pipeline-Anzeige (farbig kodiert)
✅ Live-Status-Updates
✅ Responsive Design (Mobile-optimiert)
✅ Automatische Phase-Tracking
✅ Demo-Date Anzeige
✅ Owner-Informationen
✅ TypeScript für Type-Safety
✅ CSS Module für Styling

---

## 🎨 Styling anpassen

Ändere Farben in `src/styles/LeadStageTracker.module.css`:

```css
--color-primary-orange: #ff6b35;  /* Abgeschlossene Phasen */
--color-primary-green: #2d9d78;   /* Aktuelle Phase */
--color-gray-light: #f5f5f5;      /* Pending-Phasen */
```

---

## 🐛 Troubleshooting

### Problem: "CLI nicht gefunden"
```bash
npm install -g @hubspot/cli@latest
```

### Problem: "Authentifizierung fehlgeschlagen"
```bash
hs auth logout
hs auth
```

### Problem: "Module wird nicht angezeigt"
- Stelle sicher, dass du Admin-Zugriff hast
- Leere deinen Browser-Cache
- Fahre HubSpot neu

---

## 📚 Weitere Ressourcen

- [HubSpot CLI Docs](https://developers.hubspot.com/docs/cms/developer-reference/local-development)
- [HubSpot Module Docs](https://developers.hubspot.com/docs/cms/modules)
- [TypeScript Docs](https://www.typescriptlang.org/docs/)

---

Fragen? Öffne ein Issue im Repository! 🚀
