MODDIR=${0%/*}
{
  until [[ "$(getprop sys.boot_completed)" == "1" ]]; do
    sleep 1
  done
  ts=$(date -r /system/framework/framework.jar +'%Y%m%d%H%M.%S')
  for f in $(find $MODDIR -iname '*.*'); do
    touch -amt $ts $f
  done
  for f in $(find /data -iname '*services.jar*.*dex'); do
    rm -f $f
  done
}&
