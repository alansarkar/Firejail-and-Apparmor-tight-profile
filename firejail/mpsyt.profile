# Firejail profile for mpsyt
# Description: Terminal based YouTube player and downloader
# This file is overwritten after every install/update
# Persistent local customizations
include mpsyt.local
# Persistent global definitions
include globals.local

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

noblacklist ${HOME}/.config/mpv
noblacklist ${HOME}/.mplayer
noblacklist ${HOME}/.config/mps-youtube
noblacklist ${HOME}/.netrc
noblacklist ${HOME}/mps
noblacklist ${MUSIC}
noblacklist ${VIDEOS}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.config/mps-youtube
whitelist ${HOME}/.config/mpv
whitelist ${HOME}/.mplayer
whitelist ${HOME}/.config/mps-youtube
whitelist ${HOME}/.netrc
whitelist ${HOME}/mps
whitelist ${MUSIC}
whitelist ${VIDEOS}
whitelist ${DOWNLOADS}
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
# Seems to cause issues with Nvidia drivers sometimes
nogroups
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin mpsyt,mplayer,mpv,youtube-dl,python*,env,ffmpeg
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
