netsh interface ipv4 set address name="Ethernet" static 192.168.1.163 255.255.255.0 192.168.1.1
netsh interface ipv4 add dnsservers "Ethernet" address=192.168.1.1 index=1
netsh interface ipv4 add dnsservers "Ethernet" address=8.8.8.8 index=2

REM Disable IPv6
netsh interface teredo set state disabled
netsh interface ipv6 6to4 set state state=disabled undoonstop=disabled
netsh interface ipv6 isatap set state state=disabled
pause