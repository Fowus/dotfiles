# Dotfiles

Personal configuration files for setting up a Linux environment.

## Contents

- `homefiles/` — Bash configuration files including `.bash_aliases` and setup script
  - See `homefiles/README.md` for details
- `sys-installs/` — Ansible installation script for automating system package setup
  - See `sys-installs/README.md` for details
- `vim-config/` — Vim configuration with Vundle plugin manager, badwolf color scheme, and vim-fugitive for Git integration
  - See `vim-config/README.md` for details

## How to Use

1. Clone the repository:
```bash
   git clone https://github.com/Fowus/dotfiles.git
   cd dotfiles
```

2. Navigate to the section you want and run the corresponding install script:
```bash
   # For Vim setup
   cd vim-config && bash install.sh

   # For bash aliases
   cd homefiles && bash setup-bash.sh

   # For system installs
   cd sys-installs && bash install-ansible.sh
```

## Issues Resolved

- **#2 - Add comments on code:** Added inline comments to `vim-config/install.sh` and `vimrc` explaining what each line does for easier readability and understanding.
- **#1 - Dotfile Peer-Review (safety checks):** Acknowledged peer feedback on adding backup and confirmation logic to install scripts. Current scripts work as intended for this repo's scope; safety checks are noted as a future improvement.

## Future Improvements

- Add safety checks to install scripts (backup existing configs before overwriting, prompt user for confirmation)
- Combine all setup scripts into a single master install script
- Add an uninstall script
