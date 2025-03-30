#!/bin/bash


for pack in ./rootcopy/usr/share/backgrounds/*; do
	if [[ -d $pack ]]; then
		name=`basename $pack`
		bash ./create-xml.sh $name > ./rootcopy/usr/share/backgrounds/pack-$name.xml
	fi
done

# Temporary copy until we have a 'Pack Manager'
cp ./rootcopy/usr/share/backgrounds/pack-extra.xml ./rootcopy/usr/share/gnome-background-properties/extra-backgrounds.xml
