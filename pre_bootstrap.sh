#!/bin/sh

# Create directory if it doesn't exist
mkdir -p ~/.local/bin

# Download yadm
curl -sfLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm

# Give execute permissions to yadm
chmod a+x ~/.local/bin/yadm



sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions$ZSH/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH/custom/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/Pilaton/OhMyZsh-full-autoupdate.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ohmyzsh-full-autoupdate
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install



# Clone dotfiles repository
~/.local/bin/yadm clone --bootstrap -f https://github.com/ruslanlap/yadmdotfiles.git

# Clean up by removing yadm
rm -rf ~/.local/bin/yadm

echo "Dotfiles setup completed!"
