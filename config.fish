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
#set -U fish_greeting                                 # Supresses fish's intro message
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
alias rf='rm -f'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias lynx='lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'

# Config Files
alias vc='vim /home/noisefrk900/.vim/colors/library.vim'
alias vv='vim /home/noisefrk900/.config/nvim/init.vim'
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
alias cm='cmatrix -s -C cyan'
alias vim='nvim'
alias scim='sc-im'

function scm
	cd
	cd spreadsheets
	sc-im ss.sc
end

function arc
	cd 
	cd Library
	switch $argv[1]
		case default
		case -a 
			vim Archive.zt
		case -b
			vim Bibliography.zt
		case -c
			vim Codex.zt
		case -e
			vim Enchiridion.zt
		case -h
			vim Hypomnema.zt
		case -l
			vim Lectures.zt
		case -w
			vim Writing.zt
		case '*'
			vim Compendium.zt
		end
end

function new
	cd
	cd Library
	switch $argv[1]
		case default
		case -a 
			vim (date +'A%Y%m%d%H%M.zt') 
		case -b
			vim (date +'B%Y%m%d%H%M.zt') 
		case -c
			vim (date +'C%Y%m%d%H%M.zt') 
		case -e
			vim (date +'E%Y%m%d%H%M.zt') 
		case -h
			vim (date +'H%Y%m%d%H%M.zt') 
		case -l
			vim (date +'L%Y%m%d%H%M.zt') 
		case -w
			vim (date +'%Y%m%d%H%M.zt') 
		case '*'
			vim Compendium.zt
		end
end

export MPD_HOST=/run/mpd/socket
export MPD_PORT=6600
#fish_add_path /opt/df_linux
#fish_add_path /opt/tor-browser_en-US

#source /home/noisefrk900/alacritty/extra/completions/alacritty.bash
starship init fish | source

