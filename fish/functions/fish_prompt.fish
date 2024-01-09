function fish_prompt --description "Writes out command line prompt"
  set -lx blue    '729FCF'  'brblue'
  set -lx yellow  'FCE94F'  'bryellow'

  echo -n -s (set_color --bold $blue) "$USER" @ (prompt_hostname) ' ' (set_color $yellow) (prompt_pwd) (set_color normal) ' > '
end

