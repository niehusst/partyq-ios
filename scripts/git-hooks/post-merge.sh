if [ -z "$gitroot" ]
then
    echo "Shared git hooks must be run via run-git-hook"
    exit 1
fi

. $gitroot/scripts/git-hooks/.install-git-hooks.sh
