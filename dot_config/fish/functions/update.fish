function update
    ~
    and echo "[update] Homebrew"
    and brew update
    and brew upgrade

    and echo "[update] tldr"
    and command tldr -u

    and echo "[download] manuals"
    and download_manuals

    and echo "[download] thumbfast"
    and download_thumbfast

    and echo "[download] playlistmanager"
    and download_playlistmanager

    and echo "[download] memo"
    and download_memo

    and echo "[download] autoload"
    and download_autoload

    and echo "[update] Squirrel"
    ~/plum/rime-install iDvel/rime-ice:others/recipes/full
    and /Library/Input\ Methods/Squirrel.app/Contents/MacOS/Squirrel --reload
end

function download_thumbfast
    cd ~/.config/mpv/scripts
    set -l urls https://raw.githubusercontent.com/po5/thumbfast/refs/heads/vanilla-osc/player/lua/osc.lua https://raw.githubusercontent.com/po5/thumbfast/refs/heads/master/thumbfast.lua
    set -l etagfile osc.txt thumbfast.txt
    for i in (seq (count $urls))
        curl --remote-name $urls[$i] --etag-compare $etagfile[$i] --etag-save $etagfile[$i]
    end
    cd
end

function download_playlistmanager
    cd ~/.config/mpv/scripts
    curl --remote-name https://raw.githubusercontent.com/jonniek/mpv-playlistmanager/refs/heads/master/playlistmanager.lua --etag-compare playlistmanager.txt --etag-save playlistmanager.txt
    cd
end

function download_memo
    cd ~/.config/mpv/scripts
    curl --remote-name https://raw.githubusercontent.com/po5/memo/refs/heads/master/memo.lua --etag-compare memo.txt --etag-save memo.txt
    cd
end

function download_autoload
    cd ~/.config/mpv/scripts
    curl --remote-name https://raw.githubusercontent.com/mpv-player/mpv/refs/heads/master/TOOLS/lua/autoload.lua --etag-compare autoload.txt --etag-save autoload.txt
    cd
end

function download_manuals
    cd ~/Database/Manuals
    set -l urls https://manual.calibre-ebook.com/calibre.pdf https://pandoc.org/MANUAL.pdf https://www.wireshark.org/download/docs/Wireshark%20User%27s%20Guide.pdf
    set -l filenames calibre.pdf Pandoc-MANUAL.pdf Wireshark_User_Guide.pdf
    set -l etagfile calibre-etag.txt pandoc-etag.txt wireshark-etag.txt
    for i in (seq (count $urls))
        curl $urls[$i] --output $filenames[$i] --etag-compare $etagfile[$i] --etag-save $etagfile[$i]
    end
    cd
end
