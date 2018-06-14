# !/bin/bash

# Currently updates the platform dependency of lingo
# TODO: make it take args

rm -rf /home/matt/go/src/github.com/codelingo/lingo/vendor/github.com/codelingo/platform/
rsync -av /home/matt/go/src/github.com/codelingo/platform /home/matt/go/src/github.com/codelingo/lingo/vendor/github.com/codelingo --exclude .git --exclude bin --exclude vendor --exclude gogs