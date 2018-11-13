# stepScript
A bash script parser to run bash script in colorful mode.

## functions
1. Code highlights: structure tree in green, comment in blue and input command in yellow
2. In step mode, print command and hit Enter to run it, line by line.
3. Record running state, will skip successful command in last runs.
4. Rerun the code from specific line number, label and command count.

## inspect
### the demo script file
[!raw script](./figs/raw_script.png)
### how stepScript understand the script file
The first tree coloum is "line number|label|command count"
* line number is the line number in the raw script file
* label is the struct label
* command count is the count of running command in the raw script file
```
"04|1      |  |## step0" means that the "step0" struct has
  has line number 04 in the raw file
  has label "1      "
  no command count

"             |  # start of step0" is a comment of code "echo 'step0 start'"

"06|1.1    |01|  echo 'step0 start'" means that the code "echo 'step0 start'"
  has line number 06 in the raw file
  has label "1.1    "
  it is the 01 command in the raw file
```
The script will record its state into ".stepScript.session".
We can control from where we rerun the code using linumber, label and command count.
### usage
say we have the raw script "work.sh"
```shell
$ stepScript work.sh # generate processed script as .work.sh.step.sh
$ bash .work.sh.step.sh -h
usage: .work.sh.step.sh [-hrlncCsSAL:N:C:]
  -h: show this help message
  -r: rerun from the beginning
  -l:       run after label, read from session file
  -L label: run after label
  -n     :  run after line, read from session file
  -N line:  run after line
  -c:       run after code count, read from session file
  -C count: run after code count
  -s: run by steps
  -S: show skipped structures
  -A: show skipped commands and comments
```
you can also generate a easy to use makefile to run this script with all kinds of configure (see examples)
### examples
#### init the project
```shell
$ stepScript work.sh # generate processed script as .work.sh.step.sh
or
$ stepScript --prepare work.sh # generate processed script and makefile
```
#### update the project after modify the raw script
```shell
$ make update # run "stepScript work.sh" to update .work.sh.step.sh
stepScript work.sh
```
#### first run (when you have no .stepScript.session)

#### rerun (rerun from last failed)
#### rerun from beginning (force rerun from beginning)
#### rerun and show skipped structures
#### rerun and show skipped commands
#### rerun and show all skipped things
#### rerun from last good line number, label or command count (read from session file)
#### rerun from given line number, label or command count
#### step mode (run command by command with ENTER)
#### clean (rm processed script and session file)
