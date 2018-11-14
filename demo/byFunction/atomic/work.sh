#!/bin/bash
echo 'work start'
echo "a successful work, will be skipped in the next run"
## test atomic |a|
	echo "this is a atomic block"
	echo "will rerun from the beginning if any command under this block failed"
	echo 'break down here' && ls file_that_not_exists
echo 'work end'

