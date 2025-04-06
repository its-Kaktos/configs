#!/bin/bash

rename_if_all_choosen() {
    local dir="$1"
    local png_files=("$dir"/*.png)

    # Check if there are any .png files
    if [ ${#png_files[@]} -eq 0 ]; then
        return
    fi

    # Check if all .png files end with '__choosen__.png'
    for file in "${png_files[@]}"; do
        filename=$(basename "$file")
        if [[ ! "$filename" == *__chosen__.png ]]; then
            return
        fi
    done

    # If all match, rename them to a random string + ".png"
    for file in "${png_files[@]}"; do
        dirpath=$(dirname "$file")
        random_str=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 8)
        new_name="${random_str}.png"
        mv "$file" "${dirpath}/${new_name}"
    done
}

WALLPAPER_DIR="$HOME/backgrounds"

rename_if_all_choosen "$WALLPAPER_DIR"

wallpaper_path=$(find "$WALLPAPER_DIR" -type f -name '*.png' ! -name '*__chosen__.png' | shuf -n 1)

dir=$(dirname "$wallpaper_path")
random_str=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 8)
new_filename="${random_str}__chosen__.png"
new_path="${dir}/${new_filename}"

mv "$wallpaper_path" "$new_path"

feh --bg-fill "$new_path"
