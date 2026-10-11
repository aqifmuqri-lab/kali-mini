#!/data/data/com.termux/files/usr/bin/bash
clear
echo "=============================="
echo "KALI MINI v3.0 - PRO FIX"
echo "=============================="
echo "[1] Check Username"
echo "[2] Check Email"
echo "[3] Whois + Nmap"
echo "[4] Check Phone"
echo "[5] Game Hack Center"
echo "[0] Exit"
echo "=============================="
read -p "Pilih nombor: " pil

if [ "$pil" = "1" ]; then
  read -p "Username: " user
  termux-open-url "https://instagram.com/$user"

elif [ "$pil" = "2" ]; then
  read -p "Email: " email
  termux-open-url "https://whatsmyname.app/?q=$email"

elif [ "$pil" = "3" ]; then
  read -p "Domain: " target
  whois $target

elif [ "$pil" = "4" ]; then
  read -p "Phone: " phone
  python ~/wa-check.py "$phone"

elif [ "$pil" = "5" ]; then
  python ~/game-hack.py

elif [ "$pil" = "0" ]; then
  echo "Bye!"
else
  echo "Salah pilih"
fi
echo "[5] Game Hack Center"
echo "[6] IP Tracker Pro"
echo "[0] Exit"
