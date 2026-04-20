# Integrated Honeypot & IPS Architecture
Bu proje, OMÜ Bilgi Güvenliği bölümü için geliştirilmiş, düşük etkileşimli bir Honeypot (Bal Küpü) ve IPS (Saldırı Engelleme Sistemi) entegrasyonudur.

## Özellikler
- **Zabbix v4.4 Deception UI:** Saldırganları oyalayan dinamik dashboard.
- **Snort Entegrasyonu:** Nmap ve Brute Force saldırılarını anlık tespit eder.
- **Fail2Ban IPS:** Tespit edilen saldırganları otomatik olarak banlar.
- **Fake Services:** Port 21 (FTP) ve 23 (Telnet) üzerinde sahte dinleyiciler.
