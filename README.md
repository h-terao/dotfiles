# h-terao's dotfiles

## Overview

This repository contains my personal dotfiles, which are configurations for various tools and packages that I use on my systems. The dotfiles are managed using [chezmoi](https://www.chezmoi.io/), a powerful dotfile manager that allows me to easily synchronize my configurations across multiple machines.

### Scope

- Shell configurations
- Editor configurations
- Package configurations

### Out of scope

Below would be managable via chezmoi, but are intentionally excluded from this repository:

- System configurations
- Package installations
- Secret management: All secrets are injected at runtime and are not stored in this repository.

## Setup instructions

### Prerequisites

Ensure you have the following tools installed on your system:

- git: version control system
- [chezmoi](https://www.chezmoi.io/): dotfile manager
- [fish](https://fishshell.com/): main shell for user operations
- [fisher](https://github.com/jorgebucaran/fisher): plugin manager for fish shell

In addition, I recommend the following tools for an enhanced command-line experience:

- [mise](https://mise.jdx.dev/): tool version manager
- [usage](https://usage.jdx.dev/spec/): specification for CLI, used for mise completions
  - See installation instructions at [official usage CLI page](https://usage.jdx.dev/cli/).
- claude-code: AI assistant for coding
- zoxide: smart directory jumper
- fzf: command-line fuzzy finder
- eza: modern replacement for `ls`

To install them on Arch Linux, run:

```bash
$ yay -S git chezmoi fish fisher
```

### Setup dotfiles

After installing the prerequisites, follow these steps to set up the dotfiles.

1. Create chezmoi configuration file at `~/.config/chezmoi/chezmoi.toml` with your name and email:
  ```toml
  [data]
  name = "Your Name"
  email = "Your Email"
  ```
  to inject your personal information into the dotfiles. If not set, next step will fail due to missing variables.
2. Clone and apply the dotfiles using chezmoi:
  ```bash
  chezmoi init h-terao  # Clone https://github.com/h-terao/dotfiles
  chezmoi apply  # Apply the dotfiles to your home directory
  ```

## Appendix

- [Chezmoi Usage Instructions](docs/chezmoi-usage.md)