# Firejail profile for QOwnNotes
# Description: Plain-text file notepad with markdown support and ownCloud integration
# This file is overwritten after every install/update
# Persistent local customizations
include QOwnNotes.local
# Persistent global definitions
include globals.local

noblacklist ${DOCUMENTS}
noblacklist ${HOME}/Nextcloud/Notes
noblacklist ${HOME}/.config/PBE
noblacklist ${HOME}/.local/share/PBE

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/Nextcloud/Notes
mkdir ${HOME}.config/PBE
mkdir ${HOME}/.local/share/PBE
whitelist ${DOCUMENTS}
whitelist ${HOME}/Nextcloud/Notes
whitelist ${HOME}/.config/PBE
whitelist ${HOME}/.local/share/PBE
include whitelist-common.inc
include whitelist-var-common.inc

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

disable-mnt
private-bin QOwnNotes,gio
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
