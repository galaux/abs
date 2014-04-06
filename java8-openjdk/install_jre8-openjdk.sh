post_install() {
  xdg-icon-resource forceupdate --theme hicolor 2> /dev/null
  echo "when you use a non-reparenting window manager"
  echo "set _JAVA_AWT_WM_NONREPARENTING=1 in"
  echo "/etc/profile.d/jre.sh"

  if [ ! -f /etc/ssl/certs/java/cacerts ]; then
    /usr/bin/init-jks-keystore
  fi
}

post_upgrade() {
  xdg-icon-resource forceupdate --theme hicolor 2> /dev/null

  if [ ! -f /etc/ssl/certs/java/cacerts ]; then
    /usr/bin/init-jks-keystore
  fi
}


post_remove() {
  xdg-icon-resource forceupdate --theme hicolor 2> /dev/null
}
