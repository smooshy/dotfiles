source ~/.git-completion.sh
source ~/.git-aliases
source ~/.ruby

export EDITOR=/usr/bin/vim
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

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

