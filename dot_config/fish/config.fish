if status is-interactive
    abbr --add fix sudo xattr -r -d com.apple.quarantine
    abbr --add ga git add
    abbr --add gaa git add --all
    abbr --add gb git branch
    abbr --add gba git branch --all
    abbr --add gbd git branch --delete
    abbr --add gbD git brance --delete --force
    abbr --add gco git checkout
    abbr --add gcb git checkout -b
    abbr --add gcB git checkout -B
    abbr --add gcm git checkout $(git_main_brance)
    abbr --add gcmsg git commit --message
    abbr --add glg git log --stat
    abbr --add gl git pull
    abbr --add gp git push
    abbr --add gpd git push --dry-run
    abbr --add gpsup git push --set-upstream origin $(git_current_branch)
    abbr --add gsh git show
    abbr --add gst git status
    abbr --add gss git status --short
    abbr --add gsw git switch
    abbr --add gswc git switch -c
    abbr --add gswm git switch $(git_main_brance)

    eval (/opt/homebrew/bin/brew shellenv)

    fnm env --use-on-cd | source
    pyenv init - | source
    starship init fish | source
    zoxide init fish | source

    # pnpm
    set -gx PNPM_HOME /Users/jhy/Library/pnpm
    if not string match -q -- $PNPM_HOME $PATH
        set -gx PATH "$PNPM_HOME" $PATH
    end
    # pnpm end
end
