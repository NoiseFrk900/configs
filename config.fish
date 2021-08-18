# ============================================================================
#  _   _  _____  ___  
# | \ | ||  ___|/ _ \ 
# |  \| || |_  | (_) |
# | |\  ||  _|  \__, |
# |_| \_||_|      /_/ 
#
# config.fish file for Noisefrk900
# ============================================================================

### EXPORT ###
set -U fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "vim"
set VISUAL "gvim"

function fish_mode_prompt
switch $fish_bind_mode
	case default
		set_color --bold cyan
		echo '[N] '
	case insert
		set_color --bold magenta
		echo '[I] '
	case replace_one
		set_color --bold 0080f0
		echo '[R] '
	case visual
		set_color --bold c4a000
		echo '[V] '
	case '*'
		set_color --bold red
		echo '[?] '
	end
	set_color normal
end

### KEY BINDINGS ###
#bind insert \cE cancel

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

### ALIASES ###
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# ssh
alias sshhack='systemctl start ssh'
alias sshnuke='systemctl stop ssh'
alias sshspy='systemctl status ssh'
#alias sshspax='systemctl start ssh'

# expressvpn
alias exp='expressvpn connect'
alias expd='expressvpn disconnect'
alias expn='expressvpn connect "norway"'
alias expu='expressvpn connect "smart"'
alias expc='expressvpn connect "canada"'
alias expj='expressvpn connect "japan"'
alias expa='expressvpn connect "argentina"'
alias expi='expressvpn connect "israel"'
alias expe='expressvpn connect "egypt"'
alias exps='expressvpn status'

# List
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -alF'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias lynx='lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'
#alias ncmpcpp='ncmpcpp ncmpcpp_directory=$HOME/.config/ncmpcpp/'
#alias mocp='mocp -M "$XDG_CONFIG_HOME"/moc -O MOCDir="$XDG_CONFIG_HOME"/moc'

# Config Files
alias vc='vim /home/noisefrk900/.vim/colors/library.vim'
alias vv='vim /home/noisefrk900/.vimrc'
alias bv='vim /home/noisefrk900/.bashrc'
alias fv='vim /home/noisefrk900/.config/fish/config.fish'
alias sv='vim /home/noisefrk900/.config/starship.toml'
alias av='vim /home/noisefrk900/.config/alacritty/alacritty.yml'

# Misc
alias sagi='sudo apt-get install'
alias pa='ps -A'
alias cx='chmod +x'
alias c='clear'
alias tree='tree -C'

#source /home/noisefrk900/alacritty/extra/completions/alacritty.bash
starship init fish | source
