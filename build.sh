function single() {
cat << EOF
 <wallpaper deleted="false">
    <name>Wallpaper</name>
    <filename>/usr/share/backgrounds/extra/$1</filename>
    <options>zoom</options>
    <shade_type>solid</shade_type>
    <pcolor>#ffffff</pcolor>
    <scolor>#000000</scolor>
  </wallpaper>
EOF >> /usr/share/gnome-background-properties/extra-backgrounds.xml
}

cat << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE wallpapers SYSTEM "gnome-wp-list.dtd">
<wallpapers>
EOF > /usr/share/gnome-background-properties/extra-backgrounds.xml

for image in /usr/share/backgrounds/extra/*; do
        single $image
done

echo "</wallpapers>" >> /usr/share/gnome-background-properties/extra-backgrounds.xml

