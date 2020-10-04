# Terminate already running picom instances
killall -q picom

# Wait until the processes have been shut down
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done

picom -b --experimental-backends --conf ~/.config/picom/picom.conf
