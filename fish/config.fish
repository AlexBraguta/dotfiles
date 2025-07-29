function fish_greeting
    #echo "Welcome to your clean shell session ✨"
    fastfetch
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux BROWSER firefox

alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short' # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl" # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias update='sudo pacman -Syu'

alias please='sudo'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Listing
alias ls='eza -lh --group-directories-first --icons=auto'

# Compression
function compress
    tar -czf (string replace -r '/$' '' $argv[1]).tar.gz (string replace -r '/$' '' $argv[1])
end

# Git
function lazyg
    git add .
    git commit -m "."
    git push gh-alex
    git push gh-system
end

alias decompress="tar -xzf"

alias c="clear"
alias update="sudo pacman -Syu"
alias vps="ssh root@31.97.51.93"
alias solstice="source /mnt/diskD/Projects/Python/Environments/bot-env/bin/activate.fish && cd /mnt/diskD/Projects/Python/solstice"
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"
#alias editfish="sudo -E nvim /usr/share/cachyos-fish-config/cachyos-config.fish"
alias editfish="sudo -E nvim ~/.config/fish/config.fish"
alias edithypr="sudo -E nvim ~/.config/hypr/hyprland.conf"
alias editterm="sudo -E nvim ~/.config/alacritty/alacritty.toml"
alias editstarship="sudo -E nvim ~/.config/starship.toml"
alias docker-list="docker ps -a --format 'table {{.Names}}\t{{.Status}}'"

alias pycharm=/opt/pycharm/bin/pycharm

starship init fish | source
