#!/bin/zsh
pacmd set-default-sink alsa_output.pci-0000_09_00.1.hdmi-stereo-extra1
pacmd set-card-profile alsa_card.pci-0000_09_00.1 output:hdmi-stereo-extra1

pacmd list-sink-inputs|awk '/ +index: /{print $2}' | while read -r line; do pacmd move-sink-input "$line" alsa_output.pci-0000_09_00.1.hdmi-stereo-extra1; done
