# Source global definitions
if [ -f '/etc/bashrc' ]; then
	'. /etc/bashrc'
fi

# Source distro definitions (per machine configs)
if [ -f '.bashrc-distro' ]; then
        . '.bashrc-distro'
fi

# Source confidential definitions
if [ -f '.bashrc-confidential' ]; then
        . '.bashrc-confidential'
fi


# Enable programmable completion features if not already enabled
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi


# User specific aliases and functions
alias ls='ls -l -h --color=auto'
alias df='df -h'
alias lpassc='lpass show -c --password'
alias d='docker'
alias dc='docker-compose'

# Setup alias git alias for dot file repository
# Per: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias cnf='git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Add git branch if its present to PS1
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Make command prompt look cool
export PS1='\[\e]0;\w\a\]\n\[\e[34m\] \u@\h:\[\e[0m\]\w\[\e[0m\] $(parse_git_branch)\012 \$ '

# Only show the last few directories in the command prompt
PROMPT_DIRTRIM=3
