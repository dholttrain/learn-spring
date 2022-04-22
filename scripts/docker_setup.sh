
echo "====================================================================="
echo "Entering main setup script..."
echo "====================================================================="
echo ""
source scripts/function_init.sh
install_dependencies
install_oh_my_bash
customize_oh_my_bash
source_all_modules
add_pieces_from_original_config
source scripts/dph_aliases.sh
mv /home/gitpod/.gitconfig /home/gitpod/.gitconfig.orig
ln -s /workspace/learn-spring/scripts/_gitconfig /home/gitpod/.gitconfig
ln -s /workspace/learn-spring/scripts/_config/nvim /home/gitpod/.config/nvim
ln -s /workspace/learn-spring/scripts/_vimrc.common /home/gitpod/.vimrc.common
ln -s /workspace/learn-spring/scripts/_vimrc /home/gitpod/.vimrc
source ~/.bashrc
echo ""
echo "====================================================================="
echo "Finished main setup script."
echo "====================================================================="
