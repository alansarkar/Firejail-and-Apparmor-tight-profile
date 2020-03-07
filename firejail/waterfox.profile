# Firejail profile for waterfox
# This file is overwritten after every install/update
# Persistent local customizations
include waterfox.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.cache/waterfox
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.waterfox

mkdir ${HOME}/.cache/mozilla/firefox
mkdir ${HOME}/.mozilla
mkdir ${HOME}/.cache/waterfox
mkdir ${HOME}/.waterfox
whitelist ${HOME}/.cache/mozilla/firefox
whitelist ${HOME}/.cache/waterfox
whitelist ${HOME}/.mozilla
whitelist ${HOME}/.waterfox

# waterfox requires a shell to launch on Arch. We can possibly remove sh though.
#private-bin waterfox,which,sh,dbus-launch,dbus-send,env,bash
# private-etc hosts,ssl,ca-certificates
#private-etc hosts,ssl,ca-certificates

# Redirect
include firefox-common.profile
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
