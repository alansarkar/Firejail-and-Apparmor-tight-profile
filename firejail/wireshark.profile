# Firejail profile for wireshark
# Description: Network traffic analyzer
# This file is overwritten after every install/update
# Persistent local customizations
include wireshark.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/wireshark
noblacklist ${HOME}/.wireshark
noblacklist ${DOCUMENTS}

# Wireshark can use Lua for scripting
noblacklist ${PATH}/lua*
noblacklist /usr/lib/lua
noblacklist /usr/include/lua*
noblacklist /usr/share/lua

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

apparmor
# caps.drop all
caps.keep dac_override,net_admin,net_raw
netfilter
no3d
# nogroups - breaks network traffic capture for unprivileged users
# nonewprivs - breaks network traffic capture for unprivileged users
# noroot
nodvd
nosound
notv
nou2f
novideo
# protocol unix,inet,inet6,netlink
# seccomp - breaks network traffic capture for unprivileged users
shell none
tracelog

# private-bin wireshark
private-dev
# private-etc hosts,ssl,ca-certificates
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
