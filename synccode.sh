

checkoutMaster() {
    git submodule foreach '
        git checkout master
        if [[ -n $(git diff --stat)  ]]
        then
          echo "find modified file, stash ----"
          git stash
          git pull --rebase
          git stash pop
        else
          git pull --rebase
        fi
    '
}

syncCode() {
    if [[ -n $(git diff --stat)  ]]
    then
      echo "find modified file, stash ----"
      git stash
      git pull --rebase
      git stash pop
    else
      git pull --rebase
    fi

    git submodule update --init
    # git submodule update --init --rebase
}

syncCode
checkoutMaster
