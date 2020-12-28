
# Run command in sub folders

#!/bin/zsh


function runCommand() {
    for d in ./*/ ; do /bin/zsh -c "(cd "$d" && "$@")"; done
}


runCommand "ls -al"