# Firejail profile for wire-desktop
# This file is overwritten after every install/update
# Persistent local customizations
include wire-desktop.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Wire

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.config/Wire
whitelist ${HOME}/.config/Wire
whitelist ${DOWNLOADS}

include whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6,netlink
seccomp
shell none

# Note: The current version of Wire is located in /opt/wire-desktop/wire-desktop, and therefore
# it is not in PATH. To use Wire with firejail, run "firejail /opt/wire-desktop/wire-desktop"

disable-mnt
private-bin wire-desktop,bash,sh,env,electron
private-dev
private-etc hosts,ssl,ca-certificates
private-tmp
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
