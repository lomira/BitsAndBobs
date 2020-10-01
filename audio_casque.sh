#!/bin/zsh
pacmd set-default-sink alsa_output.usb-GN_Netcom_A_S_Jabra_EVOLVE_LINK_MS_0000AD3FAE9E07-00.analog-stereo

pacmd list-sink-inputs|awk '/ +index: /{print $2}' | while read -r line; do pacmd move-sink-input "$line" alsa_output.usb-GN_Netcom_A_S_Jabra_EVOLVE_LINK_MS_0000AD3FAE9E07-00.analog-stereo; done
