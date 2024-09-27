#!/bin/bash

# Imprimir titulo
echo -e "\n██╗  ██╗████████╗████████╗██████╗     ██████╗ ██████╗  ██████╗ ██╗  ██╗██╗   ██╗    ██████╗  ██████╗ ██████╗ ████████╗    ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ 
██║  ██║╚══██╔══╝╚══██╔══╝██╔══██╗    ██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝╚██╗ ██╔╝    ██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗
███████║   ██║      ██║   ██████╔╝    ██████╔╝██████╔╝██║   ██║ ╚███╔╝  ╚████╔╝     ██████╔╝██║   ██║██████╔╝   ██║       ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
██╔══██║   ██║      ██║   ██╔═══╝     ██╔═══╝ ██╔══██╗██║   ██║ ██╔██╗   ╚██╔╝      ██╔═══╝ ██║   ██║██╔══██╗   ██║       ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
██║  ██║   ██║      ██║   ██║         ██║     ██║  ██║╚██████╔╝██╔╝ ██╗   ██║       ██║     ╚██████╔╝██║  ██║   ██║       ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║
╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝         ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝\n"

# Definición de colores
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"

# Solicitar al usuario que ingrese el proxy
echo -e "${YELLOW}Introduce el proxy (ejemplo: http://usuario:contraseña@ip:puerto - http://usuario:contraseña@dominio:puerto - http://ip:puerto - http://dominio:puerto)${ENDCOLOR}"
read -p "Proxy: " proxy

# Solicitar al usuario que ingrese el objetivo
echo -e "\n${YELLOW}Introduce el objetivo (ejemplo: http://ip - http://dominio - ip - dominio):${ENDCOLOR}"
read -p "Objetivo: " target

# Solicitar al usuario que ingrese el objetivo
echo -e "\n${YELLOW}Introduce hasta que puerto deseas escanear (ejemplo: 3000):${ENDCOLOR}"
read -p "Puertos: " ports

# Archivo para almacenar los puertos abiertos
output_file="openPortsHttpProxy.txt"

# Limpiar el archivo si ya existe
rm "$output_file" &>/dev/null

# Escanear puertos del 1 al 65535 y almacenar los puertos abiertos en un archivo
for ((i=1; i<=ports; i++)); do
  status_code=$(curl -o /dev/null -s -w "%{http_code}" --proxy "$proxy" "$target:$i")
  if [ "$status_code" -eq 200 ]; then
    echo -e "\t${GREEN}[*] Port $i - OPEN${ENDCOLOR}"
    echo "Port $i - OPEN" >> "$output_file"
  fi
done
echo -e "\n${GREEN}[+] Escaneo completado, los puertos abiertos han sido guardados en $output_file${ENDCOLOR}"

# Copiar los puertos abiertos en la clipboard
cat "$output_file" | awk '/Port/ {print $2}' | tr '\n' ',' | sed 's/,$//;s/,*$//g' | xclip -sel clip
echo -e "${GREEN}[+] Los puertos han sido copiados en la clipboard${ENDCOLOR}"
