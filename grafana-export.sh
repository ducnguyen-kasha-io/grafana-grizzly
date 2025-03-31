#!/bin/bash

log_file="grafana-export.log"
export_date=$(date +"%Y-%m-%d %H:%M:%S")

echo "Export started at: $export_date" | tee -a "$log_file"

providers=($(grr providers | awk 'NR>1 {print $2}'))

for provider in "${providers[@]}"; do
  echo "Pulling resources for provider: $provider" | tee -a "$log_file"
  grr pull "$provider" >> "$log_file" 2>&1
  if [ $? -ne 0 ]; then
    echo "Error pulling resources for provider: $provider" | tee -a "$log_file"
  fi
done

export_end_date=$(date +"%Y-%m-%d %H:%M:%S")
echo "Export finished at: $export_end_date" | tee -a "$log_file"

echo "Finished pulling resources for all providers." | tee -a "$log_file"