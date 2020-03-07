# Firejail profile for supertuxkart
# Description: Free kart racing game.
# This file is overwritten after every install/update
# Persistent local customizations
include supertuxkart.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/supertuxkart
noblacklist ${HOME}/.cache/supertuxkart
noblacklist ${HOME}/.local/share/supertuxkart

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc
include disable-interpreters.inc

mkdir ${HOME}/.config/supertuxkart
mkdir ${HOME}/.cache/supertuxkart
mkdir ${HOME}/.local/share/supertuxkart
whitelist ${HOME}/.config/supertuxkart
whitelist ${HOME}/.cache/supertuxkart
whitelist ${HOME}/.local/share/supertuxkart
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-bin supertuxkart
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-tmp
private-opt none
private-srv none

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
