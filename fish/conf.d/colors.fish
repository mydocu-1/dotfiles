# Color definitions
# cterm hex cterm16_fallback

# Base 16 colors
set -l red         'AF0000'  'red'
set -l green       '30BE30'  'green'
set -l brgreen     '87FF87'  'brgreen'
set -l yellow      'FCE94F'  'yellow'
set -l blue        '729FCF'  'blue'
set -l cyan        '008787'  'cyan'
set -l white       'E4E4E4'  'white'

set -l fg          '00FF00'  'green'

if test -n "$DISPLAY"
  set -l c_idx 1
else
  set -l c_idx 2
end

set -U fish_color_autosuggestion $grey[$c_idx]
set -U fish_color_cancel '-r'
set -U fish_color_command $fg[$c_idx]
set -U fish_color_comment $green[$c_idx]
set -U fish_color_end $yellow[$c_idx]
set -U fish_color_error $red[$c_idx]
set -U fish_color_escape $yellow[$c_idx]  '--bold'
set -U fish_color_match --background=$blue[$c_idx]
set -U fish_color_normal $fg[$c_idx]
set -U fish_color_operator $yellow[$c_idx]
set -U fish_color_param $green[$c_idx]
set -U fish_color_quote $brgreen[$c_idx]
set -U fish_color_redirection $brgreen[$c_idx]
set -U fish_color_search_match $yellow[$c_idx]  --background=$grey[$c_idx]
set -U fish_color_selection $white[$c_idx] '--bold'  --background=$grey[$c_idx]
set -U fish_color_valid_path '--underline'

# Completion pager colors
set -U fish_pager_color_completion
set -U fish_pager_color_description $yellow[$c_idx]
set -U fish_pager_color_prefix $white[$c_idx] '--bold'  '--underline'
set -U fish_pager_color_progress $white[$c_idx] --background=$cyan[$c_idx]

# Specific to `dirh` tool
set -U fish_color_history_current $white[$c_idx] '--bold'

# Specific to breakpoint prompt
set -U fish_color_status $red[$c_idx]

# Prompt colors (not used)
set -U fish_color_cwd $yellow[$c_idx]
set -U fish_color_cwd_root $red[$c_idx]
set -U fish_color_host $brgreen[$c_idx]
set -U fish_color_host_remote $red[$c_idx]
set -U fish_color_user $blue[$c_idx]
