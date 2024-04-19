ui_print "************************************"
ui_print "          Smali Patcher Ex          "
ui_print "     sabpprook @ XDA Developers     "
ui_print "************************************"

set_perm_recursive $MODPATH 0 0 0755 0644
for f in $(find /data -iname '*services.jar*.*dex'); do
  rm -f $f
done
