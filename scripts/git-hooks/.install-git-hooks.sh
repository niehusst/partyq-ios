if [ -z "$gitroot" ]
then
    echo "Shared git hooks must be run via run-git-hook"
    exit 1
fi

shared_hooks_root=$gitroot/scripts/git-hooks
user_hooks_root=$gitroot/.git/hooks

# magic to copy git hooks for shared file location to actual git hook location
for hook_name in $(ls $shared_hooks_root)
do
    user_hook_path=$user_hooks_root/${hook_name%.sh}

    if ! [ -f $user_hook_path ]
    then
        echo "#!/bin/sh" >> $user_hook_path
        chmod +x $user_hook_path
    fi

    if ! grep "run-git-hook" $user_hook_path 2>&1 /dev/null
    then
        echo "if [ -f $shared_hooks_root/.run-git-hook.sh ]; then . $shared_hooks_root/.run-git-hook.sh $hook_name; fi" >> $user_hook_path
    fi
done
