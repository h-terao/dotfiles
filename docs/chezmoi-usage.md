# Chezmoi Usage Instructions

Chezmoi is a powerful and flexible tool for managing your dotfiles across multiple machines. It allows you to keep your configuration files in a version-controlled repository and easily apply them to any system.

Chezmoi stores your dotfiles in a separate source directory, enabling you to manage them without cluttering your home directory. It supports templating, encryption for sensitive data, and various other features to streamline dotfile management.

This document provides instructions on how to use chezmoi effectively. See the [official chezmoi documentation](https://www.chezmoi.io/docs/) for more detailed information.

## Commands

### Initial setup

After installing chezmoi, follow these steps to set up your dotfiles:

```bash
chezmoi init h-terao  # Clone the dotfiles repository to your chezmoi source directory
chezmoi apply  # Apply the dotfiles to your home directory
```

### Navigate to chezmoi source directory

To navigate to the chezmoi source directory where your dotfiles are stored, use the following command:

```bash
chezmoi cd
```

### Add new dotfiles

To manage a new file with chezmoi, use the following command:

```bash
chezmoi add path/to/your/file
```

### Edit dotfiles

There are various ways to edit your dotfiles managed by chezmoi, but I like to edit them directly in the chezmoi source directory. To do so, follow these steps:

```bash
chezmoi cd
# Edit files as needed, for example:
nano home/dot_bashrc  # Rename to your preferred editor
# After editing, apply the changes:
chezmoi apply
```

### Remove dotfiles

To stop managing a file with chezmoi and remove it from your home directory, use:

```bash
chezmoi forget path/to/your/file
```

### Sync changes

If you add or change dotfiles, push the changes to remote repository:

```bash
chezmoi cd  # Move to chezmoi source directory
# Normally use git to commit and push changes
git add path/to/changed/files
git commit -m "Describe your changes"
git push origin HEAD
```

This keeps your dotfiles backed up and synchronized across machines.
To apply the latest changes on another machine, use:

```bash
chezmoi update  # Pull the latest dotfiles from the remote repository
chezmoi apply  # Apply the updated dotfiles
```