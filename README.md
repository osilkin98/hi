# Mr. Max the Parrot says Hi

#### This is just a project I made to practice with installation scripting

## Installation
Just pull the project or download the zip of it into a directory of your choice, 
and then make `install` executable, if it isn't already. To do this, run
`chmod +x install` and then you can execute `install` by running
`./install` within the directory, or `/path/to/directory/install` if you're
outside of the directory. 

The script will install the necessary files into `~/Public/.max/`, and the executable
itself into `~/bin/`. The directory *should* be in `$PATH` by default, however if it
is not, the program will not run, as it will not be found. 

Uninstalling the script is straightforward, just run `./install --remove`, and it 
will remove all the files automatically, including itself. You will have to 
manually remove the directory you installed it in, however.
