export HISTFILE="$HOME/.bash_history"
export HISTSIZE=10000
export HISTFILESIZE=100000
export HISTTIMEFORMAT="%F %T "
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE=*.vscode-server/extensions/ms-python*/debugpy/launcher*:ls:pwd
# append to the history file instead of overwriting it when shell closed
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r;"

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
export PS1="🦈  \W \$ "
alias emacs='emacs -nw'

source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

export WORKON_HOME=~/Envs
export CODE=~/code
export FALKOR=$CODE/falkor
export KLAANET=$CODE/klaanet
export PYTHONPATH=$PYTHONPATH:$FALKOR
export WORKON_FALKOR="workon falkor"
export WORKON_KLAANET="workon klaanet"
alias cdfalkor="cd $FALKOR"
alias cdklaanet="cd $KLAANET"
alias wf=$WORKON_FALKOR
alias wk=$WORKON_KLAANET
alias caputil="$WORKON_FALKOR; $FALKOR/scripts/backend/capture_util2.py -- index.json"                               
alias caputil-dev="$WORKON_FALKOR; $FALKOR/scripts/backend/capture_util2.py -- index.json --dev --base-dir ~/data/tattoo-dev"                               
alias tattoo_create_index="$WORKON_FALKOR; $FALKOR/scripts/backend/capture_util2.py -- --print-vionav --print-fusion"
alias lookup="$WORKON_FALKOR && ${CODE}/falkor/scripts/tattoo/lookup.py"
alias toopy="python $FALKOR/scripts/gui/toopy.py"
alias update_auth='if [ -z ${VIRTUAL_ENV} ]; then COMMAND='deactivate';else V_ENV=`basename $VIRTUAL_ENV`; COMMAND="workon $V_ENV"; fi && workon falkor && python $FALKOR/scripts/backend/acquire_auth_token.py && $COMMAND'
alias update_auth_dev='if [ -z ${VIRTUAL_ENV} ]; then COMMAND='deactivate';else V_ENV=`basename $VIRTUAL_ENV`; COMMAND="workon $V_ENV"; fi && workon falkor && python $FALKOR/scripts/backend/acquire_auth_token.py --dev && $COMMAND'
alias aws_refresh='eval $(aws configure export-credentials --profile $AWS_PROFILE --format env)'
alias aws_login='aws sso login --no-browser --use-device-code; aws_refresh;'
alias ds_cli="workon falkor; python $FALKOR/scripts/data_infra/ds_cli.py"
#export DISPLAY=:1
#if [ $(ps -ef | grep `whoami` | grep 'Xtightvnc :1' | wc -l) -lt 2 ]; then vncserver ;fi;

export agisoft_LICENSE=/home/blake/metashape-pro/ppu-license/openspace-primary.lic
export AWS_PROFILE="default"
export AWS_DEFAULT_REGION='us-west-2'
alias install_vnc='sudo apt install tigervnc-standalone-server -y; vncserver'

alias kub-dev-396="kubectx arn:aws:eks:us-west-2:686640301001:cluster/openspace-dev-ephemeral; kubens ai-396"

alias start-label-studio='workon label-studio; export LABEL_STUDIO_LOCAL_FILES_DOCUMENT_ROOT=/home/blake;  export LABEL_STUDIO_LOCAL_FILES_SERVING_ENABLED=true;label-studio'
# eval "$(aws configure export-credentials --profile $AWS_PROFILE --format env)"
export DATABRICKS_CONFIG_FILE=~/.databrickscfg
export DISPLAY=:1
alias start-display='Xvfb :1 -screen 0 1280x1024x24 &'
export PATH=$PATH:/usr/local/node-v22.7.0-linux-$(if [[ `uname -p` == 'aarch64' ]]; then printf 'arm64'; else printf 'x64'; fi)/bin
