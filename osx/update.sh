#!/bin/bash

npm update -g # npm outdated -g

brew update && brew upgrade # brew outdated

twilio plugins:update
twilio autocomplete

pip3 freeze | cut -d'=' -f1 | xargs -n1 pip3 install -U # pip3 list --outdated

brew cleanup -s
brew autoremove