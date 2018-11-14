#!/bin/bash
set -e
function wait () {
  read _temp
}
function info () {
  printf "\e[1;33m$1\e[00m"; wait
}
# run all the examples in the readme file
rm test.swp makefile .work.sh.step.sh .stepScript.session > /dev/null 2>&1 || echo "clean workspace"
info "$ stepScript --prepare work.sh"
stepScript --prepare work.sh

info "$ make update"
make update

info "$ make show"
make show

info "$ make"
make

info "$ make rerun"
make rerun

info "$ make"
make

info "$ make showStruct"
make showStruct

info "$ make showCommand"
make showCommand

info "$ make showAll"
make showAll

info "$ make count"
make count
info "$ make line"
make line
info "$ make label"
make label

info "$ make line=27"
make line=27
info "$ make label=2"
make label=2
info "$ make count=10"
make count=10

info "$ make rerun step"
make rerun step

info "$ make clean"
make clean
