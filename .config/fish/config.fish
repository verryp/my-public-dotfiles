set fish_greeting ""

##### PRELOAD #####
set -gx TERM xterm-256color
eval "$(/opt/homebrew/bin/brew shellenv)"

##### SETUP LOCAL CONFIG ####
set LOCAL_CONFIG (dirname (status --current-filename))/local_config.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

##### theme #####
#set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_hide_hostname no
set -g theme_display_user yes
set -g theme_hostname always

### currently i'm using Tide theme
#set -gx STARSHIP_CONFIG ~/.config/starship.toml
#eval (starship init fish)

# GO
set -gx PATH $HOME/code/go-workspace/bin $PATH # adjust your go dir path
set -gx PATH "$PATH:/Applications/Goland.app/Contents/Resouces/app/bin" $PATH
set -g GOPATH $HOME/code/go-workspace
set -g GO_WORKSPACE $GOPATH/src


##### aliases #####
## Go
alias goland /usr/local/bin/goland
alias go-workspace "cd $GO_WORKSPACE"

## Git
alias g git
alias gitgr 'git log --pretty=format:"\"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)\"" --graph --date=relative --decorate --all'

## Docker
alias dcp 'docker compose'
alias dcpup 'docker compose up'
alias di 'docker image'
alias dv 'docker volume'
alias dc 'docker container'
alias dn 'docker network'

## exa
if type -q exa
 alias ll "exa -l -g --icons"
 #alias ls "exa -g --icons"
 alias lla "ll -a"
 alias llt "lla --tree"
end


