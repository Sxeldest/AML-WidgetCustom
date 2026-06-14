; =========================================================
; Game Engine Function: sub_EEC74
; Address            : 0xEEC74 - 0xEF15E
; =========================================================

EEC74:  PUSH            {R4-R7,LR}
EEC76:  ADD             R7, SP, #0xC
EEC78:  PUSH.W          {R8-R11}
EEC7C:  SUB             SP, SP, #4
EEC7E:  CMP             R0, R1
EEC80:  BEQ.W           loc_EF0D6
EEC84:  MOV             R11, R1
EEC86:  SUB.W           R1, R7, #-var_1D
EEC8A:  ADD.W           R8, R1, #1
EEC8E:  SUB.W           R1, R7, #-var_1E
EEC92:  ADD.W           R9, R1, #1
EEC96:  MOV             R10, R2
EEC98:  MOV             R6, R0
EEC9A:  MOV             R5, R0
EEC9C:  LDRB            R0, [R0]
EEC9E:  CMP             R0, #0x25 ; '%'
EECA0:  BEQ             loc_EECAC
EECA2:  CMP             R0, #0x7D ; '}'
EECA4:  BEQ.W           loc_EF0BE
EECA8:  ADDS            R0, R5, #1
EECAA:  B               loc_EEFC8; jumptable 000EECDA cases 81,113
EECAC:  CMP             R6, R5
EECAE:  BEQ             loc_EECC2
EECB0:  LDR.W           R4, [R10,#8]
EECB4:  MOV             R1, R6
EECB6:  MOV             R2, R5
EECB8:  MOV             R0, R4
EECBA:  BL              sub_DCF30
EECBE:  STR.W           R4, [R10,#8]
EECC2:  ADDS            R1, R5, #1
EECC4:  CMP             R1, R11
EECC6:  BEQ.W           loc_EF0E2
EECCA:  LDRB            R0, [R5,#1]
EECCC:  SUB.W           R2, R0, #0x25 ; '%'; switch 86 cases
EECD0:  CMP             R2, #0x55 ; 'U'
EECD2:  BHI.W           def_EECDA; jumptable 000EECDA default case, cases 38-64,74-76,78,80,91-96,102,105,107,108,111,115,118
EECD6:  ADDS            R6, R5, #2
EECD8:  MOV             R0, R6
EECDA:  TBH.W           [PC,R2,LSL#1]; switch jump
EECDE:  DCW 0x7A; jump table for switch statement
EECE0:  DCW 0x225
EECE2:  DCW 0x225
EECE4:  DCW 0x225
EECE6:  DCW 0x225
EECE8:  DCW 0x225
EECEA:  DCW 0x225
EECEC:  DCW 0x225
EECEE:  DCW 0x225
EECF0:  DCW 0x225
EECF2:  DCW 0x225
EECF4:  DCW 0x225
EECF6:  DCW 0x225
EECF8:  DCW 0x225
EECFA:  DCW 0x225
EECFC:  DCW 0x225
EECFE:  DCW 0x225
EED00:  DCW 0x225
EED02:  DCW 0x225
EED04:  DCW 0x225
EED06:  DCW 0x225
EED08:  DCW 0x225
EED0A:  DCW 0x225
EED0C:  DCW 0x225
EED0E:  DCW 0x225
EED10:  DCW 0x225
EED12:  DCW 0x225
EED14:  DCW 0x225
EED16:  DCW 0x7E
EED18:  DCW 0x82
EED1A:  DCW 0x86
EED1C:  DCW 0x153
EED1E:  DCW 0x8B
EED20:  DCW 0xA1
EED22:  DCW 0xA5
EED24:  DCW 0xAC
EED26:  DCW 0xB0
EED28:  DCW 0x225
EED2A:  DCW 0x225
EED2C:  DCW 0x225
EED2E:  DCW 0xBB
EED30:  DCW 0x225
EED32:  DCW 0xBF
EED34:  DCW 0x225
EED36:  DCW 0x175
EED38:  DCW 0xE2
EED3A:  DCW 0xE6
EED3C:  DCW 0xEA
EED3E:  DCW 0xEE
EED40:  DCW 0x157
EED42:  DCW 0xF4
EED44:  DCW 0x10A
EED46:  DCW 0x10F
EED48:  DCW 0x15C
EED4A:  DCW 0x225
EED4C:  DCW 0x225
EED4E:  DCW 0x225
EED50:  DCW 0x225
EED52:  DCW 0x225
EED54:  DCW 0x225
EED56:  DCW 0x69
EED58:  DCW 0x56
EED5A:  DCW 0x11D
EED5C:  DCW 0x162
EED5E:  DCW 0x122
EED60:  DCW 0x225
EED62:  DCW 0x166
EED64:  DCW 0x56
EED66:  DCW 0x225
EED68:  DCW 0x127
EED6A:  DCW 0x225
EED6C:  DCW 0x225
EED6E:  DCW 0x13C
EED70:  DCW 0x179
EED72:  DCW 0x225
EED74:  DCW 0x141
EED76:  DCW 0x175
EED78:  DCW 0x6D
EED7A:  DCW 0x225
EED7C:  DCW 0x71
EED7E:  DCW 0x145
EED80:  DCW 0x225
EED82:  DCW 0x14C
EED84:  DCW 0x5A
EED86:  DCW 0x5F
EED88:  DCW 0x187
EED8A:  MOV             R0, R10; jumptable 000EECDA cases 98,104
EED8C:  BL              sub_EF4E4
EED90:  B               loc_EEFC6
EED92:  MOV             R0, R10; jumptable 000EECDA case 120
EED94:  MOVS            R1, #0
EED96:  BL              sub_EF918
EED9A:  B               loc_EEFC6
EED9C:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 121
EEDA0:  MOVW            R2, #0x76C
EEDA4:  LDR             R0, [R0,#0x14]
EEDA6:  ASRS            R1, R0, #0x1F
EEDA8:  ADDS            R0, R0, R2
EEDAA:  ADC.W           R1, R1, #0
EEDAE:  B               loc_EEFB0
EEDB0:  MOV             R0, R10; jumptable 000EECDA case 97
EEDB2:  BL              sub_EF3EC
EEDB6:  B               loc_EEFC6
EEDB8:  MOV             R0, R10; jumptable 000EECDA case 114
EEDBA:  BL              sub_EFA38
EEDBE:  B               loc_EEFC6
EEDC0:  LDR.W           R4, [R10,#8]; jumptable 000EECDA case 116
EEDC4:  MOVS            R0, #9
EEDC6:  STRB.W          R0, [R7,#var_1E]
EEDCA:  SUB.W           R1, R7, #-var_1E
EEDCE:  MOV             R2, R9
EEDD0:  B               loc_EEFE0
EEDD2:  LDR.W           R4, [R10,#8]; jumptable 000EECDA case 37
EEDD6:  MOV             R2, R6
EEDD8:  B               loc_EEFE0
EEDDA:  MOV             R0, R10; jumptable 000EECDA case 65
EEDDC:  BL              sub_EF430
EEDE0:  B               loc_EEFC6
EEDE2:  MOV             R0, R10; jumptable 000EECDA case 66
EEDE4:  BL              sub_EF528
EEDE8:  B               loc_EEFC6
EEDEA:  MOV             R0, R10; jumptable 000EECDA case 67
EEDEC:  MOVS            R1, #0
EEDEE:  BL              sub_EF316
EEDF2:  B               loc_EEFC6
EEDF4:  CMP             R6, R11; jumptable 000EECDA case 69
EEDF6:  BEQ.W           loc_EF104
EEDFA:  LDRB            R0, [R5,#2]
EEDFC:  ADDS            R6, R5, #3
EEDFE:  CMP             R0, #0x62 ; 'b'
EEE00:  BGT.W           loc_EEFFA
EEE04:  CMP             R0, #0x43 ; 'C'
EEE06:  BEQ.W           loc_EF044
EEE0A:  CMP             R0, #0x58 ; 'X'
EEE0C:  BEQ.W           loc_EF04A
EEE10:  CMP             R0, #0x59 ; 'Y'
EEE12:  BNE.W           loc_EF13A
EEE16:  MOV             R0, R10
EEE18:  MOVS            R1, #1
EEE1A:  BL              sub_EF284
EEE1E:  B               loc_EEFC6
EEE20:  MOV             R0, R10; jumptable 000EECDA case 70
EEE22:  BL              sub_EEADC
EEE26:  B               loc_EEFC6
EEE28:  MOV             R0, R10; jumptable 000EECDA case 71
EEE2A:  BL              sub_F029C
EEE2E:  MOV             R2, R0
EEE30:  MOV             R0, R10
EEE32:  MOV             R3, R1
EEE34:  B               loc_EEF12
EEE36:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 72
EEE3A:  LDR             R1, [R0,#8]
EEE3C:  B               loc_EEFC0
EEE3E:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 73
EEE42:  LDR             R0, [R0,#8]
EEE44:  SUBS.W          R1, R0, #0xC
EEE48:  IT LT
EEE4A:  MOVLT           R1, R0
EEE4C:  CMP             R1, #0
EEE4E:  IT EQ
EEE50:  MOVEQ           R1, #0xC
EEE52:  B               loc_EEFC0
EEE54:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 77
EEE58:  LDR             R1, [R0,#4]
EEE5A:  B               loc_EEFC0
EEE5C:  CMP             R6, R11; jumptable 000EECDA case 79
EEE5E:  BEQ.W           loc_EF116
EEE62:  LDRB            R0, [R5,#2]
EEE64:  ADDS            R6, R5, #3
EEE66:  CMP             R0, #0x63 ; 'c'
EEE68:  BGT.W           loc_EF010
EEE6C:  SUBS            R0, #0x48 ; 'H'; switch 16 cases
EEE6E:  CMP             R0, #0xF
EEE70:  BHI.W           def_EEE74; jumptable 000EEE74 default case, cases 74-76,78-82,84
EEE74:  TBH.W           [PC,R0,LSL#1]; switch jump
EEE78:  DCW 0x10; jump table for switch statement
EEE7A:  DCW 0xF2
EEE7C:  DCW 0x16A
EEE7E:  DCW 0x16A
EEE80:  DCW 0x16A
EEE82:  DCW 0xF7
EEE84:  DCW 0x16A
EEE86:  DCW 0x16A
EEE88:  DCW 0x16A
EEE8A:  DCW 0x16A
EEE8C:  DCW 0x16A
EEE8E:  DCW 0xFC
EEE90:  DCW 0x16A
EEE92:  DCW 0x101
EEE94:  DCW 0x106
EEE96:  DCW 0x10B
EEE98:  MOV             R0, R10; jumptable 000EEE74 case 72
EEE9A:  MOVS            R1, #1
EEE9C:  BL              sub_EF750
EEEA0:  B               loc_EEFC6
EEEA2:  MOV             R0, R10; jumptable 000EECDA case 82
EEEA4:  BL              sub_EFB1C
EEEA8:  B               loc_EEFC6
EEEAA:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 83
EEEAE:  LDR             R1, [R0]
EEEB0:  B               loc_EEFC0
EEEB2:  MOV             R0, R10; jumptable 000EECDA case 84
EEEB4:  BL              sub_EEBD8
EEEB8:  B               loc_EEFC6
EEEBA:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 85
EEEBE:  LDRD.W          R1, R0, [R0,#0x18]
EEEC2:  SUBS            R0, R0, R1
EEEC4:  B               loc_EEEDC
EEEC6:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 87
EEECA:  LDRD.W          R1, R0, [R0,#0x18]
EEECE:  RSB.W           R2, R1, #1
EEED2:  CMP             R1, #0
EEED4:  IT EQ
EEED6:  MOVEQ           R2, #0xFFFFFFFA
EEEDA:  ADD             R0, R2
EEEDC:  MOVW            R1, #0x2493
EEEE0:  ADDS            R0, #7
EEEE2:  MOVT            R1, #0x9249
EEEE6:  SMMLA.W         R0, R1, R0, R0
EEEEA:  ASRS            R1, R0, #2
EEEEC:  ADD.W           R1, R1, R0,LSR#31
EEEF0:  B               loc_EEFC0
EEEF2:  MOV             R0, R10; jumptable 000EECDA case 88
EEEF4:  MOVS            R1, #0
EEEF6:  BL              sub_EF94C
EEEFA:  B               loc_EEFC6
EEEFC:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 89
EEF00:  MOVW            R2, #0x76C
EEF04:  LDR             R0, [R0,#0x14]
EEF06:  ADDS            R2, R2, R0
EEF08:  MOV.W           R1, R0,ASR#31
EEF0C:  ADC.W           R3, R1, #0
EEF10:  MOV             R0, R10
EEF12:  BL              sub_EFC1E
EEF16:  B               loc_EEFC6
EEF18:  MOV             R0, R10; jumptable 000EECDA case 99
EEF1A:  MOVS            R1, #0
EEF1C:  BL              sub_EF82E
EEF20:  B               loc_EEFC6
EEF22:  MOV             R0, R10; jumptable 000EECDA case 101
EEF24:  MOVS            R1, #0
EEF26:  BL              sub_EF6B4
EEF2A:  B               loc_EEFC6
EEF2C:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 106
EEF30:  LDR             R0, [R0,#0x1C]
EEF32:  ADDS            R5, R0, #1
EEF34:  MOV             R0, #0x51EB851F
EEF3C:  SMMUL.W         R0, R5, R0
EEF40:  ASRS            R1, R0, #5
EEF42:  ADD.W           R4, R1, R0,LSR#31
EEF46:  MOV             R0, R10
EEF48:  MOV             R1, R4
EEF4A:  BL              sub_F03D8
EEF4E:  MOVS            R0, #0x64 ; 'd'
EEF50:  MLS.W           R1, R4, R0, R5
EEF54:  B               loc_EEFC0
EEF56:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 109
EEF5A:  LDR             R0, [R0,#0x10]
EEF5C:  ADDS            R1, R0, #1
EEF5E:  B               loc_EEFC0
EEF60:  MOV             R0, R10; jumptable 000EECDA case 112
EEF62:  BL              sub_EFB5A
EEF66:  B               loc_EEFC6
EEF68:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 117
EEF6C:  LDR             R1, [R0,#0x18]
EEF6E:  CMP             R1, #0
EEF70:  IT EQ
EEF72:  MOVEQ           R1, #7
EEF74:  B               loc_EEF7C
EEF76:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 119
EEF7A:  LDR             R1, [R0,#0x18]
EEF7C:  MOV             R0, R10
EEF7E:  BL              sub_F03D8
EEF82:  B               loc_EEFC6
EEF84:  MOV             R0, R10; jumptable 000EECDA case 68
EEF86:  BL              sub_EF980
EEF8A:  B               loc_EEFC6
EEF8C:  MOV             R0, R10; jumptable 000EECDA case 86
EEF8E:  BL              sub_F0418
EEF92:  MOV             R1, R0
EEF94:  B               loc_EEFC0
EEF96:  LDR.W           R1, [R10,#0xC]; jumptable 000EECDA case 90
EEF9A:  MOV             R0, R10
EEF9C:  BL              sub_F0670
EEFA0:  B               loc_EEFC6
EEFA2:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 100
EEFA6:  LDR             R1, [R0,#0xC]
EEFA8:  B               loc_EEFC0
EEFAA:  MOV             R0, R10; jumptable 000EECDA case 103
EEFAC:  BL              sub_F029C
EEFB0:  MOVS            R2, #0x64 ; 'd'
EEFB2:  MOVS            R3, #0
EEFB4:  BLX             sub_221404
EEFB8:  MOV             R1, R2
EEFBA:  CMP             R3, #0
EEFBC:  IT MI
EEFBE:  NEGMI           R1, R1
EEFC0:  MOV             R0, R10
EEFC2:  BL              sub_EFC70
EEFC6:  MOV             R0, R6
EEFC8:  CMP             R0, R11; jumptable 000EECDA cases 81,113
EEFCA:  BNE.W           loc_EEC9A
EEFCE:  B               loc_EF0BC
EEFD0:  LDR.W           R4, [R10,#8]; jumptable 000EECDA case 110
EEFD4:  MOVS            R0, #0xA
EEFD6:  STRB.W          R0, [R7,#var_1D]
EEFDA:  SUB.W           R1, R7, #-var_1D
EEFDE:  MOV             R2, R8
EEFE0:  MOV             R0, R4
EEFE2:  BL              sub_DCF30
EEFE6:  STR.W           R4, [R10,#8]
EEFEA:  B               loc_EEFC6
EEFEC:  LDR.W           R0, [R10,#0xC]; jumptable 000EECDA case 122
EEFF0:  LDR             R1, [R0,#0x24]
EEFF2:  MOV             R0, R10
EEFF4:  BL              sub_F05E2
EEFF8:  B               loc_EEFC6
EEFFA:  CMP             R0, #0x63 ; 'c'
EEFFC:  BEQ             loc_EF050
EEFFE:  CMP             R0, #0x78 ; 'x'
EF000:  BEQ             loc_EF056
EF002:  CMP             R0, #0x79 ; 'y'
EF004:  BNE.W           loc_EF13A
EF008:  MOV             R0, R10
EF00A:  BL              sub_EFBD0
EF00E:  B               loc_EEFC6
EF010:  CMP             R0, #0x74 ; 't'
EF012:  BGT             loc_EF02C
EF014:  CMP             R0, #0x64 ; 'd'
EF016:  BEQ             loc_EF098
EF018:  CMP             R0, #0x65 ; 'e'
EF01A:  BEQ             loc_EF0A2
EF01C:  CMP             R0, #0x6D ; 'm'
EF01E:  BNE.W           def_EEE74; jumptable 000EEE74 default case, cases 74-76,78-82,84
EF022:  MOV             R0, R10
EF024:  MOVS            R1, #1
EF026:  BL              sub_EF56C
EF02A:  B               loc_EEFC6
EF02C:  CMP             R0, #0x75 ; 'u'
EF02E:  BEQ             loc_EF0A8
EF030:  CMP             R0, #0x77 ; 'w'
EF032:  BEQ             loc_EF0B2
EF034:  CMP             R0, #0x79 ; 'y'
EF036:  BNE.W           def_EEE74; jumptable 000EEE74 default case, cases 74-76,78-82,84
EF03A:  MOV             R0, R10
EF03C:  MOVS            R1, #1
EF03E:  BL              sub_EF2C6
EF042:  B               loc_EEFC6
EF044:  MOV             R0, R10
EF046:  MOVS            R1, #1
EF048:  B               loc_EEDEE
EF04A:  MOV             R0, R10
EF04C:  MOVS            R1, #1
EF04E:  B               loc_EEEF6
EF050:  MOV             R0, R10
EF052:  MOVS            R1, #1
EF054:  B               loc_EEF1C
EF056:  MOV             R0, R10
EF058:  MOVS            R1, #1
EF05A:  B               loc_EED96
EF05C:  MOV             R0, R10; jumptable 000EEE74 case 73
EF05E:  MOVS            R1, #1
EF060:  BL              sub_EF784
EF064:  B               loc_EEFC6
EF066:  MOV             R0, R10; jumptable 000EEE74 case 77
EF068:  MOVS            R1, #1
EF06A:  BL              sub_EF7C6
EF06E:  B               loc_EEFC6
EF070:  MOV             R0, R10; jumptable 000EEE74 case 83
EF072:  MOVS            R1, #1
EF074:  BL              sub_EF7FA
EF078:  B               loc_EEFC6
EF07A:  MOV             R0, R10; jumptable 000EEE74 case 85
EF07C:  MOVS            R1, #1
EF07E:  BL              sub_EF5A2
EF082:  B               loc_EEFC6
EF084:  MOV             R0, R10; jumptable 000EEE74 case 86
EF086:  MOVS            R1, #1
EF088:  BL              sub_EF646
EF08C:  B               loc_EEFC6
EF08E:  MOV             R0, R10; jumptable 000EEE74 case 87
EF090:  MOVS            R1, #1
EF092:  BL              sub_EF5EE
EF096:  B               loc_EEFC6
EF098:  MOV             R0, R10
EF09A:  MOVS            R1, #1
EF09C:  BL              sub_EF67E
EF0A0:  B               loc_EEFC6
EF0A2:  MOV             R0, R10
EF0A4:  MOVS            R1, #1
EF0A6:  B               loc_EEF26
EF0A8:  MOV             R0, R10
EF0AA:  MOVS            R1, #1
EF0AC:  BL              sub_EF4A8
EF0B0:  B               loc_EEFC6
EF0B2:  MOV             R0, R10
EF0B4:  MOVS            R1, #1
EF0B6:  BL              sub_EF474
EF0BA:  B               loc_EEFC6
EF0BC:  MOV             R5, R11
EF0BE:  CMP             R6, R5
EF0C0:  BEQ             loc_EF0D8
EF0C2:  LDR.W           R4, [R10,#8]
EF0C6:  MOV             R1, R6
EF0C8:  MOV             R2, R5
EF0CA:  MOV             R0, R4
EF0CC:  BL              sub_DCF30
EF0D0:  STR.W           R4, [R10,#8]
EF0D4:  B               loc_EF0D8
EF0D6:  MOV             R5, R0
EF0D8:  MOV             R0, R5
EF0DA:  ADD             SP, SP, #4
EF0DC:  POP.W           {R8-R11}
EF0E0:  POP             {R4-R7,PC}
EF0E2:  MOVS            R0, #8; thrown_size
EF0E4:  BLX             j___cxa_allocate_exception
EF0E8:  LDR             R1, =(aInvalidFormat - 0xEF0F0); "invalid format" ...
EF0EA:  MOV             R4, R0
EF0EC:  ADD             R1, PC; "invalid format"
EF0EE:  BL              sub_EE924
EF0F2:  LDR             R0, =(_ZTIN3fmt2v812format_errorE_ptr - 0xEF0FA)
EF0F4:  LDR             R2, =(_ZN3fmt2v812format_errorD2Ev_ptr - 0xEF0FC)
EF0F6:  ADD             R0, PC; _ZTIN3fmt2v812format_errorE_ptr
EF0F8:  ADD             R2, PC; _ZN3fmt2v812format_errorD2Ev_ptr
EF0FA:  LDR             R1, [R0]; lptinfo
EF0FC:  MOV             R0, R4; void *
EF0FE:  LDR             R2, [R2]; fmt::v8::format_error::~format_error() ; void (*)(void *)
EF100:  BLX             j___cxa_throw
EF104:  MOVS            R0, #8; thrown_size
EF106:  BLX             j___cxa_allocate_exception
EF10A:  LDR             R1, =(aInvalidFormat - 0xEF112); "invalid format" ...
EF10C:  MOV             R4, R0
EF10E:  ADD             R1, PC; "invalid format"
EF110:  BL              sub_EE924
EF114:  B               loc_EF0F2
EF116:  MOVS            R0, #8; thrown_size
EF118:  BLX             j___cxa_allocate_exception
EF11C:  LDR             R1, =(aInvalidFormat - 0xEF124); "invalid format" ...
EF11E:  MOV             R4, R0
EF120:  ADD             R1, PC; "invalid format"
EF122:  BL              sub_EE924
EF126:  B               loc_EF0F2
EF128:  MOVS            R0, #8; jumptable 000EECDA default case, cases 38-64,74-76,78,80,91-96,102,105,107,108,111,115,118
EF12A:  BLX             j___cxa_allocate_exception
EF12E:  LDR             R1, =(aInvalidFormat - 0xEF136); "invalid format" ...
EF130:  MOV             R4, R0
EF132:  ADD             R1, PC; "invalid format"
EF134:  BL              sub_EE924
EF138:  B               loc_EF0F2
EF13A:  MOVS            R0, #8; thrown_size
EF13C:  BLX             j___cxa_allocate_exception
EF140:  LDR             R1, =(aInvalidFormat - 0xEF148); "invalid format" ...
EF142:  MOV             R4, R0
EF144:  ADD             R1, PC; "invalid format"
EF146:  BL              sub_EE924
EF14A:  B               loc_EF0F2
EF14C:  MOVS            R0, #8; jumptable 000EEE74 default case, cases 74-76,78-82,84
EF14E:  BLX             j___cxa_allocate_exception
EF152:  LDR             R1, =(aInvalidFormat - 0xEF15A); "invalid format" ...
EF154:  MOV             R4, R0
EF156:  ADD             R1, PC; "invalid format"
EF158:  BL              sub_EE924
EF15C:  B               loc_EF0F2
