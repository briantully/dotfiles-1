#@IgnoreInspection BashAddShebang

function source_if_exists() {
  if [ -f $1 ]; then
    source $1
  fi
}

# Aliases.
alias dr=drush
alias la='ls -a'
alias lal='ls -al'
alias ll='ls -l'

# Prompt.
source_if_exists ~/Projects/drush/drush.complete.sh
source_if_exists `brew --prefix`/etc/bash_completion.d/git-prompt.sh
source_if_exists ~/.drush/drush.prompt.sh

# Completion.
source_if_exists `brew --prefix`/etc/bash_completion

# History. See bash(1).
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend
