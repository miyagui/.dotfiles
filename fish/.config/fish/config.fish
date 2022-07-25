#set -gxp PATH /usr/local/opt/python@3.9/libexec/bin /usr/local/sbin $HOME/go/bin
set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

# Aliases (to do... add to another file)
alias vimwiki="nvim -c VimwikiIndex"
alias grubo="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias lolo="sh -c 'sysctl -w abi.vsyscall32=0'"
alias pythonserve="python -m http.server 8000"
alias shadowplay="gpu-screen-recorder -w DP-4 -c mp4 -f 60 -a "EVO4.monitor" -o /mnt/speed/zHome/Videos/_loonix/apexio-$(date +"%Y-%m-%d-%H%M").mp4"
alias wget="wget -c"
alias diskspace="df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs"
alias mkdir="mkdir -pv"
