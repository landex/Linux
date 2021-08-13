
# This is my ubuntu BTRFS configuration.

We will work with 3 partition:
* Boot
* Recovery
* Root and Home File

### Open your terminal and type command below.

```bash
ubuntu@ubuntu:~$ sudo -i
root@ubuntu:~# 

```
My NVME have 465GB of Space I'll create the 3 partition.

* List the dis


~~~bash
root@ubuntu:~# lsblk
NAME    MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0     7:0    0   2.1G  1 loop /rofs
loop1     7:1    0  55.4M  1 loop /snap/core18/1997
loop2     7:2    0  64.8M  1 loop /snap/gtk-common-themes/1514
loop3     7:3    0   219M  1 loop /snap/gnome-3-34-1804/66
loop4     7:4    0    51M  1 loop /snap/snap-store/518
loop5     7:5    0  32.3M  1 loop /snap/snapd/11588
sda       8:0    1   7.2G  0 disk 
├─sda1    8:1    1   2.6G  0 part /cdrom
├─sda2    8:2    1   4.9M  0 part 
├─sda3    8:3    1   300K  0 part 
└─sda4    8:4    1   4.6G  0 part /var/crash
nvme0n1 259:0    0 465.8G  0 disk 
root@ubuntu:~# 
~~~

* Creating partition run command ***parted***

~~~bash
root@ubuntu:~# parted /dev/nvme0n1 
GNU Parted 3.4
Using /dev/nvme0n1
Welcome to GNU Parted! Type 'help' to view a list of commands.
(parted)   
~~~

Run command ***mklabel gpt***

* Now run commands to create the partition

~~~bash
root@ubuntu:~# parted /dev/nvme0n1 

(parted) mkpart primary fat32 1MiB 1023MiB                                
(parted) mkpart primary fat32 1023MiB 5020MiB                            
(parted) mkpart primary 5120MiB 100%
~~~

* Insert names and some info in our partition

~~~bash
(parted) name 1 EFI                                                       
(parted) name 2 /recovery                                                 
(parted) name 3 ubuntu                                                    
(parted) set 1 bios_grub on                                               
(parted) set 1 esp on 
~~~

* Print info inserted in partitions

~~~bash
(parted) print                                                            
Model: Samsung SSD 970 EVO Plus 500GB (nvme)
Disk /dev/nvme0n1: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags: 

Number  Start   End     Size    File system  Name       Flags
 1      1049kB  1073MB  1072MB  fat32        EFI        boot, esp
 2      1073MB  5264MB  4191MB  fat32        /recovery
 3      5369MB  500GB   495GB                ubuntu

(parted) 
~~~

***Type quit to out of parted***

* List the partion structure

~~~bash
nvme0n1     259:0    0 465.8G  0 disk 
├─nvme0n1p1 259:1    0  1022M  0 part 
├─nvme0n1p2 259:2    0   3.9G  0 part 
└─nvme0n1p3 259:3    0 460.8G  0 part 
root@ubuntu:~# 
~~~








