#
# ~/.bashrc
#

# Add home bin to $PATH
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "/home/lectral/.gem/ruby/2.3.0/bin" ] ; then
  PATH="/home/lectral/.gem/ruby/2.3.0/bin:$PATH"
fi

if [ -d "/home/lectral/.gem/ruby/2.4.0/bin" ] ; then
  PATH="/home/lectral/.gem/ruby/2.4.0/bin:$PATH"
fi


if [[ "$TERM" == *rxvt* ]] &&  type "fish" > /dev/null 2>&1; then
   exec fish 
fi

if [[ "$TERM" == *xterm* ]] &&  type "fish" > /dev/null 2>&1; then
   exec fish 
fi


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Aliases
alias ls='ls --color=auto'
alias torrent="transmission-remote"

export HGEDITOR="vim"

# i3 terminal default
export TERMINAL="xterm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
