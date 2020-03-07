# Firejail profile for bitwarden
# Description: A secure and free password manager for all of your devices
# This file is overwritten after every install/update.
# Persistent local customisations
include bitwarden.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Bitwarden
ignore noexec /tmp

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-common.inc
include whitelist-var-common.inc

whitelist ${HOME}/.config/Bitwarden
whitelist ${DOWNLOADS}

apparmor
caps.drop all
machine-id
netfilter
no3d
#nodbus - breaks appindicator (tray) functionality
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none
#tracelog - breaks on Arch

private-bin bitwarden
#private-cache
?HAS_APPIMAGE: ignore private-dev
private-dev
private-etc hosts,ssl,ca-certificates
private-opt Bitwarden
private-tmp

#memory-deny-write-execute - breaks on Arch
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
