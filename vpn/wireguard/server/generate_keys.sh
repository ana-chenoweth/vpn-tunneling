#!/bin/bash

echo "[+] Generando llaves para el SERVER..."

wg genkey | tee server_privatekey | wg pubkey > server_publickey

echo "[+] Listo."
echo "Private key: $(cat server_privatekey)"
echo "Public key:  $(cat server_publickey)"
