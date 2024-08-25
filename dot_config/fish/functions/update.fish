function update
  ~
  and echo "[update] Homebrew"
  and brew update
  and brew upgrade
  and fish_update_completions

  and echo "[update] tldr"
  and command tldr -u

  and echo "[download] manuals"
  and download_manuals

  and echo "[update] Squirrel"
  ~/plum/rime-install iDvel/rime-ice:others/recipes/all_dicts
  and /Library/Input\ Methods/Squirrel.app/Contents/MacOS/Squirrel --reload
end

function download_manuals
  cd ~/Database/Manuals
  set -l urls https://manual.calibre-ebook.com/calibre.pdf https://pandoc.org/MANUAL.pdf https://www.wireshark.org/download/docs/Wireshark%20User%27s%20Guide.pdf
  set -l filenames calibre.pdf Pandoc-MANUAL.pdf Wireshark_User_Guide.pdf
  for i in (seq (count $urls))
    curl $urls[$i] --output $filenames[$i]
  end
  cd ~
end
