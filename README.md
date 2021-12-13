# del.sh
## What is del.sh
del.sh is a bash script I wrote that will take all of the images from a directory that you get from Daniel King’s Frame Extraction Tool and move all of the odd number files to a delete folder
## To install/run this script
### Windows
To run bash scripts on Windows you need an extra tool called Cygwin
#### The Cygwin Installation
1. On your browser go to [The Cygwin Website https://www.cygwin.com/](https://www.cygwin.com/)
2. Go down to the section called "Installing Cygwin" and click on the "setup-x86_64.exe"
3. After it'd done downloading run it and follow the intructions
#### Next the script it self
1. Open the windows menu and seach for Cygwin and open it (this should open a terminal)
2. Type in `cd ../../users/(Your Username)/(the rest of your path to the folder of images`
3. Type in `curl https://raw.githubusercontent.com/JZsam/del.sh/main/del.sh > del.sh && chmod +x del.sh`
4. To run it you type `./del.sh`
### MacOS/Linux
1. Open Terminal
2. Type in `cd (path to the folder)`
3. Type in `curl https://raw.githubusercontent.com/JZsam/del.sh/main/del.sh > del.sh && chmod +x del.sh`
4. To run it you type `./del.sh`
## Options
By using the -h flag like this `./del.sh -h` this will give all of the options and prints this.
`del.sh [-h|v|l|p] mod
options:
h		Print this help statment
v		Prints the version
l		Changes the standard (take the lager side like 2/3 or 3/4) to take 1/3 or 1/4`
p		Lets you pass in a specific path

running the program like this `./del.sh 3` will give you 2/3 of the total images. While if you do `./del.sh -l 3` it will give you 1/3 of the images. With the new flag `-p` you just input a path like this `./del.sh -p vid4/ 3` the `3` works the same way the `vid4/` will run the script inside this directory.
