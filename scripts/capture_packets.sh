#!/bin/bash

echo "[+] Iniciando captura de paquetes UDP 51820..."
sudo tcpdump -i any udp port 51820 -w captura_vpn.pcap

echo "[+] Archivo guardado: captura_vpn.pcap"
