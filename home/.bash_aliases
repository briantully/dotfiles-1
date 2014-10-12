# Grep search-and-replace.
alias gr=grep_replace
grep_replace() {
  grep -lr -e "$1" * | xargs sed -i "s/$1/$2/g"
}

# cd to the root of a Git repository.
# See http://stackoverflow.com/a/11369533/895083.
alias git-root='if [ "`git rev-parse --show-cdup`" != "" ]; then cd `git rev-parse --show-cdup`; fi'

# Drush.
alias dr=drush

# Drupal Coder Sniffer.
alias drupalcs="~/.composer/vendor/bin/phpcs --standard=/home/travis/Projects/Drupal/coder/coder_sniffer/Drupal --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt'"

# Set the terminal tab name.
alias name-tab=name_tab
name_tab() {
  echo -ne "\033]0;$1\007"
}
