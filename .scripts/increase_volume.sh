
SINK=$(pactl list sinks short | grep RUNNING | awk '{print $2}')
if [[ -z $SINK ]]; then
  echo "Variable SINK is empty. Set default"
  SINK="@DEFAULT_SINK@"
else
  echo "do nothing"
fi
echo $SINK
pactl set-sink-volume $SINK +2%
