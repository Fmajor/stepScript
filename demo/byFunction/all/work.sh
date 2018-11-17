#!/bin/bash
echo 'work start'
## always run these struct and command |r|
	## struct just for show |r|
	echo "i'm always here"

## test skip |s|
	echo "this block will be skipped"
	## including it's sub struct
		echo "I'm also skipped"

## always run these struct and command, but not echo |rq|
	## struct just for show, but not echo |rq|
	echo "i'm always here, but you can not see the origin command"

# where does this comment go?
# emmmm...

## step0
	# start of step0
	echo 'step0 start'
	## step0.1
		echo 'step0.1 start'
		## step 0.1.1
			echo "0.1.1 good"



			echo "0.1.1 good2"




		# where dose this comment go?
		## step 0.1.2, a empty group, just for show
		echo 'step0.1 end'
	# other work between step0.1 and step 0.2
	# multi comment for one command
	echo 'other work between step0.1 and step 0.2'
	## step0.2
		## step 0.2.1
			# normal comment
			#x this comment will not echo
			echo "0.2.1 good" # comment in line
		## step 0.2.2
			echo "0.2.2 good"
	# end of step0
	echo 'step0 end'
# other work in the root struct
echo 'work between steps'
## step1
	echo 'step1 start'
	## step1.1
		echo 'step1.1 bad, rerun here and bad again'
	## step1.2
		# test cd...
		cd ..
		ls
		cd -
		# test 2 level change
		echo 'step1.2'
## step2
	# multiline example
	#mls
	cat <<-EOF > test.swp
	good for you
	EOF
	#mle
## step3 multiline second example
	# multiline example
	#mls
	cat <<-EOF > test.swp
	good for me
	EOF
	#mle
## test atomic |a|
	echo "rerun this atomic block"
	echo 'break down here' && ls file_that_not_exists
echo 'work end'

