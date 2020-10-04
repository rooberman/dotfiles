# Start configuration added by Zim install {{{
#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
# }}} End configuration added by Zim install

# Set default user to hide user@hostname in prompt
export DEFAULT_USER=`id -un`

export FZF_DEFAULT_OPTS='--reverse'