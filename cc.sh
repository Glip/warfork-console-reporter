#!/bin/bash
BOT="BOT"
CHAT="CHAT"
CHECKWORD=("is in God Mode!" "report" "wh" "aimbot" "cheater")
for i in ${!CHECKWORD[@]};
do
WORD=${CHECKWORD[$i]}
CHEATER=$(tail -n 1 $1 | grep -i "$WORD" | sed -e "s/\x1b\[.\{1,5\}m//g")
if [ -n "$CHEATER" ];
then wget "https://api.telegram.org/bot$BOT/sendMessage?chat_id=$CHAT&text=$CHEATER" -O /dev/null
fi
done
