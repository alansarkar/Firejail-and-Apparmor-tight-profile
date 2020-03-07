# Firejail profile for snox
# This file is overwritten after every install/update
# Persistent local customizations
include snox.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/snox
noblacklist ${HOME}/.config/snox

#mkdir ${HOME}/.cache/dnox
#mkdir ${HOME}/.config/dnox
mkdir ${HOME}/.cache/snox
mkdir ${HOME}/.config/snox
whitelist ${HOME}/.cache/snox
whitelist ${HOME}/.config/snox

# Redirect
include chromium-common.profile
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
