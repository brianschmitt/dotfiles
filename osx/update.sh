#!/bin/bash

npm update -g # npm outdated -g

brew update && brew upgrade # brew outdated

twilio plugins:update
twilio autocomplete

pipx upgrade-all

brew cleanup -s
brew autoremove