# Homefiles - Bash Customizations

## Felix Owusu Agyemang

## Description

This folder contains bash customization files to improve command-line productivity.

## Files

- `.bash_aliases` - Custom bash aliases for navigation, git, and Apache management
- `setup-bash.sh` - Script to automatically set up bash aliases via symbolic link

## What the Aliases Do

### Navigation
- `..` - Go up one directory
- `...` - Go up two directories  
- `ll` - List files in long format with human-readable sizes

### Utilities
- `c` - Clear the terminal screen

### Git Shortcuts
- `gs` - Git status
- `ga` - Git add all files
- `gc` - Git commit with message
- `gp` - Git push

### Apache Server Management
- `a2restart` - Restart Apache
- `a2reload` - Reload Apache configuration
- `a2status` - Check Apache status
- `a2test` - Test Apache configuration syntax

### For Safety
- `rm` - Remove files with confirmation prompt

## Usage

Run the setup script:
```bash
./setup-bash.sh
```

Then reload the environment:
```bash
source ~/.bashrc
```

## References

- Google Gemini assisted me with writing the `setup-bash.sh` script and structuring the bash aliases file
- [30 Handy Bash Shell Aliases](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) - Ideas for common command shortcuts
- [The Ultimate Bashrc File](https://www.freecodecamp.org/news/bashrc-customization-guide/) - Guide to customizing bash environment
