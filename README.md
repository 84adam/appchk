# appchk
Check for and install Debian/Ubuntu packages

Must be run as root. Provide package name as an argument to the script. Ex.:

`sudo ./appchk.sh htop`

If already installed, you will see something like this:

```
CHECKING htop...
`htop` is already installed: /usr/bin/htop
DONE
```

Otherwise, the script will attempt to install the package automatically:

```
CHECKING htop...
htop not installed. Installing now...
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  ###
Suggested packages:
  ###
The following NEW packages will be installed:
  ###
# upgraded, # newly installed, # to remove and # not upgraded.
Need to get # MB of archives.
After this operation, # MB of additional disk space will be used.
Do you want to continue? [Y/n]
```
