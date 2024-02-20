function fix_kbd --description "Fixes keybord mapping."
  setxkbmap -option "" -option "ctrl:nocaps,shift:both_capslock,grp:ctrls_toggle,grp_led:caps" -layout us,by -variant ,intl
  xcape -e 'Control_L=Escape'
end

