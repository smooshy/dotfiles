source ~/.git-aliases
source ~/.git-prompt.sh
source ~/.git-completion.sh
source ~/.profile
source ~/.bin/tmuxinator.bash

export EDITOR=/usr/bin/vim
export PATH=$HOME/bin:/usr/local/bin:$PATH

# SSH Agent stuff
test=`/bin/ps -ef | /usr/bin/grep ssh-agent | /usr/bin/grep -v grep  | /usr/bin/awk '{print $2}' | xargs`

if [ "$test" = "" ]; then
  # there is no agent running
  if [ -e "$HOME/agent.sh" ]; then
     # remove the old file
     /bin/rm -f $HOME/agent.sh
  fi;
  # start a new agent
  /usr/bin/ssh-agent | /usr/bin/grep -v echo >&$HOME/agent.sh
fi;

test -e $HOME/agent.sh && source $HOME/agent.sh

alias kagent="kill -9 $SSH_AGENT_PID"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
