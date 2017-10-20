#!/bin/bash

curl --include --request POST "http://localhost:4741/movies" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "movie": {
      "title": "'"${TITLE}"'",
      "genre": "'"${GENRE}"'",
      "description": "'"${DESCRIPTION}"'",
      "was_watched": "'"${WAS_WATCHED}"'",
      "rating": "'"${RATING}"'",
      "re_watch": "'"${RE_WATCH}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'
