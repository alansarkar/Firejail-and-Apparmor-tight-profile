# Firejail profile for musescore
# Description: Free music composition and notation software
# This file is overwritten after every install/update
# Persistent local customizations
include musescore.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/MusE
noblacklist ${HOME}/.config/MuseScore
noblacklist ${HOME}/.local/share/data/MusE
noblacklist ${HOME}/.local/share/data/MuseScore
noblacklist ${DOCUMENTS}
noblacklist ${MUSIC}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

# private-bin musescore,mscore
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
