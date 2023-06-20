# README

如何使用 OpenSSL 建立開發測試用途的自簽憑證[ref]

透過 OpenSSL 命令產生出自簽憑證與相對應的私密金鑰

```sh
openssl req -x509 -new -nodes -sha256 -utf8 -days 3650 -newkey rsa:2048 -keyout server.key -out server.crt -config ssl.conf
```

透過 OpenSSL 命令產生 PKCS#12 憑證檔案 (*.pfx 或 *.p12)

```sh
openssl pkcs12 -export -in server.crt -inkey server.key -out server.pfx
```

server.key (私密金鑰) (使用 PEM 格式) (無密碼保護)
server.crt (憑證檔案) (使用 PEM 格式)
server.pfx (PFX 檔案) (使用 PKCS#12 格式)

[ref]: https://blog.miniasp.com/post/2019/02/25/Creating-Self-signed-Certificate-using-OpenSSL "Creating-Self-signed-Certificate-using-OpenSSL"
