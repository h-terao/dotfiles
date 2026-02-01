#!/bin/bash

# Completions
chezmoi completion --output=~/.config/fish/completions/chezmoi.fish

# Plugins
fish --command "fisher install h-terao/fish-autols"