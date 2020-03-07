# Firejail profile for brave
# This file is overwritten after every install/update
# Description: Web browser that blocks ads and trackers by default.
# Persistent local customizations
include brave.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/brave
noblacklist ${HOME}/.config/BraveSoftware
# brave uses gpg for built-in password manager
noblacklist ${HOME}/.gnupg

mkdir ${HOME}/.config/brave
mkdir ${HOME}/.config/BraveSoftware
whitelist ${HOME}/.config/brave
whitelist ${HOME}/.config/BraveSoftware
whitelist ${HOME}/.gnupg

# noexec /tmp is included in chromium-common.profile and breaks Brave
ignore noexec /tmp

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
