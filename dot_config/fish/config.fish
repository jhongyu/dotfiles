if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr --add fix sudo xattr -r -d com.apple.quarantine

    eval (/opt/homebrew/bin/brew shellenv)

    fnm env --use-on-cd | source
    pyenv init - | source
    starship init fish | source
    zoxide init fish | source

    # pnpm
    set -gx PNPM_HOME "/Users/jhy/Library/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set -gx PATH "$PNPM_HOME" $PATH
    end
    # pnpm end
end

