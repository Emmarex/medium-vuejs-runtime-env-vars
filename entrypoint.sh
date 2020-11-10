#!/bin/sh

JSON_STRING='window.configs = { \
  "VUE_APP_VARIABLE_1":"'"${VUE_APP_VARIABLE_1}"'", \
  "VUE_APP_VARIABLE_2":"'"${VUE_APP_VARIABLE_2}"'" \
}'

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i "" "s@// CONFIGURATIONS_PLACEHOLDER@${JSON_STRING}@" /usr/share/nginx/html/index.html
else
  sed -i "s@// CONFIGURATIONS_PLACEHOLDER@${JSON_STRING}@" /usr/share/nginx/html/index.html
fi

exec "$@"
