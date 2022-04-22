
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
echo ""
echo "====================================================================="
echo "Finished main setup script."
echo "====================================================================="
