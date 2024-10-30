#!/bin/bash

# python virtual environments
avenv() {
    local activate_scripts=(
        '.venv/bin/activate'
        '.venv/Scripts/activate'
        'venv/bin/activate'
        'venv/Scripts/activate'
    )
    echo "[avenv]: searching for environment..."
    for activate in "${activate_scripts[@]}"; do
        if [[ -f "$activate" ]]; then
            . "$activate" \
                && echo "- (x): activated '${activate}'" \
                && return 0
        else
            echo "- ( ): not found '${activate}'"
        fi
    done
    echo "- WARN: virtual environment not found! '$PWD'"
    return 0
}

cvenv() {
    echo "[cvenv]: creating environment..."
    "${2-python}" -m venv "${1-.venv}"
}

cvenv3() {
    cvenv "$1" "python3"
}
