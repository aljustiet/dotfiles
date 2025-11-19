wev() {
  stdbuf -oL wev | awk '/key:.*state: 1/{p=1;next} p&&/sym:/{print "sym:",$2; p=0}'
}
