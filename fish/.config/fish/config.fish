#set -gxp PATH /usr/local/opt/python@3.9/libexec/bin /usr/local/sbin $HOME/go/bin
set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

function fish_user_key_bindings

end

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

# Aliases (to do... add to another file)
alias vimwiki="nvim -c VimwikiIndex"
alias grubo="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias lolo="sudo sysctl -w abi.vsyscall32=0"
alias pythonserve="python -m http.server 8000"
alias shadowplay="gpu-screen-recorder -w DP-0 -c mp4 -f 60 -a "EVO4.monitor" -a "EVO4" -o /mnt/speed/zHome/Videos/_loonix/apexio-$(date +"%Y-%m-%d-%H%M").mp4"
alias wget="wget -c"
alias diskspace="df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs"
alias mkdir="mkdir -pv"
alias v="nvim"
alias stowage="stow --adopt -vt ~ *"
alias paclean="sudo pacman -Qtdq | pacman -Rns -"
