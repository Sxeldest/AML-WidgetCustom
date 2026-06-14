; =========================================================
; Game Engine Function: sub_1DAE50
; Address            : 0x1DAE50 - 0x1DB1E4
; =========================================================

1DAE50:  PUSH            {R4-R11,LR}
1DAE54:  ADD             R11, SP, #0x1C
1DAE58:  LDR             R3, =(sub_1DCCB8 - 0x1DAE70)
1DAE5C:  CMP             R1, #0x8000
1DAE60:  LDR             R6, =(sub_1DCC88 - 0x1DAE84)
1DAE64:  LDR             R7, =(sub_1DCC7C - 0x1DAE88)
1DAE68:  ADD             LR, PC, R3; sub_1DCCB8
1DAE6C:  LDR             R5, =(sub_1DCCA0 - 0x1DAE80)
1DAE70:  LDR             R2, =(sub_1DCCC4 - 0x1DAE90)
1DAE74:  LDR             R4, =(sub_1DCCAC - 0x1DAE98)
1DAE78:  ADD             R3, PC, R5; sub_1DCCA0
1DAE7C:  ADD             R5, PC, R6; sub_1DCC88
1DAE80:  ADD             R6, PC, R7; sub_1DCC7C
1DAE84:  LDR             R7, =(sub_1DCC70 - 0x1DAE9C)
1DAE88:  ADD             R12, PC, R2; sub_1DCCC4
1DAE8C:  LDR             R8, =(sub_1DCC94 - 0x1DAEA0)
1DAE90:  ADD             R9, PC, R4; sub_1DCCAC
1DAE94:  ADD             R7, PC, R7; sub_1DCC70
1DAE98:  ADD             R4, PC, R8; sub_1DCC94
1DAE9C:  BGE             loc_1DAF1C
1DAEA0:  CMP             R1, #1
1DAEA4:  BEQ             loc_1DB090
1DAEA8:  CMP             R1, #4
1DAEAC:  BEQ             loc_1DB158
1DAEB0:  CMP             R1, #9
1DAEB4:  BNE             loc_1DB1C0
1DAEB8:  MOVW            R7, #0
1DAEBC:  LDR             R2, =(sub_1DCB44 - 0x1DAEE4)
1DAEC0:  MOVT            R7, #0x4448
1DAEC4:  LDR             R6, =(loc_1DC928 - 0x1DAF04)
1DAEC8:  STR             R7, [R0,#0x88]
1DAECC:  MOV             R7, #0x43DC0000
1DAED4:  LDR             R3, =(sub_1DCAD4 - 0x1DAEF4)
1DAED8:  STR             R7, [R0,#0x84]
1DAEDC:  ADD             R12, PC, R2; sub_1DCB44
1DAEE0:  LDR             R7, =(sub_1DCB18 - 0x1DAEFC)
1DAEE4:  MOV             R5, #0
1DAEE8:  LDR             R8, =(loc_1DCA18 - 0x1DAF14)
1DAEEC:  ADD             R9, PC, R3; sub_1DCAD4
1DAEF0:  LDR             R4, =(sub_1DCA90 - 0x1DAF0C)
1DAEF4:  ADD             LR, PC, R7; sub_1DCB18
1DAEF8:  LDR             R2, =(sub_1DC8E0 - 0x1DAF1C)
1DAEFC:  ADD             R6, PC, R6; loc_1DC928
1DAF00:  LDR             R10, =(loc_1DC9A0 - 0x1DAF18)
1DAF04:  ADD             R3, PC, R4; sub_1DCA90
1DAF08:  STR             R5, [R0,#0x8C]
1DAF0C:  ADD             R4, PC, R8; loc_1DCA18
1DAF10:  ADD             R5, PC, R10; loc_1DC9A0
1DAF14:  ADD             R7, PC, R2; sub_1DC8E0
1DAF18:  B               loc_1DB1C0
1DAF1C:  SUB             R2, R1, #0x9000
1DAF20:  CMP             R2, #2
1DAF24:  BCS             loc_1DAF74
1DAF28:  LDR             R2, =(sub_1DCC38 - 0x1DAF40)
1DAF2C:  MOV             R3, #0x3F800000
1DAF30:  LDR             R4, =(loc_1DCBD4 - 0x1DAF48)
1DAF34:  LDR             R5, =(sub_1DCB88 - 0x1DAF50)
1DAF38:  ADD             LR, PC, R2; sub_1DCC38
1DAF3C:  LDR             R6, =(sub_1DCB7C - 0x1DAF58)
1DAF40:  ADD             R4, PC, R4; loc_1DCBD4
1DAF44:  LDR             R8, =(sub_1DCC2C - 0x1DAF60)
1DAF48:  ADD             R5, PC, R5; sub_1DCB88
1DAF4C:  LDR             R7, =(sub_1DCC54 - 0x1DAF68)
1DAF50:  ADD             R6, PC, R6; sub_1DCB7C
1DAF54:  LDR             R10, =(sub_1DCC20 - 0x1DAF70)
1DAF58:  ADD             R9, PC, R8; sub_1DCC2C
1DAF5C:  LDR             R2, =(sub_1DCB70 - 0x1DAF74)
1DAF60:  ADD             R12, PC, R7; sub_1DCC54
1DAF64:  STR             R3, [R0,#0x90]
1DAF68:  ADD             R3, PC, R10; sub_1DCC20
1DAF6C:  ADD             R7, PC, R2; sub_1DCB70
1DAF70:  B               loc_1DB1C0
1DAF74:  CMP             R1, #0x8000
1DAF78:  BNE             loc_1DB1C0
1DAF7C:  MOVW            LR, #0xD70A
1DAF80:  MOVW            R12, #0xD70A
1DAF84:  MOVW            R5, #0xB852
1DAF88:  MOVW            R2, #0x7AE1
1DAF8C:  MOVW            R4, #0xCCCD
1DAF90:  MOVW            R6, #0x6042
1DAF94:  MOV             R7, #0x3F800000
1DAF98:  MOVT            LR, #0x3EA3
1DAF9C:  MOVT            R12, #0x3F63
1DAFA0:  STR             R7, [R0,#0x38]
1DAFA4:  STR             R7, [R0,#0x3C]
1DAFA8:  MOVT            R5, #0x3FBE
1DAFAC:  STR             R7, [R0,#4]
1DAFB0:  MOVT            R2, #0x3F54
1DAFB4:  STR             R7, [R0,#8]
1DAFB8:  MOVW            R7, #0x3958
1DAFBC:  STR             LR, [R0,#0xC]
1DAFC0:  MOVT            R4, #0x3D4C
1DAFC4:  STR             R12, [R0,#0x10]
1DAFC8:  MOVT            R6, #0x3BE5
1DAFCC:  ADD             R12, R0, #0x18
1DAFD0:  STR             R5, [R0,#0x14]
1DAFD4:  STM             R12, {R2,R4,R6}
1DAFD8:  MOV             R2, #0
1DAFDC:  MOVT            R7, #0x3C34
1DAFE0:  STR             R2, [R0,#0x40]
1DAFE4:  MOV             R5, #1
1DAFE8:  STR             R2, [R0,#0x44]
1DAFEC:  STR             R2, [R0,#0x48]
1DAFF0:  STR             R7, [R0,#0x28]
1DAFF4:  MOV             R7, #0x3FA147AE
1DAFFC:  LDR             R9, =(sub_1DBFE8 - 0x1DB014)
1DB000:  STR             R7, [R0,#0x24]
1DB004:  MOV             R7, #0x3E800000
1DB008:  STR             R2, [R0,#0x4C]
1DB00C:  ADD             R9, PC, R9; sub_1DBFE8
1DB010:  STR             R2, [R0,#0x50]
1DB014:  STR             R7, [R0,#0x58]
1DB018:  STR             R7, [R0,#0x60]
1DB01C:  MOV             R7, #0x3F7E76C9
1DB024:  LDR             R3, =(sub_1DBFCC - 0x1DB054)
1DB028:  STR             R7, [R0,#0x2C]
1DB02C:  MOV             R7, #0x459C4000
1DB034:  LDR             R8, =(sub_1DBEA4 - 0x1DB064)
1DB038:  STR             R7, [R0,#0x68]
1DB03C:  MOV             R7, #0x437A0000
1DB044:  LDR             R6, =(sub_1DC180 - 0x1DB05C)
1DB048:  STR             R7, [R0,#0x6C]
1DB04C:  ADD             R3, PC, R3; sub_1DBFCC
1DB050:  STR             R2, [R0,#0x54]
1DB054:  ADD             R12, PC, R6; sub_1DC180
1DB058:  STR             R2, [R0,#0x5C]
1DB05C:  ADD             R4, PC, R8; sub_1DBEA4
1DB060:  STR             R2, [R0,#0x64]
1DB064:  STR             R2, [R0,#0x30]
1DB068:  LDR             R2, =(sub_1DC004 - 0x1DB078)
1DB06C:  LDR             R7, =(loc_1DBAD8 - 0x1DB084)
1DB070:  ADD             LR, PC, R2; sub_1DC004
1DB074:  LDR             R10, =(sub_1DBB08 - 0x1DB08C)
1DB078:  LDR             R2, =(loc_1DBAAC - 0x1DB090)
1DB07C:  ADD             R6, PC, R7; loc_1DBAD8
1DB080:  STRB            R5, [R0,#0x34]
1DB084:  ADD             R5, PC, R10; sub_1DBB08
1DB088:  ADD             R7, PC, R2; loc_1DBAAC
1DB08C:  B               loc_1DB1C0
1DB090:  MOVW            R4, #0xD70A
1DB094:  MOVW            R5, #0xD70A
1DB098:  MOVW            R2, #0xB852
1DB09C:  MOVW            R12, #0x7AE1
1DB0A0:  MOVW            LR, #0xCCCD
1DB0A4:  MOV             R7, #0x3F800000
1DB0A8:  MOVT            R4, #0x3EA3
1DB0AC:  STR             R7, [R0,#4]
1DB0B0:  STR             R7, [R0,#8]
1DB0B4:  MOVT            R5, #0x3F63
1DB0B8:  STR             R4, [R0,#0xC]
1DB0BC:  MOVT            R2, #0x3FBE
1DB0C0:  MOVT            R12, #0x3F54
1DB0C4:  MOVT            LR, #0x3D4C
1DB0C8:  ADD             R4, R0, #0x14
1DB0CC:  MOVW            R3, #0x6042
1DB0D0:  STR             R5, [R0,#0x10]
1DB0D4:  MOVT            R3, #0x3BE5
1DB0D8:  STM             R4, {R2,R12,LR}
1DB0DC:  MOV             R2, #0x3FA147AE
1DB0E4:  STR             R3, [R0,#0x20]
1DB0E8:  MOV             R7, #1
1DB0EC:  STR             R2, [R0,#0x24]
1DB0F0:  MOV             R2, #0x3C343958
1DB0F8:  LDR             R3, =(sub_1DC5C4 - 0x1DB120)
1DB0FC:  STR             R2, [R0,#0x28]
1DB100:  MOV             R2, #0x3F7E76C9
1DB108:  LDR             R6, =(sub_1DC4A4 - 0x1DB128)
1DB10C:  STR             R2, [R0,#0x2C]
1DB110:  MOV             R2, #0
1DB114:  STR             R2, [R0,#0x30]
1DB118:  ADD             R12, PC, R3; sub_1DC5C4
1DB11C:  LDR             R2, =(sub_1DC4DC - 0x1DB130)
1DB120:  ADD             R3, PC, R6; sub_1DC4A4
1DB124:  LDR             R9, =(sub_1DC4C0 - 0x1DB13C)
1DB128:  ADD             LR, PC, R2; sub_1DC4DC
1DB12C:  LDR             R2, =(sub_1DC23C - 0x1DB144)
1DB130:  LDR             R8, =(sub_1DC49C - 0x1DB14C)
1DB134:  ADD             R9, PC, R9; sub_1DC4C0
1DB138:  LDR             R10, =(loc_1DC26C - 0x1DB154)
1DB13C:  ADD             R6, PC, R2; sub_1DC23C
1DB140:  LDR             R2, =(sub_1DC210 - 0x1DB158)
1DB144:  ADD             R4, PC, R8; sub_1DC49C
1DB148:  STRB            R7, [R0,#0x34]
1DB14C:  ADD             R5, PC, R10; loc_1DC26C
1DB150:  ADD             R7, PC, R2; sub_1DC210
1DB154:  B               loc_1DB1C0
1DB158:  MOVW            R4, #0xCCCD
1DB15C:  LDR             R2, =(sub_1DC7E4 - 0x1DB184)
1DB160:  MOVT            R4, #0x3DCC
1DB164:  LDR             R6, =(sub_1DC6B8 - 0x1DB1A4)
1DB168:  STR             R4, [R0,#0x74]
1DB16C:  MOVW            R5, #0
1DB170:  STR             R4, [R0,#0x70]
1DB174:  MOV             R4, #0x3F000000
1DB178:  LDR             R3, =(sub_1DC7D8 - 0x1DB194)
1DB17C:  ADD             R9, PC, R2; sub_1DC7E4
1DB180:  LDR             R7, =(sub_1DC868 - 0x1DB19C)
1DB184:  MOVT            R5, #0xBF80
1DB188:  STR             R4, [R0,#0x78]
1DB18C:  ADD             R3, PC, R3; sub_1DC7D8
1DB190:  STR             R4, [R0,#0x7C]
1DB194:  ADD             R12, PC, R7; sub_1DC868
1DB198:  LDR             R4, =(sub_1DC7F0 - 0x1DB1B0)
1DB19C:  ADD             R6, PC, R6; sub_1DC6B8
1DB1A0:  LDR             R2, =(sub_1DC6AC - 0x1DB1B8)
1DB1A4:  LDR             R8, =(sub_1DC7D0 - 0x1DB1C0)
1DB1A8:  ADD             LR, PC, R4; sub_1DC7F0
1DB1AC:  LDR             R10, =(loc_1DC6C4 - 0x1DB1C4)
1DB1B0:  ADD             R7, PC, R2; sub_1DC6AC
1DB1B4:  STR             R5, [R0,#0x80]
1DB1B8:  ADD             R4, PC, R8; sub_1DC7D0
1DB1BC:  ADD             R5, PC, R10; loc_1DC6C4
1DB1C0:  ADD             R2, R0, #0xA4
1DB1C4:  STR             R7, [R0,#0x94]
1DB1C8:  STR             R6, [R0,#0x98]
1DB1CC:  STR             R5, [R0,#0x9C]
1DB1D0:  STR             R4, [R0,#0xA0]
1DB1D4:  STM             R2, {R3,R9,LR}
1DB1D8:  STR             R12, [R0,#0xB0]
1DB1DC:  STR             R1, [R0]
1DB1E0:  POP             {R4-R11,PC}
