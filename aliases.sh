# shell functions
function take {
    mkdir -p $1
    cd $1
}

function osync {
    cd ~/Documents/obsidian-vault
    git add . && git commit -m "obsidian update: $(date)"
    git push -u origin HEAD
}

function gwa {
    if [ "$#" -ne 2 ]; then
        echo "Usage: gwa <feature type> <branch name>"
        return
    fi

    local feature_type=$1
    local branch_name=$2

    git worktree add -b $feature_type/$branch_name .worktrees/$feature_type/$branch_name

}

function gwb {
    cd ../../..
}

function newsess {
    tmux new -s $1 -d
}

function sql-spad {
    mkdir -p /tmp/sqlpad
    touch /tmp/sqlpad/$(date +%s).sql
    nvim /tmp/sqlpad/$(date +%s).sql
}


# aliases 
alias bat='bat -p'
alias ls='eza'
alias ll='eza -l'
alias el="eza -l --icons --git -a"
alias elt="eza --tree --level=3 --long --icons --git"
alias cdr='cd $(git rev-parse --show-toplevel)'

alias y='yazi'

alias rustbook='rustup doc --book'
alias gcommit='~/dotfiles/scripts/gum/better_commit.sh'
alias gswitch='~/dotfiles/scripts/gum/better_switch.sh'

alias c=clear
alias t=tmux

alias wrename='tmux rename-window'
alias ktl=kubectl
alias gowork='~/go/src/github.com/Masamerc/'
alias k=kubectl

alias lg=lazygit

alias vim=nvim
alias vi=nvim
alias v=nvim

alias gcl="gcloud"
