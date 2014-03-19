xrdb ~/.Xresources 
xsetroot -cursor_name left_ptr &
hsetroot -tile /home/sunn/Pictures/tinytile2.gif &

if [[ -z `xrandr | grep " connected" | grep 'HDMI'` ]]; then
	echo "No monitor found"
else
	xrandr --output HDMI1 --auto --right-of eDP1
fi


unclutter -grab -noevents -root &

sxhkd &

exec bspwm
