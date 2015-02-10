# program to install dvp layout files

if [ `id -u` -ne 0 ]; then
  echo "This needs to be run as root."
  exit 1
else
  cp dvp /usr/share/X11/xkb/symbols && cp dvp.map.gz /usr/share/keymaps/i386
  if [ $? -ne 0 ]; then
    echo "Installation failed."
    exit 1
  else
    echo -n "Installation complete. "
    echo "You may still need to enable the layout, eg via keymaps or setkxbmap."
  fi
fi
