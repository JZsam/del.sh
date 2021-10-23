# del.sh
## What is del.sh
del.sh is a bash script I wrote that will take all of the images from a directory that you get from Daniel King’s Frame Extraction Tool and move all of the odd number files to a delete folder
## To install/run this script
### Windows
To run bash scripts on linux you need an extra tool called Cygwin
#### The Cygwin Installation
1. On your browser go to [The Cygwin Website https://www.cygwin.com/](https://www.cygwin.com/)
2. Go down to the section called "Installing Cygwin" and click on the "setup-x86_64.exe"
3. After it'd done downloading run it and follow the intructions
#### Next the script its self
1. Open the windows menu and seach for Cygwin and open it (this should open a terminal)
2. Type in `cd ../../users/(Your Username)/(the rest of your path to the folder of images`
3. Type in `curl https://raw.githubusercontent.com/JZsam/del.sh/main/del.sh > del.sh && chmod +x del.sh`
4. To run it you type `./del.sh`
### MacOS/Linux
1. Open Terminal
2. Type in `cd (path to the folder)`
3. Type in `curl https://raw.githubusercontent.com/JZsam/del.sh/main/del.sh > del.sh && chmod +x del.sh`
4. To run it you type `./del.sh`
