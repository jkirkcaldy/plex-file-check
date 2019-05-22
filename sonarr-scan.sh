#! /bin/sh

curl -d '{name: "missingEpisodeSearch"}' -H "Content-Type: application/json" -X POST https://sso.themainframe.co.uk/sonarr/api/command?apikey=8e80d1e5632b49faa07327f5e386c231
