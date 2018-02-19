#!/usr/bin/python

import argparse
import os

parser = argparse.ArgumentParser(description='Copy out dotfiles')
parser.add_argument('--user')
parser.add_argument('--force', action='store_true')

args = parser.parse_args()

if args.user != None:
  print os.system('rsync --exclude ".git/" --exclude ".DS_Store"' +
  	'--exclude "bootstrap.sh" --exclude "README.md" --exclude "LICENSE-MIT.txt" ' +
  	'-av --no-perms . /home/' + args.user)
else:
  print os.system('rsync --exclude ".git/" --exclude ".DS_Store"' +
  	'--exclude "bootstrap.sh" --exclude "README.md" --exclude "LICENSE-MIT.txt" ' +
  	'-av --no-perms . ~')
