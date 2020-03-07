# Firejail profile for filezilla
# Description: Full-featured graphical FTP/FTPS/SFTP client
# This file is overwritten after every install/update
# Persistent local customizations
include filezilla.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/filezilla
noblacklist ${HOME}/.filezilla

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-programs.inc
include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

# private-bin breaks --join if the user has zsh set as $SHELL - adding zsh on private-bin
private-bin filezilla,uname,sh,bash,zsh,python*,lsb_release,fzputtygen,fzsftp
private-dev
private-tmp
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
