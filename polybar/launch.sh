#!/bin/zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar -q main -c ~/.config/polybar/config.ini &
#polybar -q apps -c ~/.config/polybar/config.ini &

#setsid ~/.config/polybar/scripts/hideIt.sh --wait --hover -d bottom --name '^polybar-apps_eDP$' > /dev/null 2>&1 &
echo "Polybar launched..."
