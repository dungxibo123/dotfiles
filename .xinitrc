xrandr --output eDP-1 --mode 1920x1080

xset r rate 200 20
xrandr --auto

exec $(get_session "$1")
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus




exec i3
mpd &


