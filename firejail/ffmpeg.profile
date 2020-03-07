# Firejail profile for ffmpeg
# Description: Tools for transcoding, streaming and playing of multimedia files
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include ffmpeg.local
# Persistent global definitions
include globals.local

noblacklist ${MUSIC}
noblacklist ${VIDEOS}

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
#ipc-namespace
#machine-id
netfilter
nodbus
#nodvd
nogroups
nonewprivs
noroot
#nosound
#notv
#nou2f
#novideo
#protocol inet,inet6
seccomp
# seccomp.keep futex,write,read,munmap,fstat,mprotect,mmap,open,close,stat,lseek,brk,rt_sigaction,rt_sigprocmask,ioctl,access,select,madvise,getpid,clone,execve,fcntl,getdents,readlink,getrlimit,getrusage,statfs,getpriority,setpriority,arch_prctl,sched_getaffinity,set_tid_address,set_robust_list,getrandom
#shell none
#tracelog

#private-bin ffmpeg
#private-cache
#private-dev
#private-etc hosts,ssl,ca-certificates
private-tmp
net none 
# memory-deny-write-execute - it breaks old versions of ffmpeg
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
