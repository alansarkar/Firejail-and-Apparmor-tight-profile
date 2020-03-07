# Firejail profile for Visual Studio Code
# This file is overwritten after every install/update
# Persistent local customizations
include code.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cargo/config
noblacklist ${HOME}/.cargo/registry
noblacklist ${HOME}/.config/Code
noblacklist ${HOME}/.config/Code - OSS
noblacklist ${HOME}/.config/git
noblacklist ${HOME}/.gitconfig
noblacklist ${HOME}/.git-credentials
noblacklist ${HOME}/.pythonrc.py
noblacklist ${HOME}/.vscode
noblacklist ${HOME}/.vscode-oss

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
net none
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none

#private-cache
private-dev
private-tmp

# Disabling noexec ${HOME} for now since it will
# probably interfere with running some programmes
# in VS Code
# noexec ${HOME}
noexec /tmp
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
