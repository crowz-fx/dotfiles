# collection of utility functions at the disposal of all the bin/ scripts

send_notif() {
  notify-send -t 2000 "$@"
}

check_positional_arg() {
  if [ -z "$1" ]; then
    notif "Didn't supply [$2]"
    exit 1
  fi
}
