export PATH=$PATH:$HOME/go/bin/:$HOME/.dotfiles/bin/
export GOBIN=$HOME/go/bin/
export GOROOT=$HOME/go/
export GOOS=linux
export GOARCH=i386
export EDITOR=vim

export RSENSE_HOME=$HOME/.dotfiles//rsense

#git aliases
alias gs='git status'
alias gmt='git mergetool'
alias gc='git commit'
alias gca='git commit -a'
alias gb='git branch'
alias gpo='git push origin'
alias gaa='git add .'
alias gco='git checkout'
alias glg='git log --graph'
alias gl='git log'
alias gm='git merge'
alias gtk='gitk'
alias gcl='git clone'
alias gp='git push'
alias gd='git diff'

#Tar aliases 
alias ztar='tar -zcvf'
alias uztar='tar -zxvf'

#Cmd line aliases
alias cd..='cd ..'
alias lsa='ls -la'
alias cl='clear'
alias md='mkdir'
alias rd='rmdir'

#todotxt aliases
alias tol='todo ls'
alias toa='todo a'
alias tod='todo do'

ebash(){
    vim ~/.bashrc;
    return 0;
}

sbash(){
    source ~/.bashrc;
    return 0;
}

proxy() {
    cd /Volumes/home/localproxy-2.0.0/;
    python ./proxy.py;
    return 0;
}
