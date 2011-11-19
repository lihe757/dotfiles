export PATH=$PATH:/Developer/Android/android-ndk-r5c
export PATH=$PATH:/Developer/Android/android-sdk-mac_x86/tools
export PATH=$PATH:/Developer/Android/android-sdk-mac_x86/platform-tools
ANDROID_NDK_ROOT=/Developer/Android/android-ndk-r5c
export ANDROID_NDK_ROOT
ANDROID_SDK_ROOT=/Developer/Android/android-sdk-mac_x86
export ANDROID_SDK_ROOT
export GOROOT=/Volumes/home/code/go
export GOROOT=/usr/local/Cellar/go/r60.3
export GOARCH=amd64
export GOOS=darwin
export PATH=$PATH:$GOROOT/bin

alias ctags='/usr/local/Cellar/ctags/5.8/bin/ctags'
export PATH=$PATH:$HOME/.dotfiles/bin

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
alias gsl='git stash list'
alias gsa='git stash apply'
alias gpu='git pull'
alias gpuo='git pull origin'

#Tar aliases 
alias ztar='tar -zcvf'
alias uztar='tar -zxvf'

#Cmd line aliases
alias cd..='cd ..'
alias lsa='ls -la'
alias cl='clear'
alias md='mkdir'
alias rd='rmdir'
alias ls='ls -l'

alias pbc='pbcopy'
alias pbp='pbpaste'

#todotxt aliases
alias tol='todo ls'
alias toa='todo a'
alias tod='todo do'

#alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
#echo "-----------------------------------------------"
#uptime
#echo "-----------------------------------------------"
#df -hl
#echo "-----------------------------------------------"
#echo "Up coming events:"
#echo "-----------------"
#CommandLineAssistant
#echo "-----------------------------------------------"
#echo "Todo Tasks:"
#echo "-----------"
#todo list
#echo ""


##rvm
[[ -s "/Users/lihex/.rvm/scripts/rvm" ]] && source "/Users/lihex/.rvm/scripts/rvm"  # This loads RVM into a shell session.

##Myfunctions
ts() {  
           wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=${2:-en}|${3:-zh}" | sed -E -n 's/[[:alnum:]": {}]+"translatedText":"([^"]+)".*/\1/p';   
#    wget -qO- "http://fanyi.youdao.com/translate?i=$1&keyfrom=dict.top" | sed -E -n 's/.*tgt":"([^"]+)".*/\1/p'; 
#    wget --post-data="type=AUTO& i=$1&doctype=json&xmlVersion=1.4&keyfrom=fanyi.web&ue=UTF-8&typoResult=true&flag=false" \
#        -qO- \
#        "http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule&smartresult=ugc&sessionFrom=dict.top" \
#        | sed -E -n 's/.*tgt":"([^"]+)".*/\1/p';
# 
#    return 0;  
}  

tsz() {  
    #        wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=${2:-zh}|${3:-en}" | sed -E -n 's/[[:alnum:]": {}]+"translatedText":"([^"]+)".*/\1/p';   
    wget --post-data="type=AUTO& i=$1&doctype=json&xmlVersion=1.4&keyfrom=fanyi.web&ue=UTF-8&typoResult=true&flag=false" \
        -qO- \
        "http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule&smartresult=ugc&sessionFrom=dict.top" \
        | sed -E -n 's/.*tgt":"([^"]+)".*/\1/p';
    return 0;  
} 


towk() {
    cd ~/Documents/NinjaChicken2-cross/;
    return 0;
}

towka() {
    cd ~/Documents/NinjaChicken2-cross/proj.android.workspace/NinjiaChicken2/jni;
    return 0;
}

proxy() {
    cd /Volumes/home/localproxy-2.0.0/;
    python ./proxy.py;
    return 0;
}

semacs(){
    /Applications/Emacs.app/Contents/MacOS/Emacs --daemon;
    return 0;
}

cemacs() {
    /Applications/Emacs.app/Contents/MacOS/bin/emacsclient ${1};
    return 0;
}

