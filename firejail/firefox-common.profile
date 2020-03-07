# Firejail profile for firefox-common
# This file is overwritten after every install/update
# Persistent local customizations
include firefox-common.local
# Persistent global definitions
# already included by caller profile
#include globals.local

# noexec ${HOME} breaks DRM binaries.
?BROWSER_ALLOW_DRM: ignore noexec ${HOME}

# Uncomment the following line (or put it in your firefox-common.local) to allow access to common programs/addons/plugins.
#include firefox-common-addons.inc

noblacklist ${HOME}/.pki
noblacklist ${HOME}/.local/share/pki

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.pki
mkdir ${HOME}/.local/share/pki
whitelist ${DOWNLOADS}
whitelist ${HOME}/.pki
whitelist ${HOME}/.local/share/pki
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
# machine-id breaks pulse audio; it should work fine in setups where sound is not required.
#machine-id
netfilter
# Breaks Gnome connector and KDE Connect.
# Also seems to break Ubuntu titlebar menu.
# Also breaks enigmail apparently?
# During a stream on Plasma it prevents the mechanism to temporarily bypass the power management, i.e. to keep the screen on.
# Therefore disable if you use that.
nodbus
nodvd
nogroups
nonewprivs
# noroot breaks GTK_USE_PORTAL=1 usage, see https://github.com/netblue30/firejail/issues/2506.
noroot
notv
?BROWSER_DISABLE_U2F: nou2f
protocol unix,inet,inet6,netlink
# The below seccomp configuration still permits chroot syscall. See https://github.com/netblue30/firejail/issues/2506 for possible workarounds.
seccomp.drop @clock,@cpu-emulation,@debug,@module,@obsolete,@raw-io,@reboot,@resources,@swap,acct,add_key,bpf,fanotify_init,io_cancel,io_destroy,io_getevents,io_setup,io_submit,ioprio_set,kcmp,keyctl,mount,name_to_handle_at,nfsservctl,ni_syscall,open_by_handle_at,personality,pivot_root,process_vm_readv,ptrace,remap_file_pages,request_key,setdomainname,sethostname,syslog,umount,umount2,userfaultfd,vhangup,vmsplice
shell none
# Disable tracelog, it breaks or causes major issues with many firefox based browsers, see https://github.com/netblue30/firejail/issues/1930.
#tracelog

disable-mnt
private-dev
# private-etc hosts,ssl,ca-certificates
#private-etc hosts,ssl,ca-certificates
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
