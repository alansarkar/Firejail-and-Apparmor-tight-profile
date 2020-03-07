# Firejail profile for freecol
# Description: Turn-based multi-player strategy game
# This file is overwritten after every install/update
# Persistent local customizations
include freecol.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.freecol
noblacklist ${HOME}/.java
noblacklist ${HOME}/.cache/freecol
noblacklist ${HOME}/.config/freecol
noblacklist ${HOME}/.local/share/freecol

# Allow access to java
noblacklist ${PATH}/java
noblacklist /usr/lib/java
noblacklist /etc/java
noblacklist /usr/share/java

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.java
mkdir ${HOME}/.cache/freecol
mkdir ${HOME}/.config/freecol
mkdir ${HOME}/.local/share/freecol
whitelist ${HOME}/.freecol
whitelist ${HOME}/.java
whitelist ${HOME}/.cache/freecol
whitelist ${HOME}/.config/freecol
whitelist ${HOME}/.local/share/freecol
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
ipc-namespace
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
#private-cache
private-dev
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
