# WireGuard – Servidor


## Archivos
- wg0.conf → configuración del servidor
- generate_keys.sh → genera claves privadas/públicas

### Hacerlo ejecutable
- `chmod +x generate_keys.sh`

## Levantar el servidor
```bash
sudo wg-quick up wg0

**Solo cambia las claves cuando las generes.**
**Esto ya está listo para correr en macOS, Linux, EC2 o cualquier máquina real.**