# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PROMPT_COMMAND='{ echo "date=$(date),from=${SSH_CLIENT},login=${SUDO_USER},user=${USER},pwd=$(pwd),exec=$(history 1|cut -c 8-)"; } | logger -t cmd_log -p user.notice'
