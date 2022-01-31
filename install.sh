# ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
# ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
# ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
# ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
# ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
# ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝

# Dependencies

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"                                         # https://brew.sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"                                                    # https://ohmyz.sh
brew install neofetch                                                                                                                   # https://github.com/dylanaraps/neofetch
brew install exa                                                                                                                        # https://the.exa.website
brew install navi                                                                                                                       # https://github.com/denisidoro/navi
brew install gotop                                                                                                                      # https://github.com/xxxserxxx/gotop
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting   # https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions               # https://github.com/zsh-users/zsh-autosuggestions
brew install ranger                                                                                                                     # https://github.com/ranger/ranger
brew install iterm2                                                                                                                     # https://iterm2.com.

# Overwrites

ranger --copy-config=all
echo 'set preview_images true' >> ~/.config/ranger/rc.conf                                                                              # https://github.com/ranger/ranger/wiki/Image-Previews
echo 'set preview_images_method iterm2' >> ~/.config/ranger/rc.conf                                                                     # https://github.com/ranger/ranger/wiki/Image-Previews

git clone https://github.com/Platekun/dotfiles.git dotfiles
rm ~/.zshrc
mv dotfiles/.zshrc ~
source ~/.zshrc

mv dotfiles/.gotop-layout ~
mv dotfiles/.iterm2-layout.scpt ~                                                                                                       # https://dev.to/vivekkodira/automate-a-multi-window-experience-on-iterm2-2j9e

mv dotfiles/com.googlecode.iterm2.plist com.googlecode.iterm2.plist
