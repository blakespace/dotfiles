
export HISTFILE="$HOME/.bash_history"
export HISTSIZE=10000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups:erasedups
# append to the history file instead of overwriting it when shell closed
shopt -s histappend


# colors
red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
NC='\e[0m'

# https://ss64.com/bash/syntax-prompt.html
# https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html
unset PROMPT_COMMAND
export PS1="🦈  \W \$ "

source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

export WORKON_HOME=~/Envs
export CODE=~/code
export FALKOR=$CODE/falkor
export PYTHONPATH=$PYTHONPATH:$FALKOR
export WORKON_FALKOR="workon falkor"
alias cdfalkor="cd $FALKOR"
alias wf=$WORKON_FALKOR
alias caputil="$WORKON_FALKOR; $FALKOR/scripts/backend/capture_util2.py -- index.json"                               
alias caputildev="$WORKON_FALKOR; $FALKOR/scripts/backend/capture_util2.py -- index.json --dev --base-dir ~/data/tattoo-dev"                               
alias tattoo_create_index="$WORKON_FALKOR; $FALKOR/scripts/backend/capture_util2.py -- --print-vionav --print-fusion"
alias lookup="$WORKON_FALKOR && ${CODE}/falkor/scripts/tattoo/lookup.py"
alias toopy="python $FALKOR/scripts/gui/toopy.py"
alias update_auth='if [ -z ${VIRTUAL_ENV} ]; then COMMAND='deactivate';else V_ENV=`basename $VIRTUAL_ENV`; COMMAND="workon $V_ENV"; fi && workon falkor && python $FALKOR/scripts/backend/acquire_auth_token.py && $COMMAND'
alias update_auth_dev='if [ -z ${VIRTUAL_ENV} ]; then COMMAND='deactivate';else V_ENV=`basename $VIRTUAL_ENV`; COMMAND="workon $V_ENV"; fi && workon falkor && python $FALKOR/scripts/backend/acquire_auth_token.py --dev && $COMMAND'

alias ds_cli="workon falkor; python $FALKOR/scripts/data_infra/ds_cli.py"
#export DISPLAY=:1
#if [ $(ps -ef | grep `whoami` | grep 'Xtightvnc :1' | wc -l) -lt 2 ]; then vncserver ;fi;


export AWS_PROFILE="dev"
eval "$(aws configure export-credentials --profile $AWS_PROFILE --format env)"
export DATABRICKS_CONFIG_FILE=~/.databrickscfg
