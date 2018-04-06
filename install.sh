#/usr/bin/env bash

# check whether or not the current user is root
SUDO=''
if [ $EUID != 0 ]; then
    SUDO='sudo'
fi


# to copy and delete if successful
# copies the name of arg1 into the directory arg2
copy_files() { 
    cp $1 "${2}${1}"
    status=$?
    if [ $status = "0" ]; then
	#rm $1
	echo "moving $1 to ${2}${1}"
    fi
}


if [ $# = 0 ]; then
    echo "Making directoy ~/Public/.max/"
    mkdir -p ~/Public/.max/
    mkdir -p ~/Public/.max/bin/
    mkdir -p ~/bin/

    echo "Copying files to ~/Public/.max/"

    # to copy the files into their installation directory
    copy_files bin/max.txt ~/Public/.max/
    copy_files bin/max.mp3 ~/Public/.max/
    copy_files readme.txt ~/Public/.max/
    $SUDO chmod +x hi
    copy_files hi ~/bin/
    cat ~/Public/.max/readme.txt
elif [ $1 = "--remove" ]; then
    echo "Removing files from directory '~/Public/.max'"
    rm -R ~/Public/.max/
    echo "Removing '~/bin/hi'"
    rm ~/bin/hi
    echo "Removing myself now"
    # rm -Rf *
else
    echo "Invalid argument, run ./install.sh to install"
    echo "or ./install.sh --remove to uninstall"
fi

