# Firejail profile for yandex-browser
# This file is overwritten after every install/update
# Persistent local customizations
include yandex-browser.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/yandex-browser
noblacklist ${HOME}/.cache/yandex-browser-beta
noblacklist ${HOME}/.config/yandex-browser
noblacklist ${HOME}/.config/yandex-browser-beta

mkdir ${HOME}/.cache/yandex-browser
mkdir ${HOME}/.cache/yandex-browser-beta
mkdir ${HOME}/.config/yandex-browser
mkdir ${HOME}/.config/yandex-browser-beta
whitelist ${HOME}/.cache/yandex-browser
whitelist ${HOME}/.cache/yandex-browser-beta
whitelist ${HOME}/.config/yandex-browser
whitelist ${HOME}/.config/yandex-browser-beta

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
