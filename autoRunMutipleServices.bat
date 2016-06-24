@echo off
ver
start /D "C:\nginx" nginx.exe
start /D "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe" vmware.exe -n -x "D:\VM\confluence\confluence.vmx"
echo %time%
timeout 8 > NUL
echo %time%
start /D "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe" vmware.exe -t -x "D:\VM\gitlab\gitlab.vmx"
start /D "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe" vmware.exe -t -x "E:\VM\lab-site-newlab-site.vmx"
start /D "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe" vmware.exe -t -x "C:\Users\Administrator\Documents\Virtual Machines\Ubuntu 64 位\Ubuntu 64 位.vmx"
start /D "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe" vmware.exe -t -x "C:\Users\Administrator\Documents\Virtual Machines\Ubuntu 64 位 (2)\Ubuntu 64 位 (2).vmx"


pause