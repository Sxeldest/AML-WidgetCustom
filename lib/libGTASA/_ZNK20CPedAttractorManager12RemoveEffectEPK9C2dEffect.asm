; =========================================================
; Game Engine Function: _ZNK20CPedAttractorManager12RemoveEffectEPK9C2dEffect
; Address            : 0x4AADB8 - 0x4AB1C4
; =========================================================

4AADB8:  PUSH            {R4-R7,LR}
4AADBA:  ADD             R7, SP, #0xC
4AADBC:  PUSH.W          {R8-R11}
4AADC0:  SUB             SP, SP, #0xC
4AADC2:  STR             R0, [SP,#0x28+var_20]
4AADC4:  MOV             R0, R1
4AADC6:  STR             R0, [SP,#0x28+var_24]
4AADC8:  LDRB.W          R0, [R1,#0x34]
4AADCC:  CMP             R0, #9; switch 10 cases
4AADCE:  BHI.W           def_4AADD2; jumptable 004AADD2 default case
4AADD2:  TBH.W           [PC,R0,LSL#1]; switch jump
4AADD6:  DCW 0xA; jump table for switch statement
4AADD8:  DCW 0x3B
4AADDA:  DCW 0x6D
4AADDC:  DCW 0x9E
4AADDE:  DCW 0xCF
4AADE0:  DCW 0x100
4AADE2:  DCW 0x131
4AADE4:  DCW 0x162
4AADE6:  DCW 0x193
4AADE8:  DCW 0x1C3
4AADEA:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 0
4AADEC:  LDR             R1, [R0,#0x10]
4AADEE:  CMP             R1, #1
4AADF0:  MOV             R0, R1
4AADF2:  STR             R0, [SP,#0x28+var_28]
4AADF4:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AADF8:  MOV.W           R9, #0
4AADFC:  MOV.W           R11, #0xFFFFFFFF
4AAE00:  MOV.W           R10, #0
4AAE04:  LDR             R0, [SP,#0x28+var_20]
4AAE06:  LDR             R1, [SP,#0x28+var_24]
4AAE08:  LDR             R0, [R0,#0x14]
4AAE0A:  LDR.W           R5, [R0,R10,LSL#2]
4AAE0E:  LDR             R0, [R5,#4]
4AAE10:  CMP             R0, R1
4AAE12:  BNE             loc_4AAE40
4AAE14:  LDR.W           R8, [R5,#0x28]
4AAE18:  CMP.W           R8, #1
4AAE1C:  BLT             loc_4AAE40
4AAE1E:  MOVS            R6, #0
4AAE20:  LDR             R1, [R5,#0x2C]
4AAE22:  ADDS            R4, R1, R6
4AAE24:  LDR             R0, [R4,#4]
4AAE26:  STR.W           R9, [R1,R6]
4AAE2A:  CMP             R0, #0
4AAE2C:  ITTT NE
4AAE2E:  LDRNE           R1, [R0]
4AAE30:  LDRNE           R1, [R1,#4]
4AAE32:  BLXNE           R1
4AAE34:  ADDS            R6, #0x14
4AAE36:  SUBS.W          R8, R8, #1
4AAE3A:  STRD.W          R9, R11, [R4,#4]
4AAE3E:  BNE             loc_4AAE20
4AAE40:  LDR             R0, [SP,#0x28+var_28]
4AAE42:  ADD.W           R10, R10, #1
4AAE46:  CMP             R10, R0
4AAE48:  BNE             loc_4AAE04
4AAE4A:  B               def_4AADD2; jumptable 004AADD2 default case
4AAE4C:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 1
4AAE4E:  LDR             R1, [R0,#4]
4AAE50:  CMP             R1, #1
4AAE52:  MOV             R0, R1
4AAE54:  STR             R0, [SP,#0x28+var_28]
4AAE56:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AAE5A:  MOVS            R6, #0
4AAE5C:  MOV.W           R11, #0xFFFFFFFF
4AAE60:  MOVS            R4, #0
4AAE62:  LDR             R0, [SP,#0x28+var_20]
4AAE64:  LDR             R1, [SP,#0x28+var_24]
4AAE66:  LDR             R0, [R0,#8]
4AAE68:  LDR.W           R5, [R0,R4,LSL#2]
4AAE6C:  LDR             R0, [R5,#4]
4AAE6E:  CMP             R0, R1
4AAE70:  BNE             loc_4AAEA6
4AAE72:  LDR.W           R8, [R5,#0x28]
4AAE76:  CMP.W           R8, #1
4AAE7A:  BLT             loc_4AAEA6
4AAE7C:  MOV.W           R9, #0
4AAE80:  LDR             R1, [R5,#0x2C]
4AAE82:  ADD.W           R10, R1, R9
4AAE86:  LDR.W           R0, [R10,#4]
4AAE8A:  STR.W           R6, [R1,R9]
4AAE8E:  CMP             R0, #0
4AAE90:  ITTT NE
4AAE92:  LDRNE           R1, [R0]
4AAE94:  LDRNE           R1, [R1,#4]
4AAE96:  BLXNE           R1
4AAE98:  ADD.W           R9, R9, #0x14
4AAE9C:  SUBS.W          R8, R8, #1
4AAEA0:  STRD.W          R6, R11, [R10,#4]
4AAEA4:  BNE             loc_4AAE80
4AAEA6:  LDR             R0, [SP,#0x28+var_28]
4AAEA8:  ADDS            R4, #1
4AAEAA:  CMP             R4, R0
4AAEAC:  BNE             loc_4AAE62
4AAEAE:  B               def_4AADD2; jumptable 004AADD2 default case
4AAEB0:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 2
4AAEB2:  LDR             R1, [R0,#0x1C]
4AAEB4:  CMP             R1, #1
4AAEB6:  MOV             R0, R1
4AAEB8:  STR             R0, [SP,#0x28+var_28]
4AAEBA:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AAEBE:  MOV.W           R9, #0
4AAEC2:  MOV.W           R11, #0xFFFFFFFF
4AAEC6:  MOV.W           R10, #0
4AAECA:  LDR             R0, [SP,#0x28+var_20]
4AAECC:  LDR             R1, [SP,#0x28+var_24]
4AAECE:  LDR             R0, [R0,#0x20]
4AAED0:  LDR.W           R5, [R0,R10,LSL#2]
4AAED4:  LDR             R0, [R5,#4]
4AAED6:  CMP             R0, R1
4AAED8:  BNE             loc_4AAF06
4AAEDA:  LDR.W           R8, [R5,#0x28]
4AAEDE:  CMP.W           R8, #1
4AAEE2:  BLT             loc_4AAF06
4AAEE4:  MOVS            R6, #0
4AAEE6:  LDR             R1, [R5,#0x2C]
4AAEE8:  ADDS            R4, R1, R6
4AAEEA:  LDR             R0, [R4,#4]
4AAEEC:  STR.W           R9, [R1,R6]
4AAEF0:  CMP             R0, #0
4AAEF2:  ITTT NE
4AAEF4:  LDRNE           R1, [R0]
4AAEF6:  LDRNE           R1, [R1,#4]
4AAEF8:  BLXNE           R1
4AAEFA:  ADDS            R6, #0x14
4AAEFC:  SUBS.W          R8, R8, #1
4AAF00:  STRD.W          R9, R11, [R4,#4]
4AAF04:  BNE             loc_4AAEE6
4AAF06:  LDR             R0, [SP,#0x28+var_28]
4AAF08:  ADD.W           R10, R10, #1
4AAF0C:  CMP             R10, R0
4AAF0E:  BNE             loc_4AAECA
4AAF10:  B               def_4AADD2; jumptable 004AADD2 default case
4AAF12:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 3
4AAF14:  LDR             R1, [R0,#0x28]
4AAF16:  CMP             R1, #1
4AAF18:  MOV             R0, R1
4AAF1A:  STR             R0, [SP,#0x28+var_28]
4AAF1C:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AAF20:  MOV.W           R9, #0
4AAF24:  MOV.W           R11, #0xFFFFFFFF
4AAF28:  MOV.W           R10, #0
4AAF2C:  LDR             R0, [SP,#0x28+var_20]
4AAF2E:  LDR             R1, [SP,#0x28+var_24]
4AAF30:  LDR             R0, [R0,#0x2C]
4AAF32:  LDR.W           R5, [R0,R10,LSL#2]
4AAF36:  LDR             R0, [R5,#4]
4AAF38:  CMP             R0, R1
4AAF3A:  BNE             loc_4AAF68
4AAF3C:  LDR.W           R8, [R5,#0x28]
4AAF40:  CMP.W           R8, #1
4AAF44:  BLT             loc_4AAF68
4AAF46:  MOVS            R6, #0
4AAF48:  LDR             R1, [R5,#0x2C]
4AAF4A:  ADDS            R4, R1, R6
4AAF4C:  LDR             R0, [R4,#4]
4AAF4E:  STR.W           R9, [R1,R6]
4AAF52:  CMP             R0, #0
4AAF54:  ITTT NE
4AAF56:  LDRNE           R1, [R0]
4AAF58:  LDRNE           R1, [R1,#4]
4AAF5A:  BLXNE           R1
4AAF5C:  ADDS            R6, #0x14
4AAF5E:  SUBS.W          R8, R8, #1
4AAF62:  STRD.W          R9, R11, [R4,#4]
4AAF66:  BNE             loc_4AAF48
4AAF68:  LDR             R0, [SP,#0x28+var_28]
4AAF6A:  ADD.W           R10, R10, #1
4AAF6E:  CMP             R10, R0
4AAF70:  BNE             loc_4AAF2C
4AAF72:  B               def_4AADD2; jumptable 004AADD2 default case
4AAF74:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 4
4AAF76:  LDR             R1, [R0,#0x34]
4AAF78:  CMP             R1, #1
4AAF7A:  MOV             R0, R1
4AAF7C:  STR             R0, [SP,#0x28+var_28]
4AAF7E:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AAF82:  MOV.W           R9, #0
4AAF86:  MOV.W           R11, #0xFFFFFFFF
4AAF8A:  MOV.W           R10, #0
4AAF8E:  LDR             R0, [SP,#0x28+var_20]
4AAF90:  LDR             R1, [SP,#0x28+var_24]
4AAF92:  LDR             R0, [R0,#0x38]
4AAF94:  LDR.W           R5, [R0,R10,LSL#2]
4AAF98:  LDR             R0, [R5,#4]
4AAF9A:  CMP             R0, R1
4AAF9C:  BNE             loc_4AAFCA
4AAF9E:  LDR.W           R8, [R5,#0x28]
4AAFA2:  CMP.W           R8, #1
4AAFA6:  BLT             loc_4AAFCA
4AAFA8:  MOVS            R6, #0
4AAFAA:  LDR             R1, [R5,#0x2C]
4AAFAC:  ADDS            R4, R1, R6
4AAFAE:  LDR             R0, [R4,#4]
4AAFB0:  STR.W           R9, [R1,R6]
4AAFB4:  CMP             R0, #0
4AAFB6:  ITTT NE
4AAFB8:  LDRNE           R1, [R0]
4AAFBA:  LDRNE           R1, [R1,#4]
4AAFBC:  BLXNE           R1
4AAFBE:  ADDS            R6, #0x14
4AAFC0:  SUBS.W          R8, R8, #1
4AAFC4:  STRD.W          R9, R11, [R4,#4]
4AAFC8:  BNE             loc_4AAFAA
4AAFCA:  LDR             R0, [SP,#0x28+var_28]
4AAFCC:  ADD.W           R10, R10, #1
4AAFD0:  CMP             R10, R0
4AAFD2:  BNE             loc_4AAF8E
4AAFD4:  B               def_4AADD2; jumptable 004AADD2 default case
4AAFD6:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 5
4AAFD8:  LDR             R1, [R0,#0x40]
4AAFDA:  CMP             R1, #1
4AAFDC:  MOV             R0, R1
4AAFDE:  STR             R0, [SP,#0x28+var_28]
4AAFE0:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AAFE4:  MOV.W           R9, #0
4AAFE8:  MOV.W           R11, #0xFFFFFFFF
4AAFEC:  MOV.W           R10, #0
4AAFF0:  LDR             R0, [SP,#0x28+var_20]
4AAFF2:  LDR             R1, [SP,#0x28+var_24]
4AAFF4:  LDR             R0, [R0,#0x44]
4AAFF6:  LDR.W           R5, [R0,R10,LSL#2]
4AAFFA:  LDR             R0, [R5,#4]
4AAFFC:  CMP             R0, R1
4AAFFE:  BNE             loc_4AB02C
4AB000:  LDR.W           R8, [R5,#0x28]
4AB004:  CMP.W           R8, #1
4AB008:  BLT             loc_4AB02C
4AB00A:  MOVS            R6, #0
4AB00C:  LDR             R1, [R5,#0x2C]
4AB00E:  ADDS            R4, R1, R6
4AB010:  LDR             R0, [R4,#4]
4AB012:  STR.W           R9, [R1,R6]
4AB016:  CMP             R0, #0
4AB018:  ITTT NE
4AB01A:  LDRNE           R1, [R0]
4AB01C:  LDRNE           R1, [R1,#4]
4AB01E:  BLXNE           R1
4AB020:  ADDS            R6, #0x14
4AB022:  SUBS.W          R8, R8, #1
4AB026:  STRD.W          R9, R11, [R4,#4]
4AB02A:  BNE             loc_4AB00C
4AB02C:  LDR             R0, [SP,#0x28+var_28]
4AB02E:  ADD.W           R10, R10, #1
4AB032:  CMP             R10, R0
4AB034:  BNE             loc_4AAFF0
4AB036:  B               def_4AADD2; jumptable 004AADD2 default case
4AB038:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 6
4AB03A:  LDR             R1, [R0,#0x4C]
4AB03C:  CMP             R1, #1
4AB03E:  MOV             R0, R1
4AB040:  STR             R0, [SP,#0x28+var_28]
4AB042:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AB046:  MOV.W           R9, #0
4AB04A:  MOV.W           R11, #0xFFFFFFFF
4AB04E:  MOV.W           R10, #0
4AB052:  LDR             R0, [SP,#0x28+var_20]
4AB054:  LDR             R1, [SP,#0x28+var_24]
4AB056:  LDR             R0, [R0,#0x50]
4AB058:  LDR.W           R5, [R0,R10,LSL#2]
4AB05C:  LDR             R0, [R5,#4]
4AB05E:  CMP             R0, R1
4AB060:  BNE             loc_4AB08E
4AB062:  LDR.W           R8, [R5,#0x28]
4AB066:  CMP.W           R8, #1
4AB06A:  BLT             loc_4AB08E
4AB06C:  MOVS            R6, #0
4AB06E:  LDR             R1, [R5,#0x2C]
4AB070:  ADDS            R4, R1, R6
4AB072:  LDR             R0, [R4,#4]
4AB074:  STR.W           R9, [R1,R6]
4AB078:  CMP             R0, #0
4AB07A:  ITTT NE
4AB07C:  LDRNE           R1, [R0]
4AB07E:  LDRNE           R1, [R1,#4]
4AB080:  BLXNE           R1
4AB082:  ADDS            R6, #0x14
4AB084:  SUBS.W          R8, R8, #1
4AB088:  STRD.W          R9, R11, [R4,#4]
4AB08C:  BNE             loc_4AB06E
4AB08E:  LDR             R0, [SP,#0x28+var_28]
4AB090:  ADD.W           R10, R10, #1
4AB094:  CMP             R10, R0
4AB096:  BNE             loc_4AB052
4AB098:  B               def_4AADD2; jumptable 004AADD2 default case
4AB09A:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 7
4AB09C:  LDR             R1, [R0,#0x58]
4AB09E:  CMP             R1, #1
4AB0A0:  MOV             R0, R1
4AB0A2:  STR             R0, [SP,#0x28+var_28]
4AB0A4:  BLT.W           def_4AADD2; jumptable 004AADD2 default case
4AB0A8:  MOV.W           R9, #0
4AB0AC:  MOV.W           R11, #0xFFFFFFFF
4AB0B0:  MOV.W           R10, #0
4AB0B4:  LDR             R0, [SP,#0x28+var_20]
4AB0B6:  LDR             R1, [SP,#0x28+var_24]
4AB0B8:  LDR             R0, [R0,#0x5C]
4AB0BA:  LDR.W           R5, [R0,R10,LSL#2]
4AB0BE:  LDR             R0, [R5,#4]
4AB0C0:  CMP             R0, R1
4AB0C2:  BNE             loc_4AB0F0
4AB0C4:  LDR.W           R8, [R5,#0x28]
4AB0C8:  CMP.W           R8, #1
4AB0CC:  BLT             loc_4AB0F0
4AB0CE:  MOVS            R6, #0
4AB0D0:  LDR             R1, [R5,#0x2C]
4AB0D2:  ADDS            R4, R1, R6
4AB0D4:  LDR             R0, [R4,#4]
4AB0D6:  STR.W           R9, [R1,R6]
4AB0DA:  CMP             R0, #0
4AB0DC:  ITTT NE
4AB0DE:  LDRNE           R1, [R0]
4AB0E0:  LDRNE           R1, [R1,#4]
4AB0E2:  BLXNE           R1
4AB0E4:  ADDS            R6, #0x14
4AB0E6:  SUBS.W          R8, R8, #1
4AB0EA:  STRD.W          R9, R11, [R4,#4]
4AB0EE:  BNE             loc_4AB0D0
4AB0F0:  LDR             R0, [SP,#0x28+var_28]
4AB0F2:  ADD.W           R10, R10, #1
4AB0F6:  CMP             R10, R0
4AB0F8:  BNE             loc_4AB0B4
4AB0FA:  B               def_4AADD2; jumptable 004AADD2 default case
4AB0FC:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 8
4AB0FE:  LDR             R1, [R0,#0x64]
4AB100:  CMP             R1, #1
4AB102:  MOV             R0, R1
4AB104:  STR             R0, [SP,#0x28+var_28]
4AB106:  BLT             def_4AADD2; jumptable 004AADD2 default case
4AB108:  MOV.W           R9, #0
4AB10C:  MOV.W           R11, #0xFFFFFFFF
4AB110:  MOV.W           R10, #0
4AB114:  LDR             R0, [SP,#0x28+var_20]
4AB116:  LDR             R1, [SP,#0x28+var_24]
4AB118:  LDR             R0, [R0,#0x68]
4AB11A:  LDR.W           R5, [R0,R10,LSL#2]
4AB11E:  LDR             R0, [R5,#4]
4AB120:  CMP             R0, R1
4AB122:  BNE             loc_4AB150
4AB124:  LDR.W           R8, [R5,#0x28]
4AB128:  CMP.W           R8, #1
4AB12C:  BLT             loc_4AB150
4AB12E:  MOVS            R6, #0
4AB130:  LDR             R1, [R5,#0x2C]
4AB132:  ADDS            R4, R1, R6
4AB134:  LDR             R0, [R4,#4]
4AB136:  STR.W           R9, [R1,R6]
4AB13A:  CMP             R0, #0
4AB13C:  ITTT NE
4AB13E:  LDRNE           R1, [R0]
4AB140:  LDRNE           R1, [R1,#4]
4AB142:  BLXNE           R1
4AB144:  ADDS            R6, #0x14
4AB146:  SUBS.W          R8, R8, #1
4AB14A:  STRD.W          R9, R11, [R4,#4]
4AB14E:  BNE             loc_4AB130
4AB150:  LDR             R0, [SP,#0x28+var_28]
4AB152:  ADD.W           R10, R10, #1
4AB156:  CMP             R10, R0
4AB158:  BNE             loc_4AB114
4AB15A:  B               def_4AADD2; jumptable 004AADD2 default case
4AB15C:  LDR             R0, [SP,#0x28+var_20]; jumptable 004AADD2 case 9
4AB15E:  LDR             R1, [R0,#0x70]
4AB160:  CMP             R1, #1
4AB162:  MOV             R0, R1
4AB164:  STR             R0, [SP,#0x28+var_28]
4AB166:  BLT             def_4AADD2; jumptable 004AADD2 default case
4AB168:  MOV.W           R9, #0
4AB16C:  MOV.W           R11, #0xFFFFFFFF
4AB170:  MOV.W           R10, #0
4AB174:  LDR             R0, [SP,#0x28+var_20]
4AB176:  LDR             R1, [SP,#0x28+var_24]
4AB178:  LDR             R0, [R0,#0x74]
4AB17A:  LDR.W           R5, [R0,R10,LSL#2]
4AB17E:  LDR             R0, [R5,#4]
4AB180:  CMP             R0, R1
4AB182:  BNE             loc_4AB1B0
4AB184:  LDR.W           R8, [R5,#0x28]
4AB188:  CMP.W           R8, #1
4AB18C:  BLT             loc_4AB1B0
4AB18E:  MOVS            R6, #0
4AB190:  LDR             R1, [R5,#0x2C]
4AB192:  ADDS            R4, R1, R6
4AB194:  LDR             R0, [R4,#4]
4AB196:  STR.W           R9, [R1,R6]
4AB19A:  CMP             R0, #0
4AB19C:  ITTT NE
4AB19E:  LDRNE           R1, [R0]
4AB1A0:  LDRNE           R1, [R1,#4]
4AB1A2:  BLXNE           R1
4AB1A4:  ADDS            R6, #0x14
4AB1A6:  SUBS.W          R8, R8, #1
4AB1AA:  STRD.W          R9, R11, [R4,#4]
4AB1AE:  BNE             loc_4AB190
4AB1B0:  LDR             R0, [SP,#0x28+var_28]
4AB1B2:  ADD.W           R10, R10, #1
4AB1B6:  CMP             R10, R0
4AB1B8:  BNE             loc_4AB174
4AB1BA:  MOVS            R0, #0; jumptable 004AADD2 default case
4AB1BC:  ADD             SP, SP, #0xC
4AB1BE:  POP.W           {R8-R11}
4AB1C2:  POP             {R4-R7,PC}
