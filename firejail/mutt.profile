# Firejail profile for mutt
# Description: Text-based mailreader supporting MIME, GPG, PGP and threading
# This file is overwritten after every install/update
# Persistent local customizations
include mutt.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

noblacklist /var/mail
noblacklist /var/spool/mail
noblacklist ${HOME}/.Mail
noblacklist ${HOME}/.bogofilter
noblacklist ${HOME}/.cache/mutt
noblacklist ${HOME}/.config/nano
noblacklist ${HOME}/.elinks
noblacklist ${HOME}/.emacs
noblacklist ${HOME}/.emacs.d
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.mail
noblacklist ${HOME}/.mailcap
noblacklist ${HOME}/.msmtprc
noblacklist ${HOME}/.mutt
noblacklist ${HOME}/.muttrc
noblacklist ${HOME}/.nanorc
noblacklist ${HOME}/.signature
noblacklist ${HOME}/.vim
noblacklist ${HOME}/.viminfo
noblacklist ${HOME}/.vimrc
noblacklist ${HOME}/.w3m
noblacklist ${HOME}/Mail
noblacklist ${HOME}/mail
noblacklist ${HOME}/postponed
noblacklist ${HOME}/sent

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet
#,inet6
seccomp
shell none
#writable-run-user

private-dev
privateork/
private-etc hosts,ssl,ca-certificates
private-opt all
ipc-namespace
machine-id
ignore shell
shell none 
ignore seccomp.drop
apparmor
dns 8.8.8.8
dns 8.8.4.4
noexec all
noexec /tmp
netfilter
netfilter /etc/firejail/nolocal.net
#private-cache
private-tmp
read-only all
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
