#!/bin/bash

# HubSpot Lead Stage Tracker - Automatisiertes Setup-Script
# Dieses Script führt alle Schritte zur Einrichtung aus

echo "=================================================="
echo "  HubSpot Lead Stage Tracker - Setup"
echo "=================================================="
echo ""

# Schritt 1: Repository klonen
echo "[1/6] Klone Repository..."
git clone https://github.com/JulioBanana69/hubspot-lead-stage-tracker.git
cd hubspot-lead-stage-tracker
echo "✓ Repository geklont"
echo ""

# Schritt 2: Node Modules installieren
echo "[2/6] Installiere npm Packages..."
npm install
echo "✓ npm Packages installiert"
echo ""

# Schritt 3: HubSpot CLI installieren
echo "[3/6] Installiere HubSpot CLI..."
npm install -g @hubspot/cli@latest
echo "✓ HubSpot CLI installiert"
echo ""

# Schritt 4: HubSpot Authentifizierung
echo "[4/6] HubSpot Authentifizierung..."
echo "Bitte führe 'hs auth' aus, um dich bei HubSpot anzumelden"
echo "Danach wechsle zu deinem Portal:"
echo "  hs account list"
echo "  hs account use <portal-id>"
echo ""
echo "Weiterfahren? (Enter zum Fortfahren)"
read

# Schritt 5: Projekt bauen
echo "[5/6] Baue Projekt..."
npm run build
echo "✓ Projekt gebaut"
echo ""

# Schritt 6: Deployen
echo "[6/6] Deploye zu HubSpot..."
npm run upload
echo "✓ Deployment abgeschlossen"
echo ""

echo "=================================================="
echo "  ✅ Setup abgeschlossen!"
echo "=================================================="
echo ""
echo "Nächste Schritte:"
echo "1. Gehe zu deinem HubSpot Portal"
echo "2. Öffne eine Deal-Seite"
echo "3. Klicke auf 'Edit' → 'Layout-Editor'"
echo "4. Suche nach 'Lead stage tracker'"
echo "5. Füge das Modul hinzu und speichere"
echo ""
echo "Dokumentation: QUICKSTART.md oder IMPLEMENTATION_GUIDE.md"
echo ""
