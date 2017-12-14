# Source global definitions
if [ -f '/etc/bashrc' ]; then
	'. /etc/bashrc'
fi

# Source confidential definitions
if [ -f '.bashrc-confidential' ]; then
        . '.bashrc-confidential'
fi

# User specific aliases and functions
alias ls='ls -l -h --color=auto'
alias df='df -h'

# Setup alias git alias for dot file repository
# Per: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias cnf='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Make command prompt look cool
export PS1='\[\e]0;\w\a\]\n\[\e[34m\] \u@\h:\[\e[0m\]\w\[\e[0m\]\n \$ ' # Use Solarized Dark terminal theme with 0% transparency
