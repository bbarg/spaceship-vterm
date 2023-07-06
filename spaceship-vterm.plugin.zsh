#
# vterm
#
# vterm is a modern emacs terminal emulator mode that uses the libvterm library
# Link: https://github.com/akermu/emacs-libvterm

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_VTERM_SHOW="${SPACESHIP_VTERM_SHOW=true}"
SPACESHIP_VTERM_ASYNC="${SPACESHIP_VTERM_ASYNC=true}"
SPACESHIP_VTERM_PREFIX="${SPACESHIP_VTERM_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_VTERM_SUFFIX="${SPACESHIP_VTERM_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# These are lifted verbatim from https://github.com/akermu/emacs-libvterm#directory-tracking-and-prompt-tracking
_vterm_printf(){
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}
_vterm_print_directory(){
    _vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}

# Execute 
# Otherwise this section won't be loaded.
spaceship_vterm() {
  # If SPACESHIP_VTERM_SHOW is false, don't show vterm section
  [[ $SPACESHIP_VTERM_SHOW == false ]] && return

  # There's no need to determine a context, since we want to do this in every
  # directory.

  # TODO: eventually we may want to check the version of the emacs-libvterm package
  # installed in emacs, but that's not necessary right now.

  # Display vterm section
  # spaceship::section utility composes sections. Flags are optional
  # TODO: this only works for zsh right now
  spaceship::section::v4 \
    --color "$SPACESHIP_VTERM_COLOR" \
    --prefix "$SPACESHIP_VTERM_PREFIX" \
    --suffix "$SPACESHIP_VTERM_SUFFIX" \
    "%{$(_vterm_print_directory)%}"
}
