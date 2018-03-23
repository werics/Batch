@echo off

For /f %%d in ('date /t') do (set mydate=%%d)
For /f %%t in ('time /t') do (set mytime=%%t)

echo Beginning at ： %mydate% %mytime% >>d:\exportdhcpscopes\dhcpscopes0206.txt


for /f %%i in (d:\exportdhcpscopes\dhcp.txt) do (

netsh dhcp server 172.26.9.15 scope %%i show clients 1 >> d:\exportdhcpscopes\dhcpscopes0206.txt

timeout 2 >nul

)

For /f %%d in ('date /t') do (set mydate=%%d)
For /f %%t in ('time /t') do (set mytime=%%t)

echo Ending at ： %mydate% %mytime% >>d:\exportdhcpscopes\dhcpscopes0206.txt
