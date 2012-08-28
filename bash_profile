source /usr/local/etc/bash_completion.d/git-completion.bash
export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH
export PATH=$PATH:/usr/local/cuda/bin
export PATH=$PATH:/usr/local/sbin
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
export PATH=/usr/local/bin:$PATH
export NODE_PATH=/usr/local/lib/node_module
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r20.0.1
export ANDROID_NDK_ROOT=/usr/local/Cellar/android-ndk/r8b
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export GOROOT=/usr/local/Cellar/go/r60.3
export GOARCH=amd64
export GOOS=darwin
export PATH=$PATH:$GOROOT/bin

export RSENSE_HOME=$HOME/.dotfiles/rsense

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


##A english translate tool
ts(){

words=""
for word in $@; 
do
    words="$words$word "
done

curl -s \
        "http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule&smartresult=ugc&sessionFrom=dict.top" \
     -d \
	"type=AUTO& i=$words&doctype=json&xmlVersion=1.4&keyfrom=fanyi.web&ue=UTF-8&typoResult=true&flag=false" \
        | gsed -r -n 's/.*tgt":"([^"]+)".*/\1/p' ;

return 0;
}

#tss(){
#result=`curl -s \
#        "http://fanyi.youdao.com/fanyiapi.do?keyfrom=HaloWordDictionary&key=1311342268&type=data&doctype=json&version=1.1&q=$1" `;
#
#echo $result | sed -E 's/.*etic":(.*),"exp.*/\1/g' 
#echo $result | sed -E 's/.*explains":([^\}]+)\}.*/\1/g'  | sed -E 's/"|\[|\]//g'  | sed -E 's/,//g'
#
#    audio="http://www.gstatic.com/dictionary/static/sounds/de/0/$1.mp3"
#    mpg123 -q $audio 
#return 0;
#
#}

towk() {
    cd ~/Documents/;
    return 0;
}

towka() {
    cd ~/Documents/;
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

ebash(){
    vim ~/.bash_profile;
    return 0;
}

sbash(){
    source ~/.bash_profile;
    return 0;
}

repacker(){
    cd $1;
    cp /Users/lihex/Devtools/TexturePR/unpack.py ./;
    cp /Users/lihex/Devtools/TexturePR/repack.py ./;
    python unpack.py $2.plist;
    mv $2.atlas $2.combines;
    for f in *.png; do
        echo "Processing $f file..."
        if [[ "${f}" != "$2.png" ]]; then
            cp "${f}"  "$2.combines/"
        fi
     done
     python repack.py $2.plist
#     rm -rf $2.combines
     cd -;
     return 0;
}

proxy(){
    cd ~/Downloads/goagent/local/;
    python proxy.py;
}

# Mac Version
# notic: ^M^L = Ctrl+v Ctrl+Enter Ctrl+v Ctrl+l
tss(){
result=`curl -s \
        "http://dict-co.iciba.com/api/dictionary.php?w=$1" `;

echo $result | sed -E -n 's/.*<ps>([^<]+)<\/ps>.*/\1/p'; 
echo $result | sed -E -n 's/.*<pos>([^<]+)<\/pos>.*/\1/p'; 
echo $result | sed -E -n 's/.*<acceptation>([^<]+)<\/acceptation>.*/\1/p'; 

#examples
echo $result \
    | sed 's/.*<\/acceptation>//g' \
    | sed 's/<trans>//g' \
    | sed 's/<orig>//g' \
    | sed 's/<[^<>]*>//g' ;

#Evaluate whether audio information
is_empty=`echo $result | grep pron`
if [ "$is_empty" ]; then
    audio=`echo $result |sed -E 's/.*<pron>([^<]+)<\/pron>.*/\1/'`
    mpg123 -q $audio &
fi

return 0;

}

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
