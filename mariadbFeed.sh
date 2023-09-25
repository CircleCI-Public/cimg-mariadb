#!/usr/bin/env bash
vers=()

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi


getMariaDBVersions() {
  RSS_URL="https://github.com/mariadb/server/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')
  CLEAN_VERSIONS=$(echo "$VERSIONS" | grep -E "^mariadb-[0-9]+(\.[0-9]+)*$" | cut -d '-' -f2)
  for newVersion in $CLEAN_VERSIONS; do
    if ! [[ -d "${newVersion%.*}" ]]; then
      vers+=("$newVersion")
      continue
    fi
    generateSearchTerms "MARIADB_VERSION=" "${newVersion%.*}"/Dockerfile
    directoryCheck "${newVersion%.*}" "$SEARCH_TERM"
    if [[ $(eval echo $?) == 0 ]]; then
      vers+=("$newVersion")
    fi
  done
}

getMariaDBVersions

if [ -n "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Running release script"
  echo "${vers[*]}"
  ./shared/release.sh "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
