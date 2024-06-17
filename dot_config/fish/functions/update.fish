function update
  ~
  and echo "[update] Homebrew"
  and brew update
  and brew upgrade
  and fish_update_completions

  and echo "[update] tldr"
  and command tldr -u

  and echo "[update] Squirrel"
  ~/plum/rime-install iDvel/rime-ice:others/recipes/all_dicts
  and /Library/Input\ Methods/Squirrel.app/Contents/MacOS/Squirrel --reload
end
