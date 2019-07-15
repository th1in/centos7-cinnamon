#version=DEVEL

# Config
auth --enableshadow --passalgo=sha512
cdrom
graphical
firstboot --enable
ignoredisk --only-use=sda
keyboard --vckeymap=us --xlayouts='us'
lang en_US.UTF-8
eula --agreed
selinux --disabled
firewall --disabled
timezone America/New_York --isUtc
bootloader --location=mbr --boot-drive=sda
clearpart --none --initlabel
part / --size 5120 --fstype ext4
reboot

%include centos-cinnamon-repo.ks

%packages
@base
@core
@cinnamon-desktop
@guest-desktop-agents
@fonts
@dial-up
@multimedia
@x11

# Anaconda installer
anaconda
@anaconda-tools

# For UEFI/Secureboot support
grub2-efi-x64-cdboot
efibootmgr
shim-x64

# Extra packages
kernel
cheese
gnome-disk-utility
p7zip
p7zip-plugins
unar
cups
hplip
brasero
audacious
audacious-libs
audacious-plugins
audacious-plugins-freeworld-mp3
simplescreenrecorder
vlc
chromium
chromium-libs-media-freeworld


#installing libreoffice
#libreoffice6.2-*
#libobasis6.2-*

# RPM Repository
rpmfusion-free-release-7
rpmfusion-nonfree-release-7

# Codecs
gstreamer1-plugins-good
gstreamer1-plugins-ugly
gstreamer1-plugins-bad-freeworld
gstreamer1-libav
gstreamer
gstreamer-plugins-base
gstreamer-plugins-good
gstreamer-plugins-bad-free
gstreamer-plugins-ugly
gstreamer-plugins-bad
gstreamer-ffmpeg
x264
x265
ffmpeg
ffmpeg-libs

# Skip packages
-totem
-rhythmbox
-gnome-user-docs
-evolution-help
-desktop-backgrounds-basic
-*backgrounds-extras
-gnome-themes
-gnome-user-docs
-abrt-*
-thunderbird
-firefox

%end

%include centos-cinnamon-live.ks





