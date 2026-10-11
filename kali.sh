#!/bin/bash
clear
echo "=============================="
echo " aqifmuqri-lab v6.3 | CelcomDigi"
echo " Long Lama, Sarawak"
echo "=============================="
echo ""
echo "[1] Auto-Detect IP Saya"
echo "[2] Track IP Manual + Google Maps"
echo "[0] Exit"
echo ""
read -p "Pilih > " pil
if [ "$pil" == "1" ]; then
  myip=$(curl -s ifconfig.me)
  echo "IP Kau: $myip"
  curl -s http://ip-api.com/json/$myip | python3 -m json.tool
  data=$(curl -s http://ip-api.com/json/$myip)
  lat=$(echo $data | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('lat',''))")
  lon=$(echo $data | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('lon',''))")
  echo ""
  echo "Google Maps: https://www.google.com/maps?q=$lat,$lon"
elif [ "$pil" == "2" ]; then
  read -p "Masukkan IP target: " ip
  curl -s http://ip-api.com/json/$ip | python3 -m json.tool
  data=$(curl -s http://ip-api.com/json/$ip)
  lat=$(echo $data | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('lat',''))")
  lon=$(echo $data | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('lon',''))")
  echo ""
  echo "Google Maps: https://www.google.com/maps?q=$lat,$lon"
fi
