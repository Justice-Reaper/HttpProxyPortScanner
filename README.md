# HttpProxyPortScanner
Este script en Bash permite escanear puertos abiertos en un objetivo específico utilizando un proxy HTTP

# Características
- Solicita al usuario el proxy, el objetivo y el número de puertos a escanear
- Los puertos abiertos se guardan en un archivo llamado openPortsHttpProxy.txt
- Los puertos abiertos se copian automáticamente en la clipboard

# Dependencias
- Es necesarios instalar las siguientes dependenciales
```
sudo apt install -y git curl sed xclip gawk coreutils              
```

# Uso
```
git clone https://github.com/Justice-Reaper/HttpProxyPortScanner.git
cd HttpProxyPortScanner
chmod +x HttpProxyPortScanner.sh
./HttpProxyPortScanner.sh
```

# Ejemplo
```
./HttpProxyPortScanner.sh

██╗  ██╗████████╗████████╗██████╗     ██████╗ ██████╗  ██████╗ ██╗  ██╗██╗   ██╗    ██████╗  ██████╗ ██████╗ ████████╗    ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ 
██║  ██║╚══██╔══╝╚══██╔══╝██╔══██╗    ██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝╚██╗ ██╔╝    ██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗
███████║   ██║      ██║   ██████╔╝    ██████╔╝██████╔╝██║   ██║ ╚███╔╝  ╚████╔╝     ██████╔╝██║   ██║██████╔╝   ██║       ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
██╔══██║   ██║      ██║   ██╔═══╝     ██╔═══╝ ██╔══██╗██║   ██║ ██╔██╗   ╚██╔╝      ██╔═══╝ ██║   ██║██╔══██╗   ██║       ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
██║  ██║   ██║      ██║   ██║         ██║     ██║  ██║╚██████╔╝██╔╝ ██╗   ██║       ██║     ╚██████╔╝██║  ██║   ██║       ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║
╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝         ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝

Introduce el proxy (ejemplo: http://usuario:contraseña@ip:puerto - http://usuario:contraseña@dominio:puerto - http://ip:puerto - http://dominio:puerto)
Proxy: http://lance.friedman:o>WJ5-jD<5^m3@10.129.181.242:3128

Introduce el objetivo (ejemplo: http://ip - http://dominio - ip - dominio):
Objetivo: 127.0.0.1

Introduce hasta que puerto deseas escanear (ejemplo: 3000):
Puertos: 80
        [*] Port 22 - OPEN
        [*] Port 80 - OPEN

[+] Escaneo completado, los puertos abiertos han sido guardados en openPortsHttpProxy.txt
[+] Los puertos han sido copiados en la clipboard
```
