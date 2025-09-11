#!/bin/bash

# mkdir ~/.nvm
# nvm install --lts

npm install -g git-open
npm install -g twilio-cli
npm install -g typescript
# npm install -g expo
# npm install -g ts-node

twilio plugins:install @twilio-labs/plugin-serverless
twilio plugins:install @twilio-labs/plugin-token
#twilio plugins:install @twilio-labs/plugin-watch
twilio plugins:install https://github.com/brianschmitt/plugin-watch
twilio plugins:install @twilio-labs/plugin-flex
twilio plugins:install @twilio-labs/plugin-webhook # https://github.com/twilio-labs/plugin-webhook
#twilio plugins:install @twilio-labs/plugin-dev-phone
#twilio plugins:install @twilio-labs/plugin-assets

twilio autocomplete
# https://www.twilio.com/docs/twilio-cli/plugins
# https://github.com/twilio-infra-as-code/plugin-twilio-infra
# https://github.com/twilio-labs/plugin-token

pipx install gita -i https://pypi.python.org/simple/
