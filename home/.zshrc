# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugin Manager - AntiGen
source $HOME/.zsh/antigen.zsh

# Plugins
## Oh-My-ZSH
antigen use oh-my-zsh
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle common-aliases
antigen bundle cp
antigen bundle docker
antigen bundle extract
antigen bundle fasd
antigen bundle git
antigen bundle history
antigen bundle python
antigen bundle rsync
antigen bundle screen
antigen bundle tmux

## Other
antigen bundle djui/alias-tips
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

# Apply plugins
antigen apply

# Theme - PowerLevel10k
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.zsh/p10k.zsh ]] || source $HOME/.zsh/p10k.zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
HIST_STAMPS="dd/mm/yyyy"

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
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
export EDITOR='vim'
export MANPATH="/usr/local/man:$MANPATH"

