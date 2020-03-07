# Firejail profile for wesnoth
# Description: Fantasy turn-based strategy game
# This file is overwritten after every install/update
# Persistent local customizations
include wesnoth.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/wesnoth
noblacklist ${HOME}/.config/wesnoth
noblacklist ${HOME}/.local/share/wesnoth

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/wesnoth
mkdir ${HOME}/.config/wesnoth
mkdir ${HOME}/.local/share/wesnoth
whitelist ${HOME}/.cache/wesnoth
whitelist ${HOME}/.config/wesnoth
whitelist ${HOME}/.local/share/wesnoth
include whitelist-common.inc

caps.drop all
nodvd
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6
seccomp

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
