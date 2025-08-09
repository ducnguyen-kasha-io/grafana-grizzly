#!/bin/bash

providers=($(grr providers | awk 'NR>1 {print $2}'))
grafana_url=$(grr config get | awk '/url:/ {gsub(/https?:\/\//, "", $2); print $2}')_$(date +"%d-%m-%Y")

mkdir -p "resources/$grafana_url"

for provider in "${providers[@]}"; do
  grr pull "$provider"
  mv "$provider" "resources/$grafana_url/"
done
