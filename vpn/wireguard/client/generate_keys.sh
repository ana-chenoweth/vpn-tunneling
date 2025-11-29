#!/bin/bash

echo "[+] Generando llaves para el CLIENT..."

wg genkey | tee client_privatekey | wg pubkey > client_publickey

echo "[+] Listo."
echo "Private key: $(cat client_privatekey)"
echo "Public key:  $(cat client_publickey)"
