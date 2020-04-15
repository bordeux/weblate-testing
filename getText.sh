#!/usr/bin/env bash

xgettext --keyword=_ --language=PHP --keyword=translate:1,2c --keyword=translate --sort-output --add-comments -o ./locale/en/LC_MESSAGES/messages.pot ./src/*
msgmerge --previous --update ./locale/en/LC_MESSAGES/messages.po ./locale/en/LC_MESSAGES/messages.pot