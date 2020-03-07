# Firejail profile for conkeror
# This file is overwritten after every install/update
# Persistent local customizations
include conkeror.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.conkeror.mozdev.org

include disable-common.inc
include disable-programs.inc

whitelist ${HOME}/.conkeror.mozdev.org
whitelist ${HOME}/.conkerorrc
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.lastpass
whitelist ${HOME}/.pentadactyl
whitelist ${HOME}/.pentadactylrc
whitelist ${HOME}/.vimperator
whitelist ${HOME}/.vimperatorrc
whitelist ${HOME}/.zotero
whitelist ${HOME}/dwhelper
whitelist ${DOWNLOADS}
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp

disable-mnt
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
