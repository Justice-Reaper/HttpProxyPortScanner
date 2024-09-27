# HttpProxyPortScanner
Este script en Bash permite escanear puertos abiertos en un objetivo específico utilizando un proxy HTTP

# Características
- Solicita al usuario el proxy, el objetivo y el número de puertos a escanear
- Los puertos abiertos se guardan en un archivo llamado openPortsHttpProxy.txt
- Los puertos abiertos se copian automáticamente en la clipboard

# Dependencias
- Es necesarios instalar las siguientes dependenciales
```
sudo apt intall -y git curl sed tr xclip awk cat              
```

# Uso
```
git clone https://github.com/Justice-Reaper/HttpProxyPortScanner.git
cd HttpProxyPortScanner
chmod +x HttpProxyPortScanner.sh
./HttpProxyPortScanner.sh
```
