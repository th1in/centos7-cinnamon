# repositories
repo --name="Base" --baseurl=http://mirror.centos.org/centos/7/os/x86_64/
repo --name="Updates" --baseurl=http://mirror.centos.org/centos/7/updates/x86_64/
repo --name="EPEL" --baseurl=http://dl.fedoraproject.org/pub/epel/7/x86_64

repo --name="RPMFusion-Free" --baseurl=http://download1.rpmfusion.org/free/el/updates/7/x86_64/ 
repo --name="RPMFusion-Non-Free" --baseurl=http://download1.rpmfusion.org/nonfree/el/updates/7/x86_64/ 

#repo --name="elrepo-kernel" --baseurl=http://elrepo.org/linux/kernel/el7/x86_64/ --cost=1000
#repo --name="elrepo-release" --baseurl=http://elrepo.org/linux/elrepo/el7/x86_64/ --cost=1000
#repo --name="elrepo-extras" --baseurl=http://elrepo.org/linux/extras/el7/x86_64/ --cost=1000

repo --name="Local" --baseurl=file:///home/th1in/localrepo/


