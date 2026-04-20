#!/bin/bash

echo "--- Bal Küpü Tuzak Servisleri Başlatılıyor ---"

# Port 21: Sahte FTP Mesajı
(while true; do echo -e "220 vsFTPd 3.0.3 Binary Ready"; done) | nc -lk -p 21 &

# Port 23: Sahte Telnet Mesajı
(while true; do echo -e "Welcome to Ubuntu 22.04 LTS\nlogin: "; done) | nc -lk -p 23 &

# Port 80: Sahte Web Başlığı
(while true; do echo -e "HTTP/1.1 200 OK\nServer: Apache/2.4.41\n\n<html><body><h1>It works!</h1></body></html>"; done) | nc -lk -p 80 &

echo "Sanal IP 1: 10.0.2.101"
echo "Sanal IP 2: 10.0.2.102"
echo "Tuzaklar kuruldu! FTP(21), Telnet(23) ve HTTP(80) şu an yayında."
