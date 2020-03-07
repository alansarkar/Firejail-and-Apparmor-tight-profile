# Firejail profile for krunner
# Description: Framework for providing different actions given a string query
# This file is overwritten after every install/update
# Persistent local customizations
include krunner.local
# Persistent global definitions
include globals.local

# - programs started in krunner run with this generic profile.
# - when a file is opened in krunner, the file viewer runs in its own sandbox
#   with its own profile, if it is sandboxed automatically.

# noblacklist ${HOME}/.cache/krunner
# noblacklist ${HOME}/.cache/krunnerbookmarkrunnerfirefoxdbfile.sqlite*
# noblacklist ${HOME}/.config/chromium
noblacklist ${HOME}/.config/krunnerrc
noblacklist ${HOME}/.kde/share/config/krunnerrc
noblacklist ${HOME}/.kde4/share/config/krunnerrc
# noblacklist ${HOME}/.local/share/baloo
# noblacklist ${HOME}/.mozilla

include disable-common.inc
# include disable-devel.inc
# include disable-interpreters.inc
# include disable-passwdmgr.inc
# include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
protocol unix,inet,inet6
seccomp

# #private-cache
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
