# Adding eternal history http://stackoverflow.com/questions/9457233/unlimited-bash-history
# commenting out default settings with sed
BASHRC_FILE=~/.bashrc
sed -i '/^HISTSIZE/s/^/#/' $BASHRC_FILE
sed -i '/^HISTFILESIZE/s/^/#/' $BASHRC_FILE

# adding new settings
echo '
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"' >> $BASHRC_FILE

# sshfs reconnect
awk -F '[ =]' '$1 == "alias" {print; print "funcsave", $2}' ~/.bashrc_aliases | source -

# ...
