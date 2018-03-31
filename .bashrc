#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#vi-mode
set -o vi

#Set paths
export PATH="${PATH}:${HOME}/.local/bin/"

#Setting browser to open in different 
export BROWSER=qutebrowser
   

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh
PS1='[\u@\h \W]\$ '

# Import colorscheme from 'wal' asynchronously
##################################################
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
##################################################

#Aliases
alias ls='ls --color=auto'
