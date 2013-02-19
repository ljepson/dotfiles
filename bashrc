# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Private
if [ -f ~/.private ]; then
    . ~/.private
fi

# Functions
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Settings
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ' # Nice prompt @chris71mach1
export PAGER=less
export EDITOR=vim
shopt -s cdspell
shopt -s histappend
complete -cf sudo

# Aliases
alias s='screen -DR `whoami`'
alias ssh='ssh -A'
alias ar='sudo /sbin/service httpd restart'
alias mem='sudo /sbin/service memcached restart'
alias vim='vim -p'
alias vi='vim'
alias vb='vim ~/.bashrc'
alias vs='vim ~/.screenrc'
alias vv='vim ~/.vimrc'
alias vz='vim ~/.zshrc'
alias sb='source ~/.bashrc'
alias sz='source ~/.zshrc'
alias j='jobs -l'
alias ..='cd ..'
alias ...='cd ../..'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias :q='exit'
alias :Q=':q'
alias png="perl -e'for my \$png (<*.png>) { system(qq{optipng \$png});}'"
alias jpg="perl -e'for my \$jpg (<*.jpg>) { system(qq{jpegoptim --strip-all \$jpg});}'"

### CVS
alias ca='cvs add'
alias ci='cvs add -kb'
alias cc='cvs commit'
alias u='cvs -q update -Pd'

### Git
alias ga='git add'
alias gc='git commit'
alias gps='git push origin master'
alias gpu='git pull origin'
