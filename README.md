# HttpProxyPortScanner
ProxyPortScanner es un script en Bash que escanea puertos abiertos en 127.0.0.1 usando un proxy HTTP con autenticación. Reporta solo los puertos que responden con el código de estado 200 OK. Útil para identificar servicios accesibles a través de un proxy

```
for i in {1..65535}; do
  status_code=$(curl -o /dev/null -s -w "%{http_code}" --proxy 'http://lance.friedman:o>WJ5-jD<5^m3@10.129.181.242:3128' http://127.0.0.1:$i)
  if [ "$status_code" -eq 200 ]; then
    echo "[*] Port $i - OPEN"                 
  fi
done
```
