#!/usr/bin/env bash
if [[ -d ./frontend ]]; then
  rm -rf ./public/
  
  (cd frontend && (
      pnpm build --no-cache &&
      rsync -avP ./assets/ ../public/assets/
    )
  )
fi
