# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable colors and change prompt
autoload -U colors && colors

# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh_history

# Completion
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
# Include hidden files.
_comp_options+=(globdots)		
# Proper completion on aliased commands
setopt complete_aliases

# Auto CD using directory name
setopt autocd

# Prompts
PROMPT="%B%F{yellow}%1~%F{green}>%b%f "
RPROMPT="%B%*"

# Update time in prompt before starting command
reset-prompt-and-accept-line() {
    zle reset-prompt
    zle accept-line
}
zle -N reset-prompt-and-accept-line
bindkey '^m' reset-prompt-and-accept-line

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Aliases
alias ls='ls --color=auto'
alias sudo='sudo '
alias p='sudo pacman '
alias vim=nvim
alias ls=exa
alias susp='systemctl suspend'
alias gs='git status'
alias chd='cd /media/$(whoami)/HDD'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

PATH=$PATH:~/.dotnet/tools:~/.local/bin:~/.cargo/bin:~/.local/share/gem/ruby/3.0.0/bin
export EDITOR=nvim

# Navigation key fixes
bindkey "^[[H"      beginning-of-line  # Home
bindkey "^[[F"      end-of-line        # End
bindkey "^[[3~"     delete-char        # Delete
bindkey "^[[1;5C"   forward-word       # Ctrl-Right
bindkey "^[[1;5D"   backward-word      # Ctrl-Left
bindkey "^H"        backward-kill-word # Ctrl-Backspace
bindkey "^[[3;5~"   kill-word          # Ctrl-Delete

## Add kdesrc-build to PATH
export PATH="$HOME/kde/src/kdesrc-build:$PATH"
