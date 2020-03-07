# Firejail profile for enpass
# Description: A multiplatform password manager
# This file is overwritten after every install/update.
# Persistent local customisations
include enpass.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/Enpass
noblacklist ${HOME}/.config/sinew.in
noblacklist ${HOME}/.config/Sinew Software Systems
noblacklist ${HOME}/.local/share/Enpass
noblacklist ${DOCUMENTS}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

whitelist ${HOME}/.cache/Enpass
whitelist ${HOME}/.config/sinew.in
whitelist ${HOME}/.config/Sinew Software Systems
whitelist ${HOME}/.local/share/Enpass
whitelist ${DOCUMENTS}

include whitelist-var-common.inc

# machine-id and nosound break audio notification functionality
# comment both if you need that functionality or put 'ignore machine-id'
# and 'ignore nosound' in your enpass.local

caps.drop all
machine-id
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
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog

private-bin dirname,Enpass,importer_enpass,sh,readlink
?HAS_APPIMAGE: ignore private-dev
private-dev
private-opt Enpass
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
