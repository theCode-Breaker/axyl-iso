pacman -S --noconfirm --needed archlinux-keyring
mkarchiso -v -w ./work -o ./out ./archiso/
echo "ISO Built in ./out folder!"
