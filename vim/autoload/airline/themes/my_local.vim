" Vim Airline theme
"

" Color palette
"

" Colors as pair of `Xterm color number`, `hex color code`
" Got from https://jonasjacek.github.io/colors/
" See also https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
let s:White = [255, '#eeeeee'] " Grey93
let s:LightGrey = [188, '#e4e4e4'] " Grey89
let s:Grey = [240, '#585858'] " Grey35
let s:LightBlue = [31, '#0087af'] " DeepSkyBlue3
let s:Blue = [24, '#005f87'] " DeepSkyBlue4
let s:LightGreen = [34, '#00af00'] " Green3
let s:Green = [28, '#008700'] " Green4
let s:LightRed = [160, '#d70000'] " Red3
let s:Red = [124, '#af0000'] " Red3

function! s:Colors(text, bg, ...)
  let colors = [a:text[1], a:bg[1], a:text[0], a:bg[0]]
  if a:0 > 0
    call extend(colors, a:000)
  endif
  return colors
endfunction

" Theme palette
"
let g:airline#themes#my_local#palette = {}

" Normal mode
let s:N1 = s:Colors(s:Grey, s:LightGrey) " Mode
let s:N2 = s:Colors(s:LightGrey, s:LightBlue) " Info
let s:N3 = s:Colors(s:White, s:Blue) " Status line
let g:airline#themes#my_local#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Insert mode
let s:I1 = s:Colors(s:Green, s:LightGrey) " Mode
let s:I2 = s:N2 " Info
let s:I3 = s:N3 " Status line
let g:airline#themes#my_local#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" Replace mode
let s:R1 = s:Colors(s:LightRed, s:LightGrey) " Mode
let s:R2 = s:N2 " Info
let s:R3 = s:N3 " Status line
let g:airline#themes#my_local#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Visual Mode:
let s:V1 = s:Colors(s:Blue, s:LightGrey) " Mode
let s:V2 = s:N2 " Info
let s:V3 = s:N3 " Status line
let g:airline#themes#my_local#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)


" Inactive:
let s:IA = s:Colors(s:LightGrey, s:Grey)
let g:airline#themes#my_local#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let g:airline#themes#my_local#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }

