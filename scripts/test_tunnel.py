import subprocess

def run(cmd):
    print(f"\n$ {cmd}")
    print(subprocess.getoutput(cmd))

print("=== ESTADO DE WIREGUARD ===")
run("wg")

print("\n=== PRUEBA DE PING ===")
run("ping -c 4 10.10.0.1")
