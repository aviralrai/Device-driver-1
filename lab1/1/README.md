## Saumya Prakash (CED17I043)
# Command used to list daemon process 
We could find running daemons by searching for processes which run without a controlling terminal attached to them.
```
$ ps -eo 'tty,pid,comm' | grep ^?
```
The tty output field contains "?" when the process has no controlling terminal. 

## Files
* 1_output.txt - Contains output of the above cmd.
* result.txt - Contain detail about daemon processes
# Daemon Process in my system
Using above command, listing some daemon processes

**systemd** - The program systemd is the process with process ID 1. It is responsible for initializing the system in the required way. systemd is started directly by the kernel

**kthreadd** - kthreadd is the kernel thread daemon. Creation of new kernel threads is done via kthreadd so that a clean environment is obtained even if this were to be invoked by userspace by way of modprobe, hotplug cpu, etc.

**ksmd** - The KSM daemon ksmd periodically scans those areas of user memory which have been registered with it, looking for pages of identical content which can be replaced by a single write-protected page

**watchdogd** - watchdog is such a daemon. It opens /dev/watchdog, and keeps writing to it often enough to keep the kernel from resetting, at least once per minute. Each  write  delays  the  reboot time  another  minute.


**acpid** - allows the operating system to control the amount of power it provides to each device or peripheral attached to the system. This makes the operating system to turn off specific devices when they are no longer in use such as the monitor, providing stable and efficient power management.

**cupsd** - cupsd  is  the scheduler for CUPS. It implements a printing system based upon the Internet       Printing Protocol, version 2.1.

**polkitd** - polkitd provides the org.freedesktop.PolicyKit1 D-Bus service on the system message bus.       Users or administrators should never need to start this daemon as it will be automatically       started by dbus-daemon(1) whenever an application calls into the service.

**rsyslogd** - Rsyslogd is a system utility providing support  for  message  logging.   Support  of  both internet  and  unix  domain  sockets enables this utility to support both local and remote logging.

**snapd** - When creating snapcraft.yaml to build a new snap, a snap’s executable component can be either exposed as a command or run as a background service or daemon.

**thermald** - The thermald daemon prevents machines from overheating and was introduced in the 14.04 Ubuntu Trusty LTS release. It monitors thermal sensors and will modify cooling controls to keep the hardware cool. 

**udisksd** - The udisks daemon serves as an interface to system block devices, implemented via D-Bus. It handles operations such as querying, mounting, unmounting, formatting, or detaching storage devices such as hard disks or USB thumb drives.

**smbd** - server to provide SMB/CIFS services to clients. This program is part of the samba suit. smbd is the server daemon that provides filesharing and printing services to Windows       clients.

**gvfsd** - GVFSD is the daemon process for GVFS, the GNOME Virtual File System (or possibly it's predecessor, GnomeVFS). It's a GNOME component that handles filesystem automounting when you're logged into the GNOME-based Ubuntu desktop. This includes devices like USB thumb drives and external HDDs, optical discs (CD/DVD), Samba or NFS or SSHFS network mounts, and other useful userspace filesystems.

**goa-daemon** - GNOME Online Accounts Daemon. The goa-daemon program provides the org.gnome.OnlineAccounts name on the session message bus.

**dbus-daemon** - Message bus daemon. dbus-daemon is an application that uses this library to implement a message bus daemon. Multiple programs connect to the message bus daemon and can exchange messages with one another.

**fwupd** - fwupd is an open-source daemon for managing the installation of firmware updates on Linux-based systems. It is designed primarily for servicing the Unified Extensible Firmware Interface (UEFI) firmware on supported devices via EFI System Resource Table (ESRT) and UEFI Capsule, which is supported in Linux kernel 4.2 and later.

**boltd** - boltd is the thunderbolt device manager daemon. Its goal is to enable the secure and       convenient use of thunderbolt devices by using the security features of modern thunderbolt       controllers.