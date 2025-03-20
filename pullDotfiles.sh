SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
USERCONFIG_DIR=${SCRIPT_DIR}/userconfig
USERCONFIG_FILES=(~/.config/sway ~/.config/kanshi ~/.config/rofi ~/.config/waybar ~/.config/hypr)
XDG_DIR=${SCRIPT_DIR}/etcxdg
XDG_FILES=(/etc/xdg/swaync /etc/xdg/waybar)
USER_DIR=${SCRIPT_DIR}/user
USER_FILES=(~/.bashrc ~/.vimrc)
for i in "${!USERCONFIG_FILES[@]}"
do
    rsync -ah --progress ${USERCONFIG_FILES[i]} ${USERCONFIG_DIR}
done

for i in "${!XDG_FILES[@]}"
do
    rsync -ah --progress ${XDG_FILES[i]} ${XDG_DIR}
done

for i in "${!USER_FILES[@]}"
do
    rsync -ah --progress ${USER_FILES[i]} ${USER_DIR}
done
