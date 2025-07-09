if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ""

starship init fish | source

alias edithypr='sudo -E nvim ~/.config/hypr/hyprland.conf'
alias editpaper='sudo -E nvim ~/.config/hypr/hyprpaper.conf'
alias editstarship='sudo -E nvim ~/.config/starship.toml'
alias editwaybar='sudo -E nvim ~/.config/waybar/config.jsonc'
alias editwaybarcss='sudo -E nvim ~/.config/waybar/style.css'
alias editkitty='sudo -E nvim ~/.config/kitty/kitty.conf'
alias editneofetch='sudo -E nvim ~/.config/neofetch/config.conf'
alias editrofi='sudo -E nvim ~/.config/rofi/config.rasi'
alias dproj='cd /mnt/diskD/Projects/'
alias copy-dotfiles='bash /mnt/diskD/Projects/dotfiles/copy-files.sh'

alias quitsteam='pkill steam && pkill steamwebhelper'
alias quitdiscord='killall discord'
alias quitslack='killall slack'

alias matrix='mpv --fullscreen --video-aspect-override=21:9 --loop-file=inf --input-terminal=no --really-quiet /home/system/Videos/matrix.mp4'
alias vps='ssh root@31.97.51.93'

alias docker-list="docker ps -a --format 'table {{.Names}}\t{{.Status}}'"

alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias home='cd ~'
alias cd..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'

alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

function lazyg
    git add .
    git commit -m "."
    git push gh-alex
    git push gh-system
end

function solstice
    source /mnt/diskD/Projects/Python/Environments/bot-env/bin/activate.fish
    cd /mnt/diskD/Projects/Python/solstice/
end

alias env-waybar='source /mnt/diskD/Projects/Python/Environments/waybar-env/bin/activate'

alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'

export API_KEY="cGQ4eYrpoHK2BwOaKdjnJyQEItMm962B1CuwnkM7sU4GADMgfZxO3bgCpn3Xn29c"
export API_SECRET="XkErBDO6iJpwEXUY02wAjj2ZETIbdmgP6s7SNYUIlYDSjXYoGEMlDvFK50WCN76c"

export TG_TOKEN="7427411871:AAGREPEQSC2us4Ca4zlwoJERLp5DopE-U9M"
export MY_CHAT_ID="967437417"

set -x PYTHONPYCACHEPREFIX /tmp/pycache/
export PYTHONDONTWRITEBYTECODE=1
