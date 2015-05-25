# Grep search-and-replace.
alias gr=grep_replace
grep_replace() {
  grep -lr -e "$1" * | xargs sed -i "s/$1/$2/g"
}

# cd to the root of a Git repository.
# See https://stackoverflow.com/a/957978/895083.
alias git-root='cd "$(git rev-parse --show-toplevel)"'

# Drush.
alias dr=drush

# Drupal Coder Sniffer.
alias drupalcs="~/.composer/vendor/bin/phpcs --standard=/home/travis/Projects/Drupal/coder/coder_sniffer/Drupal --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt'"
