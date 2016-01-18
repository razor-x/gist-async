#!/usr/bin/env sh

set -e
set -u

find_replace () {
  git ls-files -z | xargs -0 sed -i "$1"
}

check_env () {
  test -d .git || (echo 'This is not a Git repository. Exiting.' && exit 1)
  for cmd in ${1}; do
    command -v ${cmd} >/dev/null 2>&1 || \
      (echo "Could not find '$cmd' which is required to continue." && exit 2)
  done
  echo
  echo 'Ready to bootstrap your new project!'
  echo
}

stage_env () {
  echo
  git rm -f makenew.sh
  echo
  echo 'Staging changes.'
  git add --all
  echo
  echo 'Done!'
  echo
}

makenew () {
  read -p '> Package title: ' mk_title
  read -p '> Package name (slug): ' mk_slug
  read -p '> Short package description: ' mk_description
  read -p '> Version number: ' mk_version
  read -p '> Author name: ' mk_author
  read -p '> Author email: ' mk_email
  read -p '> Copyright owner: ' mk_owner
  read -p '> Copyright year: ' mk_year
  read -p '> GitHub user or organization name: ' mk_user
  read -p '> GitHub repository name: ' mk_project

  sed -i -e '11,79d;164,167d' README.md
  sed -i -e "11i ${mk_description}" README.md
  sed -i -e '26d' bower.json

  find_replace "s/version\": \".*\"/version \": \"${mk_version}\"/g"
  find_replace "s/0\.0\.0\.\.\./${mk_version}.../g"
  find_replace "s/CoffeeScript Package Skeleton/${mk_title}/g"
  find_replace "s/CoffeeScript package skeleton\./${mk_description}/g"
  find_replace "s/2016 Evan Sosenko/${mk_year} ${mk_owner}/g"
  find_replace "s/Evan Sosenko/${mk_author}/g"
  find_replace "s/razorx@evansosenko\.com/${mk_email}/g"
  find_replace "s/makenew\/coffeescript-package/${mk_user}\/${mk_project}/g"
  find_replace "s/makenew-coffeescript-package/${mk_slug}/g"

  echo
  echo 'Replacing boilerplate.'
}

check_env 'git read sed xargs'
makenew
stage_env
exit
