if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi

function get_git_status() {
	let GITCOLOR="white"	
	if [ ! -d ".git" ] || [[ $(git diff --stat) -eq '' ]]; then
  	GITCOLOR="green"
	else
  	GITCOLOR="red"
	fi
	echo $GITCOLOR

} 

function get_conda_envs_name() {
	if [[ $CONDA_DEFAULT_ENV == "" ]]; then
		echo ""
	else
		echo "  $CONDA_DEFAULT_ENV "
	fi
}

PROMPT=' %{$fg[yellow]%}λ %{$fg[yellow]%}%c
  %{$fg[$get_git_status]%}➤   %{$reset_color%}'
RPROMPT='%{$bg[white]%}%{$fg[black]%}%B$(git_prompt_info)%b%{$BG[128]%}%{$fg[white]%}$(get_conda_envs_name)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="  "
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See https://geoff.greer.fm/lscolors/
# export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
# export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

