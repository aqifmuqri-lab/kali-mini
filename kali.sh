#!/bin/bash
clear
echo "aqifmuqri-lab v6.4 STABLE | CelcomDigi"
echo "Long Lama, Sarawak - READY TO PUSH"
echo ""
ip4=$(curl -s ifconfig.me)
ip6=$(curl -s ifconfig.co 2>/dev/null)
echo "IPv4: $ip4"
echo "IPv6: $ip6 (kalau ada)"
echo ""
curl -s http://ip-api.com/json/$ip4 | python3 -m json.tool
