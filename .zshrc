# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dungvo"
#ZSH_THEME_RANDOM_CANDIDATES=(
#      "robbyrussell"
#    "agnoster"
#)

plugins=(git zsh-autosuggestions)
source ~/.envs/envs_var.sh
#source $ZSH/oh-my-zsh.sh
source ~/.config/lf/lfcd.sh
source ~/.aliases/alias.sh
source ~/.scripts/extract.sh
source ~/.scripts/push_condition_test.sh
#source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
#source ~/.tokens/token.sh
source ~/.envs/lficon.sh
source ~/.env


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh




# LF File Manager



#(wal -r &)
#(cat ~/.cache/wal/sequences)

#eval "$(rbenv init - zsh)"

alias  ls='ls --color'

eval "$(starship init zsh)"





# Added by Windsurf
export PATH="/Users/dungvo/.codeium/windsurf/bin:$PATH"


if [ -f "/Users/dungvo/miniconda3/etc/profile.d/conda.sh"  ]; then
. "/Users/dungvo/miniconda3/etc/profile.d/conda.sh"
else
export PATH="/Users/dungvo/miniconda3/bin:$PATH"
fi


#!/bin/sh
# rustup shell setup
# affix colons on either side of $PATH to simplify matching
case ":${PATH}:" in
    *:"$HOME/.cargo/bin":*)
        ;;
    *)
        # Prepending path in case a system-installed rustc needs to be overridden
        export PATH="$HOME/.cargo/bin:$PATH"
        ;;
esac

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
