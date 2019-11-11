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

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
plugins=(
  alias-tips
  colored-man-pages
  colorize
  common-aliases
  cp
  docker
  extract
  fasd
  git
  history
  python
  rsync
  screen
  tmux
  zsh-completions
)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# HomeShick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Rust
source $HOME/.cargo/env

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
export EDITOR='vim'
export MANPATH="/usr/local/man:$MANPATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

