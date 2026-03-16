# Navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -alh'

# Clear screen
alias c='clear'

# Git shortcuts
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'

# Apache shortcuts
alias a2restart='sudo systemctl restart apache2'
alias a2reload='sudo systemctl reload apache2'
alias a2status='sudo systemctl status apache2'
alias a2test='sudo apache2ctl configtest'

# Safety
alias rm='rm -i'
