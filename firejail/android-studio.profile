# Firejail profile for android-studio
# This file is overwritten after every install/update
# Persistent local customizations
include android-studio.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.AndroidStudio*
noblacklist ${HOME}/.android
noblacklist ${HOME}/.config/git
noblacklist ${HOME}/.gitconfig
noblacklist ${HOME}/.git-credentials
noblacklist ${HOME}/.gradle
noblacklist ${HOME}/.jack-server
noblacklist ${HOME}/.jack-settings
noblacklist ${HOME}/.java
noblacklist ${HOME}/.local/share/JetBrains
noblacklist ${HOME}/.ssh
noblacklist ${HOME}/.tooling

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,inet,inet6
seccomp
shell none

#private-cache
# private-tmp

# noexec /tmp breaks 'Android Profiler'
#noexec /tmp
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
