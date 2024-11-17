export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="sorin"

plugins=(git)

source $ZSH/oh-my-zsh.sh
alias cd='z'
alias ls='eza -la --icons --no-time --no-user --group-directories-first --no-permissions'
alias tree='eza --tree'
alias cdf='selection=$(find . -type d -name ".git" -prune -o -print | fzf --preview="[[ -d {} ]] && tree -C {} || bat --color=always {}"); if [[ -n "$selection" ]]; then [[ -d "$selection" ]] && cd "$selection" || nvim "$selection"; fi'
alias wifiknown='nmcli con'
alias wificonn='nmcli con up'
alias wifiavail='nmcli dev wifi'
alias earphones='bluetoothctl connect F8:4E:17:8E:DC:F0'
alias touchpad='xinput set-prop 18 "libinput Tapping Enabled" 1'
alias btm='btm --theme nord'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -E "state|to full|percentage"'
eval "$(zoxide init zsh)"
