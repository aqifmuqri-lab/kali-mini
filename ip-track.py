import requests
import os
os.system("clear")
print("📍 IP TRACKER PRO v4.0")
print("="*30)
ip = input("Masukkan IP target (contoh: 8.8.8.8): ").strip()

if ip == "":
    print("IP kosong la bro")
    exit()

print(f"\n[🔍] Tracking {ip}...\n")

try:
    url = f"http://ip-api.com/json/{ip}?fields=status,message,country,regionName,city,zip,lat,lon,isp,org,as,query"
    r = requests.get(url, timeout=10).json()
    
    if r['status'] == 'fail':
        print(f"[❌] Gagal: {r['message']}")
