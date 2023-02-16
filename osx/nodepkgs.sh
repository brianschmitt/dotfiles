#!/bin/bash

npm install -g git-open
npm install -g twilio-cli

twilio plugins:install @twilio-labs/plugin-serverless
twilio plugins:install @twilio-labs/plugin-token
twilio plugins:install @twilio-labs/plugin-watch
twilio plugins:install @twilio-labs/plugin-flex
twilio plugins:install @twilio-labs/plugin-webhook # https://github.com/twilio-labs/plugin-webhook

twilio autocomplete
# https://www.twilio.com/docs/twilio-cli/plugins
# https://github.com/twilio-infra-as-code/plugin-twilio-infra
# https://github.com/twilio-labs/plugin-token

pip3 install -U gita
