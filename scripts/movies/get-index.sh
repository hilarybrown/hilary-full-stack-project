#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiViZDQ5YjViOWVhMWVjNTUzM2Q3NDFlMjVmZGE5NmIzMgY6BkVG--51c2ed8d8f1115add79facffdbd49584f71b46ba"

echo
