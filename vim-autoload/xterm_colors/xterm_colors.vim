vim9script

# Color constants based on https://jonasjacek.github.io/colors/
#
# Due to duplicate color names, var names are prefixed with xterm color number.

export const color0_Black                = {'hex': '#000000',  'xterm':  '0'}
export const color1_Maroon               = {'hex': '#800000',  'xterm':  '1'}
export const color2_Green                = {'hex': '#008000',  'xterm':  '2'}
export const color3_Olive                = {'hex': '#808000',  'xterm':  '3'}
export const color4_Navy                 = {'hex': '#000080',  'xterm':  '4'}
export const color5_Purple               = {'hex': '#800080',  'xterm':  '5'}
export const color6_Teal                 = {'hex': '#008080',  'xterm':  '6'}
export const color7_Silver               = {'hex': '#c0c0c0',  'xterm':  '7'}
export const color8_Grey                 = {'hex': '#808080',  'xterm':  '8'}
export const color9_Red                  = {'hex': '#ff0000',  'xterm':  '9'}
export const color10_Lime                = {'hex': '#00ff00',  'xterm':  '10'}
export const color11_Yellow              = {'hex': '#ffff00',  'xterm':  '11'}
export const color12_Blue                = {'hex': '#0000ff',  'xterm':  '12'}
export const color13_Fuchsia             = {'hex': '#ff00ff',  'xterm':  '13'}
export const color14_Aqua                = {'hex': '#00ffff',  'xterm':  '14'}
export const color15_White               = {'hex': '#ffffff',  'xterm':  '15'}
export const color16_Grey0               = {'hex': '#000000',  'xterm':  '16'}
export const color17_NavyBlue            = {'hex': '#00005f',  'xterm':  '17'}
export const color18_DarkBlue            = {'hex': '#000087',  'xterm':  '18'}
export const color19_Blue3               = {'hex': '#0000af',  'xterm':  '19'}
export const color20_Blue3               = {'hex': '#0000d7',  'xterm':  '20'}
export const color21_Blue1               = {'hex': '#0000ff',  'xterm':  '21'}
export const color22_DarkGreen           = {'hex': '#005f00',  'xterm':  '22'}
export const color23_DeepSkyBlue4        = {'hex': '#005f5f',  'xterm':  '23'}
export const color24_DeepSkyBlue4        = {'hex': '#005f87',  'xterm':  '24'}
export const color25_DeepSkyBlue4        = {'hex': '#005faf',  'xterm':  '25'}
export const color26_DodgerBlue3         = {'hex': '#005fd7',  'xterm':  '26'}
export const color27_DodgerBlue2         = {'hex': '#005fff',  'xterm':  '27'}
export const color28_Green4              = {'hex': '#008700',  'xterm':  '28'}
export const color29_SpringGreen4        = {'hex': '#00875f',  'xterm':  '29'}
export const color30_Turquoise4          = {'hex': '#008787',  'xterm':  '30'}
export const color31_DeepSkyBlue3        = {'hex': '#0087af',  'xterm':  '31'}
export const color32_DeepSkyBlue3        = {'hex': '#0087d7',  'xterm':  '32'}
export const color33_DodgerBlue1         = {'hex': '#0087ff',  'xterm':  '33'}
export const color34_Green3              = {'hex': '#00af00',  'xterm':  '34'}
export const color35_SpringGreen3        = {'hex': '#00af5f',  'xterm':  '35'}
export const color36_DarkCyan            = {'hex': '#00af87',  'xterm':  '36'}
export const color37_LightSeaGreen       = {'hex': '#00afaf',  'xterm':  '37'}
export const color38_DeepSkyBlue2        = {'hex': '#00afd7',  'xterm':  '38'}
export const color39_DeepSkyBlue1        = {'hex': '#00afff',  'xterm':  '39'}
export const color40_Green3              = {'hex': '#00d700',  'xterm':  '40'}
export const color41_SpringGreen3        = {'hex': '#00d75f',  'xterm':  '41'}
export const color42_SpringGreen2        = {'hex': '#00d787',  'xterm':  '42'}
export const color43_Cyan3               = {'hex': '#00d7af',  'xterm':  '43'}
export const color44_DarkTurquoise       = {'hex': '#00d7d7',  'xterm':  '44'}
export const color45_Turquoise2          = {'hex': '#00d7ff',  'xterm':  '45'}
export const color46_Green1              = {'hex': '#00ff00',  'xterm':  '46'}
export const color47_SpringGreen2        = {'hex': '#00ff5f',  'xterm':  '47'}
export const color48_SpringGreen1        = {'hex': '#00ff87',  'xterm':  '48'}
export const color49_MediumSpringGreen   = {'hex': '#00ffaf',  'xterm':  '49'}
export const color50_Cyan2               = {'hex': '#00ffd7',  'xterm':  '50'}
export const color51_Cyan1               = {'hex': '#00ffff',  'xterm':  '51'}
export const color52_DarkRed             = {'hex': '#5f0000',  'xterm':  '52'}
export const color53_DeepPink4           = {'hex': '#5f005f',  'xterm':  '53'}
export const color54_Purple4             = {'hex': '#5f0087',  'xterm':  '54'}
export const color55_Purple4             = {'hex': '#5f00af',  'xterm':  '55'}
export const color56_Purple3             = {'hex': '#5f00d7',  'xterm':  '56'}
export const color57_BlueViolet          = {'hex': '#5f00ff',  'xterm':  '57'}
export const color58_Orange4             = {'hex': '#5f5f00',  'xterm':  '58'}
export const color59_Grey37              = {'hex': '#5f5f5f',  'xterm':  '59'}
export const color60_MediumPurple4       = {'hex': '#5f5f87',  'xterm':  '60'}
export const color61_SlateBlue3          = {'hex': '#5f5faf',  'xterm':  '61'}
export const color62_SlateBlue3          = {'hex': '#5f5fd7',  'xterm':  '62'}
export const color63_RoyalBlue1          = {'hex': '#5f5fff',  'xterm':  '63'}
export const color64_Chartreuse4         = {'hex': '#5f8700',  'xterm':  '64'}
export const color65_DarkSeaGreen4       = {'hex': '#5f875f',  'xterm':  '65'}
export const color66_PaleTurquoise4      = {'hex': '#5f8787',  'xterm':  '66'}
export const color67_SteelBlue           = {'hex': '#5f87af',  'xterm':  '67'}
export const color68_SteelBlue3          = {'hex': '#5f87d7',  'xterm':  '68'}
export const color69_CornflowerBlue      = {'hex': '#5f87ff',  'xterm':  '69'}
export const color70_Chartreuse3         = {'hex': '#5faf00',  'xterm':  '70'}
export const color71_DarkSeaGreen4       = {'hex': '#5faf5f',  'xterm':  '71'}
export const color72_CadetBlue           = {'hex': '#5faf87',  'xterm':  '72'}
export const color73_CadetBlue           = {'hex': '#5fafaf',  'xterm':  '73'}
export const color74_SkyBlue3            = {'hex': '#5fafd7',  'xterm':  '74'}
export const color75_SteelBlue1          = {'hex': '#5fafff',  'xterm':  '75'}
export const color76_Chartreuse3         = {'hex': '#5fd700',  'xterm':  '76'}
export const color77_PaleGreen3          = {'hex': '#5fd75f',  'xterm':  '77'}
export const color78_SeaGreen3           = {'hex': '#5fd787',  'xterm':  '78'}
export const color79_Aquamarine3         = {'hex': '#5fd7af',  'xterm':  '79'}
export const color80_MediumTurquoise     = {'hex': '#5fd7d7',  'xterm':  '80'}
export const color81_SteelBlue1          = {'hex': '#5fd7ff',  'xterm':  '81'}
export const color82_Chartreuse2         = {'hex': '#5fff00',  'xterm':  '82'}
export const color83_SeaGreen2           = {'hex': '#5fff5f',  'xterm':  '83'}
export const color84_SeaGreen1           = {'hex': '#5fff87',  'xterm':  '84'}
export const color85_SeaGreen1           = {'hex': '#5fffaf',  'xterm':  '85'}
export const color86_Aquamarine1         = {'hex': '#5fffd7',  'xterm':  '86'}
export const color87_DarkSlateGray2      = {'hex': '#5fffff',  'xterm':  '87'}
export const color88_DarkRed             = {'hex': '#870000',  'xterm':  '88'}
export const color89_DeepPink4           = {'hex': '#87005f',  'xterm':  '89'}
export const color90_DarkMagenta         = {'hex': '#870087',  'xterm':  '90'}
export const color91_DarkMagenta         = {'hex': '#8700af',  'xterm':  '91'}
export const color92_DarkViolet          = {'hex': '#8700d7',  'xterm':  '92'}
export const color93_Purple              = {'hex': '#8700ff',  'xterm':  '93'}
export const color94_Orange4             = {'hex': '#875f00',  'xterm':  '94'}
export const color95_LightPink4          = {'hex': '#875f5f',  'xterm':  '95'}
export const color96_Plum4               = {'hex': '#875f87',  'xterm':  '96'}
export const color97_MediumPurple3       = {'hex': '#875faf',  'xterm':  '97'}
export const color98_MediumPurple3       = {'hex': '#875fd7',  'xterm':  '98'}
export const color99_SlateBlue1          = {'hex': '#875fff',  'xterm':  '99'}
export const color100_Yellow4            = {'hex': '#878700',  'xterm':  '100'}
export const color101_Wheat4             = {'hex': '#87875f',  'xterm':  '101'}
export const color102_Grey53             = {'hex': '#878787',  'xterm':  '102'}
export const color103_LightSlateGrey     = {'hex': '#8787af',  'xterm':  '103'}
export const color104_MediumPurple       = {'hex': '#8787d7',  'xterm':  '104'}
export const color105_LightSlateBlue     = {'hex': '#8787ff',  'xterm':  '105'}
export const color106_Yellow4            = {'hex': '#87af00',  'xterm':  '106'}
export const color107_DarkOliveGreen3    = {'hex': '#87af5f',  'xterm':  '107'}
export const color108_DarkSeaGreen       = {'hex': '#87af87',  'xterm':  '108'}
export const color109_LightSkyBlue3      = {'hex': '#87afaf',  'xterm':  '109'}
export const color110_LightSkyBlue3      = {'hex': '#87afd7',  'xterm':  '110'}
export const color111_SkyBlue2           = {'hex': '#87afff',  'xterm':  '111'}
export const color112_Chartreuse2        = {'hex': '#87d700',  'xterm':  '112'}
export const color113_DarkOliveGreen3    = {'hex': '#87d75f',  'xterm':  '113'}
export const color114_PaleGreen3         = {'hex': '#87d787',  'xterm':  '114'}
export const color115_DarkSeaGreen3      = {'hex': '#87d7af',  'xterm':  '115'}
export const color116_DarkSlateGray3     = {'hex': '#87d7d7',  'xterm':  '116'}
export const color117_SkyBlue1           = {'hex': '#87d7ff',  'xterm':  '117'}
export const color118_Chartreuse1        = {'hex': '#87ff00',  'xterm':  '118'}
export const color119_LightGreen         = {'hex': '#87ff5f',  'xterm':  '119'}
export const color120_LightGreen         = {'hex': '#87ff87',  'xterm':  '120'}
export const color121_PaleGreen1         = {'hex': '#87ffaf',  'xterm':  '121'}
export const color122_Aquamarine1        = {'hex': '#87ffd7',  'xterm':  '122'}
export const color123_DarkSlateGray1     = {'hex': '#87ffff',  'xterm':  '123'}
export const color124_Red3               = {'hex': '#af0000',  'xterm':  '124'}
export const color125_DeepPink4          = {'hex': '#af005f',  'xterm':  '125'}
export const color126_MediumVioletRed    = {'hex': '#af0087',  'xterm':  '126'}
export const color127_Magenta3           = {'hex': '#af00af',  'xterm':  '127'}
export const color128_DarkViolet         = {'hex': '#af00d7',  'xterm':  '128'}
export const color129_Purple             = {'hex': '#af00ff',  'xterm':  '129'}
export const color130_DarkOrange3        = {'hex': '#af5f00',  'xterm':  '130'}
export const color131_IndianRed          = {'hex': '#af5f5f',  'xterm':  '131'}
export const color132_HotPink3           = {'hex': '#af5f87',  'xterm':  '132'}
export const color133_MediumOrchid3      = {'hex': '#af5faf',  'xterm':  '133'}
export const color134_MediumOrchid       = {'hex': '#af5fd7',  'xterm':  '134'}
export const color135_MediumPurple2      = {'hex': '#af5fff',  'xterm':  '135'}
export const color136_DarkGoldenrod      = {'hex': '#af8700',  'xterm':  '136'}
export const color137_LightSalmon3       = {'hex': '#af875f',  'xterm':  '137'}
export const color138_RosyBrown          = {'hex': '#af8787',  'xterm':  '138'}
export const color139_Grey63             = {'hex': '#af87af',  'xterm':  '139'}
export const color140_MediumPurple2      = {'hex': '#af87d7',  'xterm':  '140'}
export const color141_MediumPurple1      = {'hex': '#af87ff',  'xterm':  '141'}
export const color142_Gold3              = {'hex': '#afaf00',  'xterm':  '142'}
export const color143_DarkKhaki          = {'hex': '#afaf5f',  'xterm':  '143'}
export const color144_NavajoWhite3       = {'hex': '#afaf87',  'xterm':  '144'}
export const color145_Grey69             = {'hex': '#afafaf',  'xterm':  '145'}
export const color146_LightSteelBlue3    = {'hex': '#afafd7',  'xterm':  '146'}
export const color147_LightSteelBlue     = {'hex': '#afafff',  'xterm':  '147'}
export const color148_Yellow3            = {'hex': '#afd700',  'xterm':  '148'}
export const color149_DarkOliveGreen3    = {'hex': '#afd75f',  'xterm':  '149'}
export const color150_DarkSeaGreen3      = {'hex': '#afd787',  'xterm':  '150'}
export const color151_DarkSeaGreen2      = {'hex': '#afd7af',  'xterm':  '151'}
export const color152_LightCyan3         = {'hex': '#afd7d7',  'xterm':  '152'}
export const color153_LightSkyBlue1      = {'hex': '#afd7ff',  'xterm':  '153'}
export const color154_GreenYellow        = {'hex': '#afff00',  'xterm':  '154'}
export const color155_DarkOliveGreen2    = {'hex': '#afff5f',  'xterm':  '155'}
export const color156_PaleGreen1         = {'hex': '#afff87',  'xterm':  '156'}
export const color157_DarkSeaGreen2      = {'hex': '#afffaf',  'xterm':  '157'}
export const color158_DarkSeaGreen1      = {'hex': '#afffd7',  'xterm':  '158'}
export const color159_PaleTurquoise1     = {'hex': '#afffff',  'xterm':  '159'}
export const color160_Red3               = {'hex': '#d70000',  'xterm':  '160'}
export const color161_DeepPink3          = {'hex': '#d7005f',  'xterm':  '161'}
export const color162_DeepPink3          = {'hex': '#d70087',  'xterm':  '162'}
export const color163_Magenta3           = {'hex': '#d700af',  'xterm':  '163'}
export const color164_Magenta3           = {'hex': '#d700d7',  'xterm':  '164'}
export const color165_Magenta2           = {'hex': '#d700ff',  'xterm':  '165'}
export const color166_DarkOrange3        = {'hex': '#d75f00',  'xterm':  '166'}
export const color167_IndianRed          = {'hex': '#d75f5f',  'xterm':  '167'}
export const color168_HotPink3           = {'hex': '#d75f87',  'xterm':  '168'}
export const color169_HotPink2           = {'hex': '#d75faf',  'xterm':  '169'}
export const color170_Orchid             = {'hex': '#d75fd7',  'xterm':  '170'}
export const color171_MediumOrchid1      = {'hex': '#d75fff',  'xterm':  '171'}
export const color172_Orange3            = {'hex': '#d78700',  'xterm':  '172'}
export const color173_LightSalmon3       = {'hex': '#d7875f',  'xterm':  '173'}
export const color174_LightPink3         = {'hex': '#d78787',  'xterm':  '174'}
export const color175_Pink3              = {'hex': '#d787af',  'xterm':  '175'}
export const color176_Plum3              = {'hex': '#d787d7',  'xterm':  '176'}
export const color177_Violet             = {'hex': '#d787ff',  'xterm':  '177'}
export const color178_Gold3              = {'hex': '#d7af00',  'xterm':  '178'}
export const color179_LightGoldenrod3    = {'hex': '#d7af5f',  'xterm':  '179'}
export const color180_Tan                = {'hex': '#d7af87',  'xterm':  '180'}
export const color181_MistyRose3         = {'hex': '#d7afaf',  'xterm':  '181'}
export const color182_Thistle3           = {'hex': '#d7afd7',  'xterm':  '182'}
export const color183_Plum2              = {'hex': '#d7afff',  'xterm':  '183'}
export const color184_Yellow3            = {'hex': '#d7d700',  'xterm':  '184'}
export const color185_Khaki3             = {'hex': '#d7d75f',  'xterm':  '185'}
export const color186_LightGoldenrod2    = {'hex': '#d7d787',  'xterm':  '186'}
export const color187_LightYellow3       = {'hex': '#d7d7af',  'xterm':  '187'}
export const color188_Grey84             = {'hex': '#d7d7d7',  'xterm':  '188'}
export const color189_LightSteelBlue1    = {'hex': '#d7d7ff',  'xterm':  '189'}
export const color190_Yellow2            = {'hex': '#d7ff00',  'xterm':  '190'}
export const color191_DarkOliveGreen1    = {'hex': '#d7ff5f',  'xterm':  '191'}
export const color192_DarkOliveGreen1    = {'hex': '#d7ff87',  'xterm':  '192'}
export const color193_DarkSeaGreen1      = {'hex': '#d7ffaf',  'xterm':  '193'}
export const color194_Honeydew2          = {'hex': '#d7ffd7',  'xterm':  '194'}
export const color195_LightCyan1         = {'hex': '#d7ffff',  'xterm':  '195'}
export const color196_Red1               = {'hex': '#ff0000',  'xterm':  '196'}
export const color197_DeepPink2          = {'hex': '#ff005f',  'xterm':  '197'}
export const color198_DeepPink1          = {'hex': '#ff0087',  'xterm':  '198'}
export const color199_DeepPink1          = {'hex': '#ff00af',  'xterm':  '199'}
export const color200_Magenta2           = {'hex': '#ff00d7',  'xterm':  '200'}
export const color201_Magenta1           = {'hex': '#ff00ff',  'xterm':  '201'}
export const color202_OrangeRed1         = {'hex': '#ff5f00',  'xterm':  '202'}
export const color203_IndianRed1         = {'hex': '#ff5f5f',  'xterm':  '203'}
export const color204_IndianRed1         = {'hex': '#ff5f87',  'xterm':  '204'}
export const color205_HotPink            = {'hex': '#ff5faf',  'xterm':  '205'}
export const color206_HotPink            = {'hex': '#ff5fd7',  'xterm':  '206'}
export const color207_MediumOrchid1      = {'hex': '#ff5fff',  'xterm':  '207'}
export const color208_DarkOrange         = {'hex': '#ff8700',  'xterm':  '208'}
export const color209_Salmon1            = {'hex': '#ff875f',  'xterm':  '209'}
export const color210_LightCoral         = {'hex': '#ff8787',  'xterm':  '210'}
export const color211_PaleVioletRed1     = {'hex': '#ff87af',  'xterm':  '211'}
export const color212_Orchid2            = {'hex': '#ff87d7',  'xterm':  '212'}
export const color213_Orchid1            = {'hex': '#ff87ff',  'xterm':  '213'}
export const color214_Orange1            = {'hex': '#ffaf00',  'xterm':  '214'}
export const color215_SandyBrown         = {'hex': '#ffaf5f',  'xterm':  '215'}
export const color216_LightSalmon1       = {'hex': '#ffaf87',  'xterm':  '216'}
export const color217_LightPink1         = {'hex': '#ffafaf',  'xterm':  '217'}
export const color218_Pink1              = {'hex': '#ffafd7',  'xterm':  '218'}
export const color219_Plum1              = {'hex': '#ffafff',  'xterm':  '219'}
export const color220_Gold1              = {'hex': '#ffd700',  'xterm':  '220'}
export const color221_LightGoldenrod2    = {'hex': '#ffd75f',  'xterm':  '221'}
export const color222_LightGoldenrod2    = {'hex': '#ffd787',  'xterm':  '222'}
export const color223_NavajoWhite1       = {'hex': '#ffd7af',  'xterm':  '223'}
export const color224_MistyRose1         = {'hex': '#ffd7d7',  'xterm':  '224'}
export const color225_Thistle1           = {'hex': '#ffd7ff',  'xterm':  '225'}
export const color226_Yellow1            = {'hex': '#ffff00',  'xterm':  '226'}
export const color227_LightGoldenrod1    = {'hex': '#ffff5f',  'xterm':  '227'}
export const color228_Khaki1             = {'hex': '#ffff87',  'xterm':  '228'}
export const color229_Wheat1             = {'hex': '#ffffaf',  'xterm':  '229'}
export const color230_Cornsilk1          = {'hex': '#ffffd7',  'xterm':  '230'}
export const color231_Grey100            = {'hex': '#ffffff',  'xterm':  '231'}
export const color232_Grey3              = {'hex': '#080808',  'xterm':  '232'}
export const color233_Grey7              = {'hex': '#121212',  'xterm':  '233'}
export const color234_Grey11             = {'hex': '#1c1c1c',  'xterm':  '234'}
export const color235_Grey15             = {'hex': '#262626',  'xterm':  '235'}
export const color236_Grey19             = {'hex': '#303030',  'xterm':  '236'}
export const color237_Grey23             = {'hex': '#3a3a3a',  'xterm':  '237'}
export const color238_Grey27             = {'hex': '#444444',  'xterm':  '238'}
export const color239_Grey30             = {'hex': '#4e4e4e',  'xterm':  '239'}
export const color240_Grey35             = {'hex': '#585858',  'xterm':  '240'}
export const color241_Grey39             = {'hex': '#626262',  'xterm':  '241'}
export const color242_Grey42             = {'hex': '#6c6c6c',  'xterm':  '242'}
export const color243_Grey46             = {'hex': '#767676',  'xterm':  '243'}
export const color244_Grey50             = {'hex': '#808080',  'xterm':  '244'}
export const color245_Grey54             = {'hex': '#8a8a8a',  'xterm':  '245'}
export const color246_Grey58             = {'hex': '#949494',  'xterm':  '246'}
export const color247_Grey62             = {'hex': '#9e9e9e',  'xterm':  '247'}
export const color248_Grey66             = {'hex': '#a8a8a8',  'xterm':  '248'}
export const color249_Grey70             = {'hex': '#b2b2b2',  'xterm':  '249'}
export const color250_Grey74             = {'hex': '#bcbcbc',  'xterm':  '250'}
export const color251_Grey78             = {'hex': '#c6c6c6',  'xterm':  '251'}
export const color252_Grey82             = {'hex': '#d0d0d0',  'xterm':  '252'}
export const color253_Grey85             = {'hex': '#dadada',  'xterm':  '253'}
export const color254_Grey89             = {'hex': '#e4e4e4',  'xterm':  '254'}
export const color255_Grey93             = {'hex': '#eeeeee',  'xterm':  '255'}

