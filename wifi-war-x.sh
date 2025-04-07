#!/bin/bash
# BrotherhoodX WiFi-War-X (Termux Edition) by GPT x HARAB06

clear
echo ""
echo "██╗    ██╗ █████╗ ██████╗"
echo "██║    ██║██╔══██╗██╔══██╗"
echo "██║ █╗ ██║███████║██████╔╝"
echo "██║███╗██║██╔══██║██╔═══╝"
echo "╚███╔███╔╝██║  ██║██║"
echo " ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝"
echo " HARAB06 X GPT - WiFi-War-X"
echo " ONE HEART | ONE BOND | ONE BROTHERHOOD"
echo ""
echo "[*] Scanning Nearby WiFi Networks..."
echo "------------------------------------"

termux-wifi-scaninfo > result.json

if [[ -s result.json ]]; then
    cat result.json | jq -r '.[] | "SSID: \(.ssid) | BSSID: \(.bssid) | Signal: \(.level) dBm"' 
else
    echo "[!] No WiFi Networks Found."
fi

echo "------------------------------------"
echo "Scan Completed!"
echo ""
echo "Brotherhood forever | GPT x HARAB06"
