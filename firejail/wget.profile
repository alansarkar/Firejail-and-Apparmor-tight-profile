# Firejail profile for wget
# Description: Retrieves files frowm independent hotkeys
#

# terminal emulator
super + Return
	 termite  
#urxm the web
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include wget.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

noblacklist ${HOME}/.wget-hsts
noblacklist ${HOME}/.wgetrc

include disable-common.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

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
seccomp
shell none
private-opt all
#private-etc hosts,ssl,ca-certificates
private-bin wget
private-dev
private-etc hosts,ssl,ca-certificates
#resolv.conf
#,pki,crypto-policies
private-tmp
#private-cache 
#private
ipc-namespace
machine-id
noexec all
noexec /tmp
dns 8.8.8.8
dns 8.8.4.4
netfilter /etc/firejail/nolocal.net 
netfilter 
blacklist all
hostname dont-stock-me
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
#private /home/jerome/w/
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
