export LANG=ja_JP.UTF-8
case ${UID} in
0)
     LANG=C
     ;;
esac

PROMPT='[%F{cyan}%n%f@%m:%F{green}%~%f]%# '
autoload -U promptinit; promptinit
autoload -Uz colors; colors

autoload -U compinit
compinit

setopt correct

setopt nobeep

setopt prompt_subst

setopt ignoreeof

setopt no_tify


unsetopt auto_menu

setopt auto_cd

#autoload predict-on
#predict-on

#PATH SETTING
typeset -U path cdpath fpath manpath
path=(
      $HOME/bin(N-/)
      /usr/local/bin(N-/)
      /usr/local/sbin(N-/)
      /usr/bin(N-/)
      /usr/sbin(N-/)
      /sbin(N-/)
      /bin(N-/)
     $PATH
)
#RBENV PLENV PYENV###########################################
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.phpenv/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(phpenv init -)"
eval "$(pyenv init -)"
eval "$(plenv init -)"

#if which rbenv > /dev/null; then eval "(rbenv init -)"; fi
#if which pyenv > /dev/null; then eval "(pyenv init -)"; fi
#if which plenv > /dev/null; then eval "(plenv init -)"; fi


#############################################################
alias ls="ls -la --color"
function chpwd() { ls -la --color }


HISTFILE=${HOME}/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_dups
setopt share_history

