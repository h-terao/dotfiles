# Dotfiles

My dotfiles managed by [hokura](https://github.com/h-terao/hokura).

## Getting Started

**Prerequisites**

- git
- [hokura](https://github.com/h-terao/hokura)

**Installation**

Create a hokura configuration file as `~/.config/hokura/settings.toml` with the following content:

```toml
[vars]
user.name = "Your Name"
user.email = "your.email@example.com"
```

Then, run the following command to apply the dotfiles:

```bash
hokura init git@github.com:h-terao/dotfiles.git
hokura apply
```

**MCP Installation**

I always use some MCP servers for development.

```bash
claude mcp add playwright -s user -- npx -y @playwright/mcp@latest
claude mcp add context7 -s user -- npx -y @upstash/context7-mcp
```
