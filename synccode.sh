
HEADER='\033[95m'
OKBLUE='\033[94m'
OKCYAN='\033[96m'
OKGREEN='\033[92m'
WARNING='\033[93m'
FAIL='\033[91m'
ENDC='\033[0m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

echo_with_color() {
    echo -e "$1""$2""$ENDC"
}

checkoutMaster() {
    git submodule foreach '
        git checkout master
        if [[ -n $(git diff --stat)  ]]
        then
          echo "find modified file, stash"
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
      echo_with_color $OKCYAN "find modified file, stash"
      git stash
      git pull --rebase
      git stash pop
    else
      git pull --rebase
    fi

    git submodule update --init
    # git submodule update --init --rebase
}

npmUpdate() {
    node_module="./App/node_modules/"
    if [ -d "$node_module" ]; then
        cd "App"
        echo_with_color $OKCYAN "npm update..."
        npm update --legacy-peer-deps
        cd ..
    else
        echo_with_color $OKBLUE "$node_module is Empty, Not calling npm update."
    fi
}

syncCode
checkoutMaster
npmUpdate
