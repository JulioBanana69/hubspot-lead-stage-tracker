# 🚀 DEPLOY GUIDE - Vollständige Umsetzung bis HubSpot

## SCHRITT 1: Repository klonen

Öffne dein Terminal und führe aus:

```bash
git clone https://github.com/JulioBanana69/hubspot-lead-stage-tracker.git
cd hubspot-lead-stage-tracker
```

## SCHRITT 2: npm Dependencies installieren

```bash
npm install
```

Das installiert alle notwendigen Pakete (React, TypeScript, Webpack, etc.)

## SCHRITT 3: HubSpot CLI installieren

```bash
npm install -g @hubspot/cli@latest
```

## SCHRITT 4: Bei HubSpot anmelden

```bash
hs auth
```

Du wirst zur HubSpot Login-Seite weitergeleitet. Nach erfolgreicher Anmeldung wechsle dein Portal:

```bash
hs account list  # Zeigt deine Portale
hs account use <YOUR_PORTAL_ID>  # Ersetze mit deiner Portal ID
```

## SCHRITT 5: Projekt bauen

```bash
npm run build
```

Das kompiliert deinen TypeScript/React Code zu einer optimierten Version.

## SCHRITT 6: Zu HubSpot deployen

```bash
npm run upload
```

Das lädt das Modul zu deinem HubSpot Portal hoch.

## SCHRITT 7: Modul in HubSpot nutzen

1. Öffne dein **HubSpot CRM Portal**
2. Gehe zu einer **Deal-Seite** (z.B. unter "Deals" → Wähle einen Deal)
3. Klicke oben rechts auf **"Edit"** 
4. Klicke auf **"Edit Layout"** oder **"Layout-Editor"**
5. Suche nach **"Lead stage tracker"** in der Modulsammlung (oben in der Suchbox)
6. Klicke auf das Modul und **füge es hinzu**
7. Positioniere es nach deinen Wünschen auf der Seite
8. Klicke **"Done"** oder **"Save"**

✅ **FERTIG!** Das Lead Stage Tracker Modul ist jetzt aktiv auf deinen Deal-Seiten!

---

## Troubleshooting

### Problem: "Command not found: npm"
**Lösung:** Node.js ist nicht installiert. Download von https://nodejs.org/

### Problem: "npm ERR! 404 Not Found"
**Lösung:** Stelle sicher, dass du mit npm install alle Dependencies installiert hast

### Problem: "Authentifizierung fehlgeschlagen"
**Lösung:** Führe aus: `hs auth logout` dann `hs auth` erneut aus

### Problem: "Module wird nicht angezeigt"
**Lösung:** 
- Leere deinen Browser-Cache (Ctrl+Shift+Del / Cmd+Shift+Delete)
- Refreshe die HubSpot Seite (F5)
- Stelle sicher, dass der Build erfolgreich war (`npm run build` hatte keine Fehler)

---

## Was dein Modul kann

✅ Zeigt alle Sales Pipeline-Phasen visuell an
✅ Orange Badges für abgeschlossene Phasen
✅ Grünes Badge für aktuelle Phase (mit Pulsing-Animation)
✅ Automatische Synchronisierung mit Deal-Status
✅ Responsive Design (funktioniert auf Mobile & Desktop)
✅ Zeigt Deal-Owner, Lead-Type und Demo-Informationen

---

## Nächste Schritte

Nach dem erfolgreichen Deployment kannst du:

1. **Anpassen:** Ändere Farben in `src/styles/LeadStageTracker.module.css`
2. **Pipeline erweitern:** Bearbeite die Stages in `src/components/LeadStageTracker.tsx`
3. **In Workflows integrieren:** Nutze das Modul in deinen HubSpot Automationen

Alles Weitere findest du in `IMPLEMENTATION_GUIDE.md`

🎉 **Viel Erfolg mit deinem Lead Stage Tracker!**
