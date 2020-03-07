# Firejail profile for dropbox
# This file is overwritten after every install/update
# Persistent local customizations
include dropbox.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/autostart
noblacklist ${HOME}/.dropbox
noblacklist ${HOME}/.dropbox-dist

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.dropbox
mkdir ${HOME}/.dropbox-dist
mkdir ${HOME}/Dropbox
mkfile ${HOME}/.config/autostart/dropbox.desktop
whitelist ${HOME}/.config/autostart/dropbox.desktop
whitelist ${HOME}/.dropbox
whitelist ${HOME}/.dropbox-dist
whitelist ${HOME}/Dropbox
include whitelist-common.inc

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
protocol unix,inet,inet6
seccomp
shell none

private-dev
private-tmp

noexec /tmp
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
