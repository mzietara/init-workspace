#!/bin/bash
set -e

USER_EMAIL=$1

if [ -z "$1" ]; then
  echo "please enter a user email"
  exit 1
fi

ssh-keygen -q -t ed25519 -C "$USER_EMAIL" -N '' -f ~/.ssh/ed25519 
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/ed25519



