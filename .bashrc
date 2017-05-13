# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && source `brew --prefix`/etc/autojump.sh

# Alias define
alias reloadBashrc='. ~/.bashrc'
alias clearUserMail='> /var/mail/DevinWang'
alias ll='ls -AlhS'

alias podUpdateFaster='pod update --verbose --no-repo-update'
alias podInstallFaster='pod install --verbose --no-repo-update'

alias showHideFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hideHideFiles='defaults write com.apple.finder AppleShowAllFiles NO;  killall Finder'

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias grep='grep --color=auto'
alias gitPrune='git remote prune'

alias appStoreArchive='xcodebuild -exportArchive -archivePath ../archive/appstore.xcarchive -exportOptionsPlist .build/appstore.plist -exportPath ../appstore'
