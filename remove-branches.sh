cd $GOPATH/src/github.com/codelingo/$1
git branch | while read branchName; do
    if [[ $(git rev-list ^upstream/master $branchName) ]]; then
        git branch -D $branchName
    fi
done