while true; do
	xsetroot -name "$(date +"%a, %B %d %l:%M%p"| sed 's/  / /g') | $(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/') | $(uname -r) | $(free -m | awk '/Mem/{print $3}')"
	sleep 2
done
