# TODO: zsh color scheme

# === Source ===
for config in "$HOME"/.shell/*.sh "$HOME"/.shell/*.zsh; do
    source "$config"
done
unset config

# === Antigen ===
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen-apply

eval "$(fasd --init auto)"

# === Prompt ===
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="╭─${user_host} ${current_dir} ${git_branch} 
╰─%B$%b "
if [[ $(hostname) = midgar ]]; then
  RPS1="${return_code} [ ${battery_charge}%% ${battery_state} ]"
else
  RPS1="${return_code}"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

# === Options ===
export LSCOLORS=exGxcxdxbxegedabagacad
export EDITOR=vim
export LANG=en_US.UTF-8
set -o vi

setopt CORRECT
setopt HISTIGNOREDUPS
setopt EXTENDEDHISTORY
setopt APPENDHISTORY

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.shell/.zsh_history
