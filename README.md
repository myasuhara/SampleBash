The following is a summary of the class home works at BAsg Shell class at Foothill and DevOps class at UCSC.

1. devops1bx.sh:

2. ifeq.sh:

3. n2-2.sh:

4. svi.sh:

5. uon-1.sh: 


==================================================================
Detail of the assignment
=================================================================
1. devops1bx.sh:

Using sections 00a_BashShellBasics and 00b_InfrastructureAsCodeGit do the following:

---Part 01

a) if you have not done so, create a GitHub account

b) create a repository in GitHub named DevOps01, make sure this repo is public NOT provide

c) if you have not done so, install git on your machine

d) create a git repository on you machine in a folder named DevOps01

f) make your DevOps01 repo in GitHub the remote for your local DevOps01 git repo

--- Part 02

a) in folder DevOps01, create a bash script called devops01a.sh that gets information about your computer including:

number of volumes, size of each volume, free space on each volume

number cpus/cores, information about the cpus/core

amount of ram, 

your mac address and ip address

print these details out

NOTE: there are a number of ways to get this information from Bash, you can do web searches to get info on this

b) periodically, stage this file and commit it locally in git

c) periodically commit this file to the remote GitHub repo

---Part 03

a) create a second bash script - devops01b.sh that extends the functionality in devops01a.sh as follows:

add 4 command line parameters:

-volumes
if this command line parameter is found, display the same volume information you did in devops01a.sh

-cpu
if this command line parameter is found, display the same cpu/core information you did in devops01a.sh

-ram
if this command line parameter is found, display the same ram information you did in devops01a.sh


-network
if this command line parameter is found, display the same mac and ip address information you did in devops01a.sh


-all
display information for all command line options


if no command line parameter as passed in:
display a usage message to the user for each option listed above and exit


b) periodically, stage this file and commit it locally in git

c) periodically commit this file to the remote GitHub repo

---To submit this assignment
a) upload both script files into Canvas

b) upload a couple of images from your local machine in a terminal showing the local git status

c) upload a screen capture that displays your to files in GitHub - as committed by git - do NOT manually place your files in GitHub

d) upload a file named GitHub.txt - which contains the url of your repo in GitHub

==================
2. ifeq.sh:

Deliverables:

Upload your script program file, ifeq

Upload your script run results file, result

Creating a Bash Script File

After you are satisfied with your hands-on log session in Assignment 7-1, create and execute a bash script using a text editor of your choice that does the following:

Searches a file for two strings and prints which is more frequent.

Usage:  ./ifeq <file> str1 str2 

The script file, ifeq,  will make use of positional variables and test conditionals.  

Write a script called ifeq that does the following:

Lists current date 

Displays your username 

Verifies that the file exists

Searches the file for two strings and prints which is more frequent

Returns status code (0 file exists, error if file does not exist)

Notes:

Display all standard output to the file, result. 

===========

3. n2-2.sh:

01) Write a Bash script, named n2 that does the following:

a) get the amount of free, in use ,  memory free

b) get the free and used disc space

c) CPU statistics 

d) output the results of this script into a file named n2-results.txt that is visible to both the Ubuntu VM and your host system

02) As demonstrated in class, create a Vagrantfile that runs Ubuntu 16.04

03) Add a provisioning section in your Vagrant file that runs this script from above in the Ubuntu VM from an external file

04) To submit your assignment upload the following in Canvas:

a) the n2 script file

b) the n2-results.txt file


===========

4. svi.sh:

Lab requires you to write a shell script program, svi and a result file, result.

Deliverables

Upload your script program file, svi

Upload your script run results file, result

 

Creating a Bash Script File

After you are satisfied with your hands-on log session in Lab Assignment 6-1, create and execute a bash script using a text editor of your choice that does the following:

Write a script file that makes use of positional variables.  Suppose you want to write a script file that stores the specified file in a directory called keep in your HOME directory and then invokes the vi editor to edit the specified file.  The commands to do this job are:

$ cp xyz $HOME/keep  # Copy the specified file xyz to the directory keep 

$ vi xyz # Invoke the vi editor 

Your bash script program will do this job.  The positional variables will make your bash script a versatile program.  It saves any specified file passed to it in the keep directory, the vi editor is invoked, and you will be able to edit the xyz file.  

Example:

$ ./svi xyz

Before you begin:

Create a file xyz with the following contents:

$ cat xyz

testing xyz

 Create the directory keep in your lab6 directory:

$ mkdir keep 

Write a script called svi that does the following:

Lists current date 

Displays your username 

Displays the file xyz contents 

Copies the file xyz to the directory keep 

Invokes the vi editor to edit the file 

Displays the modified file xyz

Uses the ls command to show a copy of the xyz file is saved in the keep directory

Notes:

Display all standard output to the file, result. 

Edit the file xyz by adding your name as the first word in the file.

Example:

$ cat xyz

<yourname> testing xyz

Be sure to upload both the script file svi as well as the file result as attachments to complete your Lab Assignment 6-2 submission.


===========

5. uon-1.sh: 

Creating a Bash Script File

After you are satisfied with your hands-on log session in 8.1, create and execute a bash script using a text editor of your choice that does the following:

Scenario:  Say that you want to check whether a specified user is on the system or, if not, to be informed as soon as the user logs in.  

Write a script, uon, that will do this for you. In the uon script, use an until loop that will stop as soon as the loop condition is true (i.e. user of interest has logged onto the system).  Pass the username as a positional argument.

Usage:  ./uon <usename> 

Write a script called uon that does the following:

Lists current date 

Displays your username 

Uses the until loop

Determines if a user has logged on

Informs you when the user logs in

Notes:

Run the script in the background so that you can do other work while waiting for user to log on.

Include a beep and message to inform you when the user has logged on.

Display all standard output to the file, result. 

Provide a test run that shows a user has logged on (this may even be yourself if need be).

Be sure to upload both the script file uon as well as the file result as attachments to complete your lab 8.2 submission.
