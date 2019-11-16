# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
HIST_STAMPS="dd/mm/yyyy"

# ZPlug
ZPLUG_HOME=$HOME/.zsh/zplug
source $ZPLUG_HOME/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "djui/alias-tips"

zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/cp", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/rsync", from:oh-my-zsh
zplug "plugins/screen", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh

zplug "romkatv/powerlevel10k"

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# PowerLevel10k
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

## Highlight settings
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_COLORIZE_STYLE="native"

# HomeShick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Rust
[[ ! -f $HOME/.cargo/env ]] || source $HOME/.cargo/env

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
export EDITOR='vim'
export MANPATH="/usr/local/man:$MANPATH"

