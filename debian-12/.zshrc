export HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000
# --- starship
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
source "$HOME/.alan-zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.alan-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias ll="ls -alh"
alias rm="rm -I"
alias vi="nvim"
alias tm="tmux"

source <(kubectl completion zsh)
source <(minikube completion zsh)
source <($HOME/go/bin/kind completion zsh)

eval "$(starship init zsh)"

# ---oh my zsh

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# Path to your Oh My Zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="half-life"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
