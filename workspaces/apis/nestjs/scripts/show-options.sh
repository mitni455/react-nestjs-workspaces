#!/bin/bash

local LIST=()                                                                                                                                                                                                                                
for item in check-*.sh; do
  local DESC="$( grep "DESCRIPTION=" $item | sed 's|^DESCRIPTION=||' )"
  LIST+=( $( basename $item .sh ) "$DESC" off )
done
local script
script=$( dialog --backtitle "BigDawg configuration" \
                 --radiolist "Select journey for your adventure:" 20 80 10 \
                 "${LIST[@]}" \
          3>&1 1>&2 2>&3 )
echo "$script was selected"

eval "$(pwd)/$script.sh"
