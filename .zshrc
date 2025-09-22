fastfetch --kitty .config/fastfetch/pngs/Hollow\ Knight\ 3.png
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=blue'
#export PATH="/home/choungion/.local/share/gem/ruby/3.4.0"

#eval "$(init zsh)"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git sudo pip docker)

source $ZSH/oh-my-zsh.sh
source ~/.bash_aliases
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=001'
ZSH_HIGHLIGHT_STYLES[command]='fg=006'

# zsh-autosuggestions mapping
# ALT+a to accept completion
bindkey '^[a' autosuggest-accept
# ALT+e to accept and execute
bindkey '^[e' autosuggest-execute
# End of lines added by compinstall

PATH="/home/choungion/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/choungion/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/choungion/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/choungion/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/choungion/perl5"; export PERL_MM_OPT;

alias dotfiles='/usr/bin/git --git-dir=$HOME/.git/.git --work-tree=$HOME'
alias update-dotfiles='dotfiles commit -am "Update" && dotfiles push -u origin main'

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/choungion/.config/.dart-cli-completion/zsh-config.zsh ]] && . /home/choungion/.config/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
