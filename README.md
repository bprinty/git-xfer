git-xfer
========

Git plugin for transferring large files across servers.


## Installation:

Clone the repo and install with make:

```bash
git clone git@github.com:bprinty/git-xfer.git
make install
```

NOTE: Windows users that do not have Make installed will have to just copy executables to somewhere on their path:

```bash
# within git-bash for Windows
git clone git@github.com:bprinty/git-xfer.git
cd git-xfer
cp bin/* /usr/bin/
```


## Usage:

To start tracking a file with git-xfer, use:

```bash
git xfer add <file>
```


To remove a file from tracking with git-xfer, use:

```bash
git xfer remove <file>
```


To delete a local file and remove it from tracking with git-xfer, use:

```bash
git xfer rm <file>
```


To push locally tracked files to a remote server, use:

```bash
git xfer push <remote>
```

Where ```<remote>``` is the name of the remote server. To add a remote server that can be used by git-xfer, use:

```bash
git remote add <name> <url>

# examples:
git remote add usb /media/usb/git-xfer.git
git remote add server ssh://user@server.com:22/~/git-xfer.git
```

Note: for remote servers using a port other than 22, please use the format above in defining the remote url. git-xfer uses the port specified in the url to do copy operations.


To pull remote tracked files from a remote server, use:

```bash
git xfer pull <remote>
```


## Questions/Feedback:

Submit an issue in the GitHub issue tracker.
