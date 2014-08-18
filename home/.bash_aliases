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
