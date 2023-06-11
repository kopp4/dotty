#!/usr/bin/env bash

utf8() {
    if [ $# -eq 0 ]; then
        cat >&2 <<'EOF'
Usage: utf8 [-option] [file ...]
Options:
    -r, --remove    Remove archive after unpacking.
EOF
    fi

    file="$1"
    extension="${file##**.}"
    echo $extension file

    encoding=$(enca -L zh_CN "$file" -m)
    echo $encoding

    if [ "$encoding" = "UTF-8" ]; then
        echo "File is already UTF-8 encoded"
    #     exit 0
    fi

    iconv -f "$encoding" -t UTF-8 "$file" >"${file%.*}.utf8.$extension"

    mv "${file%.*}.utf8.$extension" "$file"

    echo "File is converted into UTF-8 encoding"

}
