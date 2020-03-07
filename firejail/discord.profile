# Firejail profile for discord
# Description: Classic non-graphical (text-mode) web browser
# This file is overwritten after every install/update
# Persistent local customizations
include discord.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet
#,inet6
seccomp
shell none
tracelog
ignore seccomp.drop
ignore shell
#private-bin discord,tar,gunzip,gzip,bunzip2,bzip2,gpg-zip,unzip,mzip,torsocks
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
#,alternatives,pki,crypto-policies
private-tmp
private-opt all
ipc-namespace
machine-id
noexec all
disable-mnt
shell none
ignore shell
noexec /tmp
apparmor
dns 8.8.8.8
dns 8.8.4.4
netfilter  /etc/firejail/nolocal.net 
netfilter 
blacklist all
apparmor  
machine-id  
#disable-mnt  
#private-cache 
#ignore seccomp.drop 
#ignore shell  
#private-etc hosts,ca-certificates,ssl   
private-opt all 
seccomp  
read-only all 
noroot 
#debug 
caps.drop all  
shell none 
ipc-namespace   
#cpu 2  
#private 
noexec all  
noexec /tmp  
nogroups   
nonewprivs 
netfilter 
blacklist all  
netfilter  
private-dev 
netfilter /etc/firejail/nolocal.net 
private-opt all  

private-tmp 
dns 8.8.8.8 
dns 8.8.4.4 
 
#echo -e "$(cat cm)" >> k
