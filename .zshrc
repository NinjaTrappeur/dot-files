autoload -Uz compinit
compinit

#Autocomplétion
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
	                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd

#Bind des touches non reconnues
bindkey '^[OF' end-of-line
bindkey '^[OH' beginning-of-line
bindkey '^[[3~' delete-char

#Alias
alias c="clear"
alias top="htop"
alias wghs="cd /home/minoulefou/Code/perso/haskell/wireguard-hs"
alias hs="cd /home/minoulefou/Code/perso/haskell/"
alias keeUp='zsh /home/minoulefou/.scripts/syncKeepassUp.zsh'
alias keeDown='zsh /home/minoulefou/.scripts/syncKeepassDown.zsh'
alias logUp="touch /tmp/keylogger.log && sudo logkeys --start --output /tmp/keylogger.log --no-timestamps"
alias logDown="sudo logkeys --kill && sudo rm /tmp/keylogger.log"

#Rappel: pour trouver les codes des touches,
#	ctl+v
export PYTHONPATH=/usr/lib/python3.3/site-packages
export EDITOR=nvim
export GOPATH=/home/minoulefou/Code/go
export PATH="/home/minoulefou/rbenv/shims:/home/minoulefou/.local/bin:${PATH}"
