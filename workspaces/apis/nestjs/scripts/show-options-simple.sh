#!/bin/bash

ch=( "1" "Fri, 20/3/15" "2" "Sun, 21/6/15" "3" "Wed, 23/9/15" 
     "4" "Mon, 21/12/15")

dialog --title "Equinoxes and Solistices"  \
--radiolist "When is the Winter Solictice?" 15 60 4 \
"${ch[0]}" "${ch[1]}" ON \
"${ch[2]}" "${ch[3]}" OFF \
"${ch[4]}" "${ch[5]}" OFF \
"${ch[6]}" "${ch[7]}" OFF 2>/tmp/menu.sh.$$