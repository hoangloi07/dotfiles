uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

date_formatted=$(date "+%a %F %H:%M")

# linux_version=$(uname -r | cut -d '-' -f1)
linux_version=$(uname -r )

battery_status=$(cat /sys/class/power_supply/BAT0/capacity)

sep=$(printf "|")

disk=$(df / -h | awk 'NR==2 {print $5}')

echo DISK: $disk $sep UP: $uptime_formatted ↑ $sep $linux_version $sep BAT: $battery_status $sep $date_formatted
