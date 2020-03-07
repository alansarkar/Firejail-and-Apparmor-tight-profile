# Firejail profile for arora
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/arora.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.cache/moonchild productions/arora
noblacklist ${HOME}/.moonchild productions/arora

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

# These are uncommented in the Firefox profile. If you run into trouble you may
# want to uncomment (some of) them.
#whitelist ${HOME}/dwhelper
#whitelist ${HOME}/.zotero
#whitelist ${HOME}/.vimperatorrc
#whitelist ${HOME}/.vimperator
#whitelist ${HOME}/.pentadactylrc
#whitelist ${HOME}/.pentadactyl
#whitelist ${HOME}/.keysnail.js
#whitelist ${HOME}/.config/gnome-mplayer
#whitelist ${HOME}/.cache/gnome-mplayer/plugin
#whitelist ${HOME}/.pki
#whitelist ${HOME}/.lastpass

# For silverlight
#whitelist ${HOME}/.wine-pipelight
#whitelist ${HOME}/.wine-pipelight64
#whitelist ${HOME}/.config/pipelight-widevine
#whitelist ${HOME}/.config/pipelight-silverlight5.1

mkdir ${HOME}/.cache/moonchild productions/arora
mkdir ${HOME}/.moonchild productions
whitelist ${DOWNLOADS}
whitelist ${HOME}/.cache/moonchild productions/arora
whitelist ${HOME}/.moonchild productions
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog
private 
noexec all
noexec /tmp
 private-bin arora
private-dev 
# (disabled for now as it will interfere with webcam use in arora)
#private-etc hosts,ssl,ca-certificates
private-opt arora
private-tmp

disable-mnt
name why-do-track-me
#apparmor
dns 8.8.8.8
dns 8.8.4.4
hostname are-ugay
#private-toggle
netfilter
#netfilter =/etc/firejail/nolocal.net
blacklist all
ipc-namespace
noroot
shell none
read-only all
private-opt all

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
