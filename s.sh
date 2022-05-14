#!/bin/bash

echo Please enter your sudo password if you are prompted to do so!

echo Installing dependencies using apt...
sudo apt install python3 && sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-3.0 && python3-tk && ffmpeg
echo Done "If ffmpeg not installed use sudo snapd install ffmpeg"

echo Running program...
python3 plymouth-creator.py
echo Done!

echo Have a nice day!
