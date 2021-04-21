
# skip submodule:ToolChains
# skip commit with ci-skip or skip-ci
# since last tag

HOST="$(uname -s)"

case "${HOST}" in
    "Darwin")
        DATE_ARG="-r "
        ;;
    "Linux")
        DATE_ARG="-d @"
        ;;
    *)
        echo "Error: Unsupported platform"
        exit 1;;
esac

TAG_DATE=0
# Get latest tag name
LatestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
if [ "$LatestTag" != "" ]; then
    echo $LatestTag
    TAG_DATE=`git log -1 --format=%ct $LatestTag`
fi

LastestTagDate=`date $DATE_ARG$TAG_DATE`

git submodule foreach "
if [ \"$path\" = \"ToolChains\" ]; then
    return 0
else
    if
        git log --since=\"$LastestTagDate\" --grep=\"ci-skip\" --grep=\"skip-ci\" --invert-grep -i | grep Author
    then
        echo \"find commit\"
        return 1
    fi
fi
"
