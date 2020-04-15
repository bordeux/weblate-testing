#!/usr/bin/env bash

xgettext --keyword=_ --from-code=UTF-8 --language=PHP --keyword=translate:1,2c --keyword=translate --sort-output --add-comments -o ./locale/en/LC_MESSAGES/messages.pot ./src/*
msginit --no-translator --input=./locale/en/LC_MESSAGES/messages.pot -o ./locale/en/LC_MESSAGES/messages.pot --locale=en.UTF-8


DOMAINS=('homepage' 'sample')

for domain in "${DOMAINS[@]}"; do
  msggrep -J -e homepage -o - ./locale/en/LC_MESSAGES/messages.pot | sed '/^msgctxt/d' > ./locale/en/LC_MESSAGES/${domain}.pot
  #touch ./locale/en/LC_MESSAGES/${domain}.po
  msgmerge --previous --update ./locale/en/LC_MESSAGES/${domain}.po ./locale/en/LC_MESSAGES/${domain}.pot
  rm ./locale/en/LC_MESSAGES/${domain}.pot
done

rm ./locale/en/LC_MESSAGES/messages.pot

