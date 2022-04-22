#!/usr/bin/env bash

echo_and_call() {
  echo "Call: $@"
  $@
}

# Dump aliases
# alias aedit="echo_and_call nvim $HOME/.dph_bash/aliases"
# alias acat="echo_and_call cat $HOME/.dph_bash/aliases"

# Grep aliases
# alias agrepcd="cat $HOME/.dph_bash/aliases | grep 'alias (cd|pu)'"

# Aliases
# Uncomment once core-utils installed (Homebrew)
# alias lsg="echo_and_call gls --color=auto --group-directories-first"
alias lsn="echo_and_call ls --color=auto --group-directories-first --almost-all"
alias lss="echo_and_call ls --color=auto --group-directories-first --almost-all -l --human-readable"
# alias dsrm="echo_and_call find . -name '.DS_Store' -type f -delete"
alias pu="echo_and_call pushd"
alias po="echo_and_call popd"
alias cdsrc="echo_and_call cd /workspace/learn-spring"
alias pusrc="echo_and_call pushd /workspace/learn-spring"
# alias cdgh="echo_and_call cd $HOME/src/gh"
# alias pugh="echo_and_call pushd $HOME/src/gh"
# alias cdbb="echo_and_call cd $HOME/src/bb"
# alias pubb="echo_and_call pushd $HOME/src/bb"
# alias cdconfig="echo_and_call cd $HOME/src/config"
# alias puconfig="echo_and_call pushd $HOME/src/config"
# alias cdhome="echo_and_call cd $HOME/src/config/linked/home"
# alias puhome="echo_and_call pushd $HOME/src/config/linked/home"
# alias cddph_bash="echo_and_call cd $HOME/src/config/linked/home/_dph_bash"
# alias pudph_bash="echo_and_call pushd $HOME/src/config/linked/home/_dph_bash"

# Uncomment next, once core-utils is installed (Homebrew)
# alias treea="echo_and_call tree -a"
# alias tree="echo_and_call tree -aC --dirsfirst"

alias portls="sudo lsof -i -P -n | grep LISTEN"

# Uncomment next, once postgresql is installed (ASDF)
# alias pg_ctl2="/Users/dholt2/.asdf/installs/postgres/12.6/bin/pg_ctl -D /Users/dholt2/.asdf/installs/postgres/12.6/data -o \"-p 5432\""
# alias pg_ctl9="/Users/dholt2/.asdf/installs/postgres/9.6.21/bin/pg_ctl -D /Users/dholt2/.asdf/installs/postgres/9.6.21/data -o \"-p 5439\""
# pg_ctl() {
#   pg_ctl2 "$@"; pg_ctl9 "$@"
# }

# Uncomment next, once aws cli and profile switcher is installed (pip)
# alias aps="echo_and_call aws-profile-switcher"
# alias aws_ps="echo_and_call aws-profile-switcher"
# alias aws_ident="echo_and_call aws sts get-caller-identity"

# Uncomment next, once SDKMAN is installed (https://sdkman.io/install)
# alias listjava="sdk list java | grep installed"

# Uncomment next, once Vim and NeoVim are installed (Homebrew)
alias svim="echo_and_call /usr/bin/vim"
alias vim="echo_and_call $brew_home/bin/nvim"
alias vi="echo_and_call $brew_home/bin/nvim"
alias e="echo_and_call $brew_home/bin/nvim"

# alias pgstatus="sudo service postgresql status"
# alias pgstart="sudo service postgresql start"
# alias pgstop="sudo service postgresql stop"

# Uncomment next, once direnv is installed (Homebrew)
# alias da="direnv allow"
