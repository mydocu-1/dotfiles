# A fish config for both pure console terminals
# and fancy X server vitrual terminals
#

# Terminal / X specific configs
function __is_X --description  "Checks that shell is running under X server"
  # Verify $DISPLAY is set
  test -n "$DISPLAY"
end

# Start X server on tty1
if begin not __is_X; and test (fgconsole) -eq 1; end
  exec startx
end

