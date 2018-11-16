#!/bin/bash
echo 'work start'
echo "a successful work, will be skipped in the next run"
## test skip |s|
	echo "this block will be skipped"
	## including it's sub struct
		echo "I'm also skipped"
echo 'work end'

