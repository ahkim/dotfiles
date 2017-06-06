# Path
# -----

export PATH=/usr/local/lib:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin:$PATH

export PATH=~/.fzf/bin:/usr/local/texlive/2016basic/bin:~/.node/bin:/opt/X11/bin:$PATH

export PATH=/usr/local/opt/ruby@2.3/bin:/usr/local/mysql/bin:$PATH

# Variables
# -----

# Force all locale variables to standard
export LC_ALL=C

# Set terminal colors
export TERM=xterm-256color

# Determine operating system kernel
export OS=`uname -s`

# Personalized directories
export NOTE_DIR="~/Documents/Notational\ Data"
export CODE_DIR="~/Code"

# Modify fzf to use silver searcher
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS="--reverse --inline-info"
export FZF_COMPLETION_TRIGGER='\\'

# macos core foundation
export __CF_USER_TEXT_ENCODING="0x08000100:0x0"
