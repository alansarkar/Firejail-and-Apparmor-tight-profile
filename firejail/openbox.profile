# Firejail profile for openbox
# Description: Standards-compliant, fast, light-weight and extensible window manager
# This file is overwritten after every install/update
# Persistent local customizations
include openbox.local
# Persistent global definitions
include globals.local

# all applications started in OpenBox will run in this profile
noblacklist ${HOME}/.config/openbox
include disable-common.inc

caps.drop all
netfilter
noroot
protocol unix,inet,inet6
seccomp

read-only ${HOME}/.config/openbox/autostart
read-only ${HOME}/.config/openbox/environment
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
