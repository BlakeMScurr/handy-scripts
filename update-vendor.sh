# !/bin/bash

# Currently updates the platform dependency of lingo
# TODO: make it take args
parent="lingo"
vendored="platform"
if [ -n "$1" ]; then
    parent=$1
fi
if [ -n "$2" ]; then
    vendored=$2
fi

echo "replacing vendored" $vendored "of" $parent

rm -rf /home/matt/go/src/github.com/codelingo/$parent/vendor/github.com/codelingo/$vendored
rsync -av /home/matt/go/src/github.com/codelingo/$vendored /home/matt/go/src/github.com/codelingo/$parent/vendor/github.com/codelingo --exclude .git --exclude bin --exclude vendor --exclude gogs