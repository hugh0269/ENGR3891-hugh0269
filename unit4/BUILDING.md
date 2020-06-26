#How to compile mega65 to create targets
##
####(0)To begin: load up a linux environment. This guide is specifically written for ubuntu and assumes the user is running a 64 bit linux install and has access to an internet connection.
#####
####(1)Once the machine is loaded, ensure all software is up to date. apt-get can be used to achieve this in terminal but there are also UI options to simplify this process if needed.
####(2)Install all required dependencies use "apt-get install *" where * represents each package to achieve this. The required packages are git, gcc, make, python, libpng, cbmconvert and Xilinx Vivado. The first 4 are particularly critical but it appears as though the latter 2 dependencies can be both problematic to install, and may be required to build the mega65-core with the Makefile.
####(3)Clone the MEGA65 git repo into a local folder "git clone https://github.com/MEGA65/mega65-core.git" from the desired folder location.
####(4)Should every item be installed and configured correctly; running "make" from inside the "mega65-core" folder should build the entire thing automatically.
####(5)Bask in your awesomeness, all steps have been achieved!
