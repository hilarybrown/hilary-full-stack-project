#!/bin/bash

curl --include --request PATCH "http://localhost:4741/movies/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "movie": {
      "title": "'"${TITLE}"'",
      "was_watched": "'"${WAS_WATCHED}"'",
      "rating": "'"${RATING}"'",
      "re_watch": "'"${RE_WATCH}"'"
    }
  }'

  echo

# ID=1 WAS_WATCHED="yes" RATING=3 RE_WATCH="yes" sh scripts/movies/update.sh
