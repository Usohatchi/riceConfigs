#/bin/bash

clock() {
	date '+%H:%M'
}

dayofweek(){
	date '+%A'
}

day(){
	date '+%d'
}

month(){
    date '+%b'
}

battery() {
	BATC=/sys/class/power_supply/BAT0/capacity
	BATS=/sys/class/power_supply/BAT0/status

    	test "`cat $BATS`" = "Charging" && echo -n '+' || echo -n '-'

    	sed -n p $BATC
}

while :; do
	buf=""
	buf="${buf}$(dayofweek), "
    buf="${buf}$(month) "
	buf="${buf}$(day) "
	buf="${buf}$(clock)"
	buf="%{c}${buf}"
    echo $buf
done
