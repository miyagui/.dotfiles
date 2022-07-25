#set -gxp PATH /usr/local/opt/python@3.9/libexec/bin /usr/local/sbin $HOME/go/bin
set -gx EDITOR nvim

# git
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_char_stateseparator ' '
set -g __fish_git_prompt_char_dirtystate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_conflictedstate "+"
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_cleanstate green --bold
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_branch cyan --dim --italics

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

alias vimwiki="nvim -c VimwikiIndex"
alias grubo="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias lolo="sh -c 'sysctl -w abi.vsyscall32=0'"
alias pythonserve="python -m http.server 8000"
alias shadowplay="gpu-screen-recorder -w DP-4 -c mp4 -f 60 -a "EVO4.monitor" -o /mnt/speed/zHome/Videos/_loonix/apexio-$(date +"%Y-%m-%d-%H%M").mp4"
