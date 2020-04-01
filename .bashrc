# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH=$PATH:$HOME/bin/gradle-6.3/bin
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export TERM=xterm

# User specific aliases and functions
alias vi='vim'
alias lk='i3lock -u -c 000000'
alias grays='compton --backend glx --glx-fshader-win "$(cat ~/Documents/grayscale.glsl)" &'
alias colors='killall compton'
alias ls='ls -a -p --color=always'
