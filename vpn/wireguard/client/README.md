# WireGuard – Cliente

## Levantar cliente
```bash
sudo wg-quick up wg0
```

## Apagar cliente
```bash
sudo wg-quick down wg0
```

## Probar conexión
```bash
ping 10.10.0.1
```

**AllowedIPs = 0.0.0.0/0: todo el tráfico pasa por el túnel.**

Ponemos PersistentKeepalive=25 para NAT/firewall-friendly.