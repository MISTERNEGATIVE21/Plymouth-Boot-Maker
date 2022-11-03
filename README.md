# Plymouth-Boot-Maker
Plymouth Boot Theme Maker forked from "https://github.com/Techcrafter/Plymouth-Creator"
A tool using GTK3 and Python to create your own plymouth boot animations.A tool using GTK3 and Python to easily create your own plymouth boot animations from an .mp4 video or single .png files with a GUI.


## What does this tool do:
With the help of this tool, everybody can create their own plymouth boot animations with just a few clicks.
You can use an existing .mp4 video or even single .png files to create your own customized boot animation for linux.
When you're done, you can apply it on your own computer, or you can share it with the community.
# Updated 
- use pip install -r requirements.txt
and python3 plymouth-creator.py
## Dependencies:
- python-3
- python-gi
- python-tkinter
    + `sudo apt-get install python3-tk`
    + `sudo pip3 install tk`
    + + `sudo apt-get install ffmpeg `
    + `pip3 install tk`
- ffmpeg
#You may use Snapd for ffmpeg
#Python-gi is outdated 
After running the example application have a look at the “Python GTK 3 Tutorial” for more examples on how to create GTK apps and the “PyGObject API Reference” for API documentation for all supported libraries.

#Windows
Go to http://www.msys2.org/ and download the x86_64 installer

Follow the instructions on the page for setting up the basic environment

Run + ` C:\msys64\mingw64.exe` - a terminal window should pop up

Execute `pacman -Suy`

Execute `pacman -S mingw-w64-x86_64-gtk3 mingw-w64-x86_64-python3 mingw-w64-x86_64-python3-gobject`

#To test that GTK 3 is working you can run gtk3-demo

Copy the hello.py script you created to C:\msys64\home\<username>

In the mingw32 terminal execute python3 hello.py - a window should appear.

# Ubuntu /  Debian
Installing the system provided PyGObject:
Open a terminal

Execute `sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-3.0`

#Installing from PyPI with pip:
Open a terminal and enter your virtual environment

Execute ` sudo apt install libgirepository1.0-dev gcc libcairo2-dev pkg-config python3-dev gir1.2-gtk-3.0` to install the build dependencies and GTK

Execute `pip3 install pycairo to build and install Pycairo`

Execute` pip3 install PyGObject to build and install PyGObject`

Change the working directory to where your hello.py script can be found

Run python3 hello.py

# Fedora
Installing the system provided PyGObject:
Open a terminal

Execute `sudo dnf install python3-gobject gtk3`

Change the working directory to where your hello.py script can be found

Run `python3 hello.py`

Installing from PyPI with pip:
Open a terminal and enter your virtual environment

Execute` sudo dnf install gcc gobject-introspection-devel cairo-gobject-devel pkg-config python3-devel gtk3` to install the build dependencies and GTK

Execute` pip3 install pycairo to build and install Pycairo`

Execute` pip3 install PyGObject to build and install PyGObject`

Change the working directory to where your hello.py script can be found

Run `python3 hello.py`

#Arch Linux
Installing the system provided PyGObject:
Open a terminal

Execute `sudo pacman -S python-gobject gtk3`

Change the working directory to where your hello.py script can be found

Run python3 hello.py

Installing from PyPI with pip:
Open a terminal and enter your virtual environment

Execute `sudo pacman -S python cairo pkgconf gobject-introspection gtk3 to install the build dependencies and GTK`

Execute` pip3 install pycairo to build and install Pycairo`

Execute `pip3 install PyGObject to build and install PyGObject`


## How to run:
Download the .zip or the .tar.gz file with the source code from the [releases section](https://github.com/MISTERNEGATIVE21/Plymouth-Boot-Maker/releases) and extract it.
On Debian based systems, open the file "s.sh" in terminal to install the needed dependencies. Alternatively, install the dependencies manually from [#dependencies](#dependencies).
The script will install the needed packages, so you'll eventually need to enter your sudo password.
Afterwards, the script will launch the GUI, which is self explanation.
### Installation
1. Install the theme using this script, be sure to replace the template variables used:

```
 sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/{{ThemeName}}/{{ThemeName}}.plymouth 100
```

2. Select the default theme.
`sudo update-alternatives --config default.plymouth`
And select the number for your theme (I can't say this for sure but if the theme you want is under 0 for the auto mode, then I would select that as I think it boots in faster than manual)

3. Update the initramfs image.

`
sudo update-initramfs -u
`

4. Now reboot.

If you want to install this on < Ubuntu 16.04, change the path from /usr/share/plymouth to /lib/plymouth/ . You need to do this on the eionix-cat.plymouth file also.

Also other possible perks:

I found some scripts that are supposed to improve the transitions etc between Plymouth and the other parts of the start up process. I don't know if they worked for me or not. I had trouble getting the plymouth-gdm thing working as it seems that it's primarily something to do with pre-gdm3 versions and I'm on Ubuntu 18.04

Anyway:

- `Edit the file /etc/initramfs-tools/conf.d/splash and add this line:
`
FRAMEBUFFER=y
`
- To enable smooth transition you have to disable your display manager unit, e.g.
`
systemctl disable gdm.service
`
- Enable the respective DM-plymouth Unit (GDM, LXDM, SLiM units provided), e.g.

`
systemctl enable gdm-plymouth.service`
## Screenshot:
![screenshot1](https://raw.githubusercontent.com/Techcrafter/Plymouth-Creator/master/SCREENSHOTS/screenshot1.png)


