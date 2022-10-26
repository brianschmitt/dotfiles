#!/bin/bash

npm install -g git-open
npm install -g twilio-cli

twilio plugins:install @twilio-labs/plugin-serverless
twilio plugins:install @twilio-labs/plugin-token
twilio plugins:install @twilio-labs/plugin-watch
twilio plugins:install @twilio-labs/plugin-flex
twilio autocomplete
# https://www.twilio.com/docs/twilio-cli/plugins