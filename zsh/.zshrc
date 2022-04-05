# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
zstyle ':zim:zmodule' use 'degit'

# --------------------
# Module configuration
# --------------------

#
# completion
#

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  # Download zimfw script if missing.
  command mkdir -p ${ZIM_HOME}
  if (( ${+commands[curl]} )); then
    command curl -fsSL -o ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    command wget -nv -O ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install


if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh;
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias l="exa -lah"
alias tree="exa -T"
alias n=~/bin/nvim.appimage
alias bat="batcat"
alias a-studio="~/bin/mobile/android-studio/bin/studio.sh"
alias calcurse-up="aws s3 sync ~/.local/share/calcurse s3://calcurseve/data"
alias calcurse-down="aws s3 sync s3://calcurseve/data ~/.local/share/calcurse"
# neofetch;

GREEN='\033[0;32m'
NC='\033[0m'
echo -e "${GREEN}
                                                                                                    
                                     \`/:                                                            
                                   \`:sd.      \`\`--::---\`                                            
                                  \`:/s/   .::ohsysssys:\`                                            
                             \`..\`\`:/+s\`\`.o+s+/++ooys:\`    \`                                         
                         \`-ohdmmdys+..\`-/:.--:/+oy/.\`\`\`--o+.                                        
             \`.-.//-+oss-/mNyysyddNmo/-...-//:/+o:\`\`\`.:///-----.\`\`                                  
          .////yodm/mmhs-/dsyosss+dmMydo.---+:...-::+ooyhydhdhyyyyo+-                               
          /o+oshhhdhdmmddyy:/+ms/o+NNNyM+s/..--//+/++://:/o+/+oshdy/-                               
      \`..shmohmmmmmmmhosyddds+m/-oommMyM/-oydmdddy//:::///+oossyo-\`\`\`                               
    \`:shNNNmhyoo+++ohNNmhssshdy++o/dmNdh--mmNdmmNNNh//:/+ooso/-.\`\`.-.\`                              
   :dNdyo+/-.syyyy/.../odNmhooodsoyodMMy:+Mmh:\`.+Nmmo./o/:-.-:::+:::::/.\`\`                          
  \`-o/oyys.\`-dMMNd+\`\`+y+-:ohNmy+sdo-hmNms-sdmh/\`.mmNh\`---:-..://sosso/-+so/.\`                       
   \`\`-hdmd/\`-hMMMMs\`-NMm.\`-o+/smNhy+oyNMNh//o/:+omNm+.osssddyo:./yhs/-://:+o+/\`                     
    \`.hMMNd::-dMMMm.:MMM+\`+MMNo-:sdNh++mmMMNmmNmNdNs\`.:-:oyyhhmmd+.-::+s++//..-\`                    
     \`-hyoMMo-+hdmms/dmNh\`:MMM/.yh-:/hh++ymmmmmMd+-\`-+++/+/+/+oshmms:/s/.\`\`::-\`                     
     \`:MM/MM//mhhdmmNNNmdysddh:/mm-\`\`-hM/.:+oy:-\`.-:/-:/:::o+oyoooyyhs-/y+..--s+.                   
    .d-mMomMy.os-sso++//++syhdmNNNNNNmh+:oo-/s\`\`\`-/+yyhyosydsymdNmddhhh:-oy/-::/oo.                 
    \`::sMmoMN//s-yyhdmmsNNohs//----/--:ohh+-d-\`\`\`\`\`\`..-:.:::.-:--..---.o+/+oo:/+oos+\`               
     oo+dy:o+/++///++:+sssodmoNNodmdNmdmNysh:\`\`\`\`\`-//:::..--\`.://+:.:+/oo+ooss-..-::.\`              
     \`-..---...\`\`\`\`\`..---/+/:/+ooyhhddmdhs/.\`\`\`\`:.\`-:++os+:-///::oyo-..:-.://o+\`\`.-/-\`              
          \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`......--.....\`\`\`\`\`\`/://-.-+yhdmo.-:/++/o++-/o--++//-:o:-//.             
                  \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`+-/-+s:.-oydNh::/+/+oo+y/oho::o/o+oyo/:+:\`           
                      \`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`\`.+o::+sy/--ohmd-\`/-.:+o/-::oys+ooy/-+ss++o:\`         
                      \`\`\`\`\`\`\`\`\`..\`\`\`\`\`\`\`:.\`...\`\`:hyo+s+oso::+hd-:++:-+o+:/.-/::oyh-/-.-/::\`         
                     \`\`..\`\`\`\`:--/\`..\`\`:.-/.-://-\`.+syhy/sosy+/yd..+so//oo/o.s:.:/-.+o/.-:\`          
                      \`+\`\`  \`/+.s\`:+-\`:o/:+-//+s-.:///+oyyhdhhydy\`+/+ssooyssos/./:+./y+--/.         
                      ./\`   \`.++s./s+\`\`-+o/+:/oos-+:oo/..////+oyd:-y:\`++syhN/oyo-s/o\`:sy+:+.        
                      \`\`     \`.+ss/y/\` \`.:oos+ssd:\`.::sso+oo\`\`+s::..h:o/s-/+/:+oo+hy--::yhos.       
                              \`.+d-yy\`   \`.ooss+sh\`   .:/so+:\`\`.osy\`-hs+m/o:.o.y:+sh+/+\`.yyhh\`      
                                ./osy\`     \`-/ossm-\`      \`-:\`\`  .:\` :N/o-do-o/+yd-.:o//\`/d:-\`      
                                 \`:+h\`        \`-/so\`                 \`.\`\`s/hs-y-yyy-:s-y-:+o/\`      
                                   \`.             .                      .\`\`-..\`.\`-. .\`.\`.\`..\`      
                                                                                                    

${NC}";

