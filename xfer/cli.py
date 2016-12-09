# -*- coding: utf-8 -*-
#
# Entry points for command line executable.
#
# @author <bprinty@gmail.com>
# ------------------------------------------------


# imports
# -------
import re
import os
import getpass
from gems import filetree


# methods
# -------
def config(args):
    """
    Configure server transfer information.
    """
    if args.type == 'ssh':
        print 'ssh'
        uname = getpass.getuser()
        home = os.path.expanduser('~')
        user = raw_input('Enter remote username (default: {}): '.format(uname)) or uname
        server = raw_input('Enter server name (example: myhost.com): ')
        dest = raw_input('Enter remote destination for repo (default: {}): '.format(home)) or home
        port = raw_input('Enter port for server (default: 22): ') or 22
        print 'ssh://{}@{}:{}{}.git'.format(user, server, port, dest)
    elif args.type == 's3':
        print 's3'
    elif args.type == 'gcloud':
        print 'gcloud'
    print 'config'
    return


def add(args):
    """
    Add files to tracking.

    Args:
        args (obj): Arguments from command line.
    """
    print 'add'
    return


def prune(args):
    """
    Prune non-existing files from tracking.

    Args:
        args (obj): Arguments from command line.
    """
    print 'prune'
    return


def reset(args):
    """
    Reset tracking information for xfer.

    Args:
        args (obj): Arguments from command line.
    """
    print 'reset'
    return


def remove(args):
    """
    Remove files from tracking.

    Args:
        args (obj): Arguments from command line.
    """
    print 'remove'
    return


def rm(args):
    """
    Remove files from tracking and delete the file.

    Args:
        args (obj): Arguments from command line.
    """
    print 'rm'
    return remove(args)


def diff(args):
    """
    Find difference between remote and local files.

    Args:
        args (obj): Arguments from command line.
    """
    print 'diff'
    return


def push(args):
    """
    Push files to remote server.

    Args:
        args (obj): Arguments from command line.
    """
    print 'push'
    return


def pull(args):
    """
    Pull files from remote server.

    Args:
        args (obj): Arguments from command line.
    """
    print 'pull'
    return

