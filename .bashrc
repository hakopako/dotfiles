######## 短縮コマンド ########
alias lsa='ls -aGF'
alias ll='ls -laGF'
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'

function cdls() {
    \cd $1;
    ls;
}
alias cd=cdls

####### 起動アプリケーション指定 ######
alias Sublime='open -a /Applications/Sublime\ Text\ 2.app'


######## 起動時 ########
echo ''
echo '<U+F8FF> ——— Welcome ——— <U+F8FF>'
echo ''

######## 他 ########
export PS1='\W \t $ '
