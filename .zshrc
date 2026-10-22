# PATH first, so anything added further down takes precedence
typeset -U path
source ~/.path

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='nano'
else
        export EDITOR='nano'
fi

# zsh-autosuggestions plugin
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load custom dotfiles
for file in ~/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Sync history across workstations using Dropbox
HISTFILE=~/Dropbox/dotfiles/zsh-history
HISTSIZE=100000
SAVEHIST=50000

# gpg pinentry support
export GPG_TTY=$(tty)

# Load fnm (nvm like but in rust)
eval "$(fnm env --use-on-cd --shell zsh)"

# fzf (ctrl+r history, ctrl+t files)
source <(fzf --zsh)

# zoxide (z <dir>)
eval "$(zoxide init zsh)"

# fastfetch
echo "\n"
fastfetch

# bun completions
[ -s "/Users/wouterds/.bun/_bun" ] && source "/Users/wouterds/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias claude-mem='/Users/wouterds/.bun/bin/bun "/Users/wouterds/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'


# >>> grok installer >>>
export PATH="$HOME/.grok/bin:$PATH"
fpath=(~/.grok/completions/zsh $fpath)
autoload -Uz compinit && compinit -C
# <<< grok installer <<<
