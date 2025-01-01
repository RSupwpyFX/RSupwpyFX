#!/bin/bash

# Data inicial e final
start_date="2025-01-01"
end_date=$(date +"%Y-%m-%d") # Data de hoje

# Loop de criação de commits
current_date="$start_date"
while [[ "$current_date" < "$end_date" ]]; do
  # Comitar com a data atual
  GIT_AUTHOR_DATE="$current_date 12:00:00" GIT_COMMITTER_DATE="$current_date 12:00:00" git commit --allow-empty -m "Fake commit em $current_date"
  
  # Avançar um dia
  current_date=$(date -I -d "$current_date + 1 day")
done
