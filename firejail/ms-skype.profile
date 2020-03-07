# Firejail profile for Microsoft Office Online - Skype
# This file is overwritten after every install/update
# Persistent local customizations
include ms-skype.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/ms-skype-online
ignore novideo
private-bin ms-skype

# Redirect
include ms-office.profile
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
