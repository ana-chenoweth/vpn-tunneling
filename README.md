# vpn-tunneling
This project involves researching, configuring, and analyzing VPN connections using OpenVPN or WireGuard. The goal is to understand how a secure tunnel works at the network level, the protocols involved, encapsulation, and encrypted traffic.


## Windows cliente
`wg genkey | tee windows_privatekey | wg pubkey > windows_publickey`

Reemplaza con tus llaves en el archivo: `windows-client.conf`:
```[Interface]
Address = 10.10.0.3/24
PrivateKey = WINDOWS_PRIVATE_KEY
DNS = 1.1.1.1

[Peer]
PublicKey = Vs3npy8Eg0oBamDLMBWcgUK7ZTmUXW9QNsd+sSr8FS8=
Endpoint = 192.168.1.17:51820
AllowedIPs = 10.10.0.0/24
PersistentKeepalive = 25```


Agregar Windows al servidor

Editemos tu wg0.conf del servidor:

Ruta:

/opt/homebrew/etc/wireguard/wg0.conf

Agrega esta sección nueva debajo del peer del cliente Mac:
[Peer]
PublicKey = WINDOWS_PUBLIC_KEY
AllowedIPs = 10.10.0.3/32