#!/system/bin/sh
MUX=$(expr "$(cat /proc/cmdline)" : ".*mux=\([^ ]*\)")
echo "Detected MUX" $MUX
case "$MUX" in
       GTA04A2 | GTA04A3 | GTA04A3+ ) # Letux 2804
               echo "LOADING bq27x00_battery.ko"
               insmod /system/lib/modules/bq27x00_battery.ko
               ;;
        GTA04B2 | GTA04B3 ) # Letux 3704/7004
               echo "LOADING twl4030_madc_battery.ko"
               insmod /system/lib/modules/twl4030_madc_battery.ko
               ;;
esac
