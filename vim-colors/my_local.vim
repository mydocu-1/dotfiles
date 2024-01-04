vim9script

# Based on Vim's `Ron` color scheme

scriptencoding utf-8

import autoload 'xterm_colors/xterm_colors.vim' as col

set background=dark
hi clear
if exists('syntax_on')
    syntax reset
endif
g:colors_name = 'my_local'

var mode = 'xterm'
if has('gui_running') || (has('termguicolors') && &termguicolors)
  mode = 'hex'
endif

# Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
# (GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
def SetColor(group: string, fg: dict<string>, bg: dict<string> = {}, attr: string = 'none')
  if !empty(fg)
    exec 'hi ' .. group .. ' ctermfg=' .. fg[mode]
  endif
  if !empty(bg)
    exec 'hi ' .. group .. ' ctermbg=' .. bg[mode]
  endif
  if attr != ''
    exec 'hi ' .. group .. ' cterm=' .. attr
  endif
enddef

# -----------------
# Color definitions
# -----------------

var undef             = {}
var aquamarine        = col.color122_Aquamarine1
var black             = col.color0_Black
var cyan              = col.color44_DarkTurquoise
var deep_sky_blue     = col.color24_DeepSkyBlue4
var grey              = col.color240_Grey35
var magenta           = col.color182_Thistle3
var pink              = col.color224_MistyRose1
var purple            = col.color97_MediumPurple3
var red               = col.color196_Red1
var sky_blue          = col.color74_SkyBlue3
var white             = col.color254_Grey89
var yellow            = col.color221_LightGoldenrod2


# -----------------
# Vim editor colors
# -----------------

# (GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
call SetColor('Comment', cyan)
call SetColor('Constant', magenta)
call SetColor('DiffAdd', undef, deep_sky_blue)
call SetColor('DiffChange', undef, purple)
call SetColor('DiffDelete', sky_blue, cyan)
call SetColor('DiffText', undef, red, 'bold')
call SetColor('Error', white, red)
call SetColor('ErrorMsg', white, red)
call SetColor('FoldColumn', cyan, grey)
call SetColor('Folded', cyan, grey)
call SetColor('Identifier', cyan, undef, 'bold')
call SetColor('IncSearch', undef, undef, 'reverse')
call SetColor('LineNr', yellow)
call SetColor('NonText', grey)
call SetColor('Preproc', sky_blue)
call SetColor('Search', black, yellow)
call SetColor('ShowMarksHL', cyan, sky_blue, 'bold')
call SetColor('Special', pink)
call SetColor('SpecialKey', grey)
call SetColor('Statement', yellow)
call SetColor('StatusLine', undef, undef, 'bold,reverse')
call SetColor('StatusLineNC', undef, undef, 'reverse')
call SetColor('Title', white)
call SetColor('Todo', black, yellow)
call SetColor('Type', aquamarine)
call SetColor('Visual', undef, undef, 'reverse')
call SetColor('WarningMsg', pink)

hi clear Cursor
hi clear Label
hi clear Normal
hi clear Operator

hi clear cIf0
hi clear diffOnly

