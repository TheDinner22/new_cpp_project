# prject template

this is a nice simple empty c++ project template

## why

so every time I want to do something i dont have to mkdir ... cd ... etc.

the compile_flags.txt file is for clang lsp 
if you use a different lsp it is safe to delete

## how

assuming your using some linux-y thing and can run .sh files,

just run the .sh file in the directory that you want the project to be run in
(and pass the projects name as an arg to the .sh file ex: build.sh folder_name_here)

you can build and run the stuff with the make file

### or if your on windows or some shit

idk! clone the repo or something

## adding an external library (dont)

1. ok so to add a dep i first sudo apt installed it

2. then changed the make files 18th line to
include -l{lib_name}

3. then added a compile_flags.txt file
which has all of the args that make file
spits into the std out
as well as /usr/include/{lib_name}

#### ps make sure u have cmake or smt

# I stole the makefile from github, idk where from but it works
