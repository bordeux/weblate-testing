#!/usr/bin/env bash

xgettext --keyword=_ --language=PHP --sort-output --add-comments -o ./locale/en/LC_MESSAGES/messages.pot ./src/*
msgmerge --previous --update ./locale/en/LC_MESSAGES/messages.po ./locale/en/LC_MESSAGES/messages.pot