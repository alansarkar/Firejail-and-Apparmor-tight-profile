# Firejail profile for opera-beta
# This file is overwritten after every install/update
# Persistent local customizations
include opera-beta.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/opera
noblacklist ${HOME}/.config/opera-beta

mkdir ${HOME}/.cache/opera
mkdir ${HOME}/.config/opera-beta
whitelist ${HOME}/.cache/opera
whitelist ${HOME}/.config/opera-beta

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
