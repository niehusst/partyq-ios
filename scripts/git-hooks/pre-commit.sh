if [ -z "$gitroot" ]
then
    echo "Shared git hooks must be run via run-git-hook"
fi

# run commands here
if ! [ -x "$(command -v mint)" ]
    echo "Please run setup.sh or 'brew install mint'"
else
    echo "(git precommit) running swiftlint..."
    pushd .
    cd "$gitroot"
    mint run swiftlint autocorrect --quiet
    echo "(git precommit) running swiftformat..."
    mint run swiftformat . --quiet
    popd
    echo "(git precommit) Done. Updated files HAVE NOT been added to this commit."
fi

exit 0
