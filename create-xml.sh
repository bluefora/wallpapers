#!/bin/bash

pack=$1

function single() {
cat << EOF
 <wallpaper deleted="false">
    <name>Wallpaper</name>
    <filename>$@</filename>
    <options>zoom</options>
    <shade_type>solid</shade_type>
    <pcolor>#ffffff</pcolor>
    <scolor>#000000</scolor>
  </wallpaper>
EOF
}

cat << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE wallpapers SYSTEM "gnome-wp-list.dtd">
<wallpapers>
EOF

cd ./rootcopy/usr/share/backgrounds/$pack/
for image in *.{jpg,png,jpeg}; do
	if [[ -f ${image} ]]; then
		image="`basename "$image"`"
    	single /usr/share/backgrounds/$pack/$image
    fi
done

echo "</wallpapers>"

