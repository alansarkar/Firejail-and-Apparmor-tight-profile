# Firejail profile for tor
# Description: Anonymizing overlay network for TCP
# This file is overwritten after every install/update
# Persistent local customizations
include tor.local
# Persistent global definitions
include globals.local

# How to use:
# Create a script called anything (e.g. mytor)
# with the following contents:

# #!/bin/bash
# TORCMD="tor --defaults-torrc /usr/share/tor/tor-service-defaults-torrc -f /etc/tor/torrc --RunAsDaemon 1"
# sudo -b daemon -f -d -- firejail --profile=/home/<username>/.config/firejail/tor.profile $TORCMD

# You'll also likely want to disable the system service (if it exists)
# Run mytor (or whatever you called the script above) whenever you want to start tor

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.keep setuid,setgid,net_bind_service,dac_read_search
ipc-namespace
machine-id
netfilter
no3d
nodvd
nogroups
nonewprivs
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
writable-var

disable-mnt
private
private-bin tor,bash
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
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
