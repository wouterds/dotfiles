export ZSH=/Users/wouterds/.oh-my-zsh

# Set name of the theme to load, look in ~/.oh-my-zsh/themes/
ZSH_THEME="agnoster"

# History file
HISTFILE=~/Dropbox/dotfiles/zsh-history

# Default user
DEFAULT_USER=wouterds

# Plugins
plugins=(git zsh-autosuggestions)

# Boot oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nano'
else
	export EDITOR='nano'
fi

# Load dotfiles
for file in ~/.{exports,path,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Command execution time (start)
function preexec() {
  timer=${timer:-$SECONDS}
}

# Command execution time (end)
function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT="%F{cyan}${timer_show}s%{$reset_color%}"
    unset timer
  fi
}

export GPG_TTY=$(tty)

eval "$(rbenv init - zsh)"
