# Firejail profile for Xephyr
# This file is overwritten after every install/update
# Persistent local customizations
include Xephyr.local
# Persistent global definitions
include globals.local

#
# This profile will sandbox Xephyr server itself when used with firejail --x11=xephyr.
# To enable it, create a firejail-Xephyr  symlink in /usr/local/bin:
#
#    $ sudo ln -s /usr/bin/firejail /usr/local/bin/Xephyr
#
# or run "sudo firecfg"
#


blacklist /media

whitelist /var/lib/xkb
include whitelist-common.inc

caps.drop all
# Xephyr needs to be allowed access to the abstract Unix socket namespace.
nodvd
nogroups
nonewprivs
# In noroot mode, Xephyr cannot create a socket in the real /tmp/.X11-unix.
# noroot
nosound
notv
nou2f
protocol unix
seccomp
shell none

# using a private home directory
private
# private-bin Xephyr,sh,xkbcomp
# private-bin Xephyr,sh,xkbcomp,strace,bash,cat,ls
private-dev
# private-etc hosts,ssl,ca-certificates
#private-tmp
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
