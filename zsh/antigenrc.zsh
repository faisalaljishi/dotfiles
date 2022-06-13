#[ -z "$SSH_CONNECTION" ] && ZSH_TMUX_AUTOSTART="true"
ZSH_AUTOSUGGEST_USE_ASYNC="true"

ZSH=$HOME/.zsh # Base directory for ZSH configuration
source $ZSH/antigen/antigen.zsh # Load Antigen
#source /usr/local/share/antigen/antigen.zsh

#source $ZSH/aliases.zsh # Source some extra files
#source $ZSH/functions.zsh

antigen use oh-my-zsh # Yes, I want to use Oh My ZSH

# Plugins
antigen bundles <<EOBUNDLES
aws
command-not-found
#colored-man-pages
#docker docker-compose kubectl
extract
fzf
history
git
magic-enter
pyenv
python
ssh-agent
sudo
tmux
rupa/z
zsh-users/zsh-autosuggestions
zsh-users/zsh-completions
zsh-users/zsh-history-substring-search
#zsh-users/zsh-syntax-highlighting

#test
0b10/cheatsheet
aikow/zsh-auto-ls
djui/alias-tips
#sei40kr/zsh-fast-alias-tips
Valiev/almostontop
#gretzky/auto-color-ls
yuhonas/zsh-ansimotd@main
unixorn/autoupdate-antigen.zshplugin
marlonrichert/zsh-autocomplete@main
Kallahan23/zsh-colorls
zdharma-continuum/fast-syntax-highlighting
changyuheng/fz
joshskidmore/zsh-fzf-history-search
Aloxaf/fzf-tab
bigH/git-fuzzy
#sindresorhus/pretty-time-zsh
willghatch/zsh-saneopt
zlsun/solarized-man
valentinocossar/sublime
#jsahlen/tmux-vim-integration.plugin.zsh
#softmoth/zsh-vim-mode
skywind3000/z.lua
alexiszamanidis/zsh-git-fzf
zsh-users/zsh-completions
lincheney/fzf-tab-completion


EOBUNDLES

# Node stuff
#antigen bundle node
#antigen bundle npm

# Do OS dependant stuff
case `uname` in
  Darwin)
    # Commands for OS X go here
    antigen bundle macos
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

# Set the theme
antigen theme romkatv/powerlevel10k
source $ZSH/themes/p10k.zsh

# And lastly, apply the Antigen stuff
antigen apply
antigen cleanup

source ~/.zsh/aliases.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/rand.zsh
if [ -e "$HOME/.zsh/local.zsh" ]; then # If local.zsh exists, source it
  source ~/.zsh/local.zsh
fi
