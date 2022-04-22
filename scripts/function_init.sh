#!/usr/bin/env bash
echo "Defining functions..."

init_source_dir() {
  echo "Initializing source_dir..."
  source=${BASH_SOURCE[0]}
  while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    source_dir=$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )
    source=$(readlink "$source")
    [[ $source != /* ]] && source=$source_dir/$source # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
  done
  source_dir=$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )
  echo "Initializing source_dir: ${source_dir}"
  echo "-------------------------------------------------------------------"
  echo ""
}

init_source_dir && echo "source_dir: ${source_dir}" && source $source_dir/env.sh

init_colors() {

  # Use colors, but only if connected to a terminal, and that terminal
  # supports them.
  if hash tput >/dev/null 2>&1; then
    local ncolors=$(tput colors 2>/dev/null || tput Co 2>/dev/null || echo -1)
  fi

  if [[ -t 1 && -n $ncolors && $ncolors -ge 8 ]]; then
    local RED=$(tput setaf 1 2>/dev/null || tput AF 1 2>/dev/null)
    local GREEN=$(tput setaf 2 2>/dev/null || tput AF 2 2>/dev/null)
    local YELLOW=$(tput setaf 3 2>/dev/null || tput AF 3 2>/dev/null)
    local BLUE=$(tput setaf 4 2>/dev/null || tput AF 4 2>/dev/null)
    local BOLD=$(tput bold 2>/dev/null || tput md 2>/dev/null)
    local NORMAL=$(tput sgr0 2>/dev/null || tput me 2>/dev/null)
  else
    local RED=""
    local GREEN=""
    local YELLOW=""
    local BLUE=""
    local BOLD=""
    local NORMAL=""
  fi
}

print_oh_my_bash_banner() {
  # MOTD message :)
  printf '%s' "$GREEN"
  printf '%s\n' \
    '         __                          __               __  ' \
    '  ____  / /_     ____ ___  __  __   / /_  ____ ______/ /_ ' \
    ' / __ \/ __ \   / __ `__ \/ / / /  / __ \/ __ `/ ___/ __ \' \
    '/ /_/ / / / /  / / / / / / /_/ /  / /_/ / /_/ (__  ) / / /' \
    '\____/_/ /_/  /_/ /_/ /_/\__, /  /_.___/\__,_/____/_/ /_/ ' \
    '                        /____/                            .... is now installed!' \
    "Please look over the ~/.bashrc file to select plugins, themes, and options"
  printf "${BLUE}${BOLD}%s${NORMAL}\n" "To keep up on the latest news and updates, follow us on GitHub: https://github.com/ohmybash/oh-my-bash"
}

install_oh_my_bash() {
  echo "Installing Oh My Bash!..."
  git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
  cp ~/.bashrc ~/.bashrc.orig.before_oh_my_bash
  cp ~/.oh-my-bash/templates/bashrc.osh-template ~/.bashrc
  init_colors
  print_oh_my_bash_banner
  echo "Finished installing Oh My Bash!"
  echo "-------------------------------------------------------------------"
  echo ""
}

customize_oh_my_bash() {
  echo 'Customizing Oh My Bash!...'
  local custom_path="$HOME/.oh-my-bash/custom/config.sh"
  echo '#!/usr/bin/env bash' > "$custom_path"
  echo '' >> "$custom_path"
  echo 'OSH_THEME="cupcake"' >> "$custom_path"
  printf "\
  completions=(\n\
    git\n\
    composer\n\
    ssh\n\
  )" >> "$custom_path"
  printf "\
  aliases=(\n\
    chmod\n\
    general\n\
    ls\n\
    misc\n\
  )" >> "$custom_path"
  printf "\
  plugins=(\n\
    git\n\
    bashmarks\n\
  )" >> "$custom_path"
  echo '' >> "$custom_path"
  echo "Finished Customizing Oh My Bash!"
  echo "-------------------------------------------------------------------"
  echo "$(cat $custom_path)"
  echo "-------------------------------------------------------------------"
  echo ""
}

source_all_modules() {
  echo "Sourcing all modules in $HOME/.bashrc.d..."
  echo "" >> "${config_path}"
  echo "for i in \$(ls -A \$HOME/.bashrc.d/); do source \$HOME/.bashrc.d/\$i; done" >> "${config_path}"
  echo "Finished sourcing all modules in $HOME/.bashrc.d:"
  echo ""
}

add_pieces_from_original_config() {
  echo "Adding pieces from the original config..."
  echo "" >> "${config_path}"
  echo "source \"\$HOME/.cargo/env\"" >> "${config_path}"
  echo "Finished adding pieces from the original config:"
  echo ""
}

install_dependencies() {
  echo "Installing dependencies..."
  brew update

  # Add `brew install` statements here.
  brew install httpie
  echo "Finished installing dependencies."
  echo "-------------------------------------------------------------------"
  echo ""
}

echo "Finished defining functions."
echo "-------------------------------------------------------------------"
echo ""
