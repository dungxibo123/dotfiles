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
source $ZSH/oh-my-zsh.sh
source ~/.config/lf/lfcd.sh
source ~/.aliases/alias.sh
source ~/.scripts/extract.sh
source ~/.scripts/push_condition_test.sh
source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.tokens/token.sh
source ~/.envs/lficon.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



if [ -f "/opt/miniconda3/etc/profile.d/conda.sh"  ]; then
# . "/opt/miniconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
else
# export PATH="/opt/miniconda3/bin:$PATH"  # commented out by conda initialize
fi

# LF File Manager



#(wal -r &)
(cat ~/.cache/wal/sequences)

eval "$(rbenv init - zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

