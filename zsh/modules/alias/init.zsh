## Map Java11 to Java
JAVA_SYM=$HOME/.local/bin/java
if [[ (( $+commands[java11] )) && (( ! -f "$JAVA_SYM" )) ]] ; then
  ln -s /usr/bin/java11 $JAVA_SYM
fi