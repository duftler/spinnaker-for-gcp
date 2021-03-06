#!/usr/bin/env bash

bold() {
  echo ". $(tput bold)" "$*" "$(tput sgr0)";
}

has_service_enabled() {
  gcloud services list --project $1 \
    --filter="config.name:$2" \
    --format="value(config.name)"
}
