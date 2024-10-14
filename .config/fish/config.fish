set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "exa -l"
alias lla "ll -A"
alias g git
alias vim nvim
alias python python3

set -gx EDITOR nvim

# NodeJS
set --universal nvm_default_version v16.20.2
set --universal nvm_defualt_package yarn np

# bind ctrl+/ 清屏命令
bind \x1f clear_screen

function clear_screen
    clear
    commandline -f repaint
end


set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
