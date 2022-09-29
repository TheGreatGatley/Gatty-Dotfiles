#  ______   ___   _____  _   _ ______  _____
#  | ___ \ / _ \ /  ___|| | | || ___ \/  __ \
#  | |_/ // /_\ \ `--.  | |_| || |_/ /| /  \/
#  | ___ \|  _  | `--. \|  _  ||    / | |
#  | |_/ /| | | |/\__/ /| | | || |\ \ | \__/\
#  \____/ \_| |_/\____/ \_| |_/\_| \_| \____/
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load the colour scheme
cat ~/.config/i3/sequences

# Environment Variables
export PATH="$PATH:/$HOME/.local/bin"
export EDITOR=nvim
export PS1="\[$(tput bold)\][\[$(tput sgr0)\]\[[38;5;12m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[[38;5;12m\]\h\[$(tput sgr0)\] \w \[$(tput sgr0)\]\[[38;5;14m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]]\$ \[$(tput sgr0)\]"

# Bash Aliases
alias ls='ls --color=auto'
alias vim='cat ~/.config/i3/colour_scheme; vim'
alias manual='man'
alias htop='cat ~/.config/i3/colour_scheme; htop'
alias clear='clear ; neofetch'
alias la='ls -Slash'
alias spotify='spotify-launcher'
alias screenshot='cd ~/Screenshots ; scrot -d 3; cd -'
alias ranger='ranger; cat ~/.config/i3/colour_scheme'
alias dmenu_run='dmenu_run -fn "mononoki Nerd Font Mono" -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" '

# Run Neofetch
neofetch

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/daniel/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/daniel/.config/synth-shell/synth-shell-prompt.sh
fi

#source "/home/daniel/.ghcup/env" # ghcup-env

[ -f "/home/daniel/.ghcup/env" ] && source "/home/daniel/.ghcup/env" # ghcup-env
