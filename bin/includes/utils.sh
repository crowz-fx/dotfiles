# collection of utility functions at the disposal of all 
# the bin/ scripts
##################################################################
# sauce
. ~/.config/bin/includes/colours.sh

# raw functions below, used anywhere
send_notif() {
  notify-send -t 5000 "$@"
}

send_notif_critical() {
  notify-send -u critical -t 10000 "$@"
}

echod() {
  echo -e "${BLUE_COLOUR}D |${RESET_COLOUR} ${@}"
}

echoi() {
  echo -e "${GREEN_COLOUR}I |${RESET_COLOUR} ${@}"
}

echow() {
  echo -e "${YELLOW_COLOUR}W |${RESET_COLOUR} ${@}"
}

echoe(){
  echo -e "${RED_COLOUR}E | ${RESET_COLOUR} ${@}"
}

##################################################################
# script_ is used in scripts
script_notif() {
  send_notif "$script_title" "$@"
}

script_notif_critical() {
  send_notif_critical "$script_title" "$@"
}

script_check_positional_arg() {
  if [ -z "$1" ] || [[ "$1" == "" ]] || [[ "$1" == "null" ]]; then
    echo "Didn't supply [$2]"
    script_notif_critical "Didn't supply [$2]"
    exit 1
  fi
}
