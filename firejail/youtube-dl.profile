# Firejail profile for youtube-dl
# Description: Downloader of videos from YouTube and other sites
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include youtube-dl.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.netrc
noblacklist ${MUSIC}
noblacklist ${VIDEOS}

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

# breaks when installed via pip
ignore noexec ${HOME}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
#machine-id
netfilter
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
#nosound
notv
nou2f
#novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog
apparmor
disable-mnt
private-bin youtube-dl,python*,ffmpeg
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
#,mime.types,hosts,hostname,pki,alernatives
private-tmp
noexec all
noexec /tmp
ipc-namespace 
machine-id
apparmor
dns 8.8.8.8
dns 8.8.4.41
# memory-deny-write-execute - breaks on Arch
ignore seccomp.drop
ignore shell 
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
