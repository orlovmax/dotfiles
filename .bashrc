#SSH things
export SSHAGENT="/bin/ssh-agent"
SSHAGENTARGS="-s"

if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
	eval `$SSHAGENT $SSHAGENTARGS`
	trap "kill $SSH_AGENT_PID" 0
fi

# Add plugins:
# - Slugify
export PATH="~/bin:$PATH"

# Alias definitions
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

[ -r ~/.bash_aliases ] && \
    source ~/.bash_aliases
