; =========================================================
; Game Engine Function: sub_FD040
; Address            : 0xFD040 - 0xFD1C2
; =========================================================

FD040:  PUSH            {R4-R7,LR}
FD042:  ADD             R7, SP, #0xC
FD044:  PUSH.W          {R8-R11}
FD048:  SUB             SP, SP, #0x14
FD04A:  MOV             R6, R0
FD04C:  LDR             R0, =(dword_2474EC - 0xFD056)
FD04E:  MOV             R4, R3
FD050:  MOV             R5, R2
FD052:  ADD             R0, PC; dword_2474EC
FD054:  MOV             R8, R1
FD056:  STRD.W          R2, R3, [R0]
FD05A:  BL              sub_F9B64
FD05E:  CBNZ            R0, loc_FD08C
FD060:  LDR             R0, =(off_234A24 - 0xFD066)
FD062:  ADD             R0, PC; off_234A24
FD064:  LDR             R0, [R0]; dword_23DEEC
FD066:  LDR             R0, [R0]
FD068:  CBZ             R0, loc_FD08C
FD06A:  LDR.W           R9, [R0,#0x58]
FD06E:  LDR             R1, [R0,#0x68]
FD070:  CMP.W           R9, #0
FD074:  ITT NE
FD076:  LDRBNE.W        R2, [R9,#0x50]
FD07A:  CMPNE           R2, #0
FD07C:  BNE             loc_FD086
FD07E:  CBZ             R1, loc_FD0A8
FD080:  LDRB.W          R1, [R1,#0x50]
FD084:  CBZ             R1, loc_FD0A8
FD086:  MOV.W           R11, #0
FD08A:  B               loc_FD0AC
FD08C:  LDR             R0, =(off_2474FC - 0xFD098)
FD08E:  MOV             R1, R8
FD090:  MOV             R2, R5
FD092:  MOV             R3, R4
FD094:  ADD             R0, PC; off_2474FC
FD096:  LDR.W           R12, [R0]
FD09A:  MOV             R0, R6
FD09C:  ADD             SP, SP, #0x14
FD09E:  POP.W           {R8-R11}
FD0A2:  POP.W           {R4-R7,LR}
FD0A6:  BX              R12
FD0A8:  MOV.W           R11, #1
FD0AC:  CMP             R6, #3
FD0AE:  BEQ             loc_FD0C6
FD0B0:  CMP             R6, #2
FD0B2:  BEQ             loc_FD0D4
FD0B4:  CMP             R6, #1
FD0B6:  BNE             loc_FD0FA
FD0B8:  VMOV            S0, R4
FD0BC:  LDR             R1, [R0]
FD0BE:  VMOV            S2, R5
FD0C2:  MOVS            R2, #2
FD0C4:  B               loc_FD0E0
FD0C6:  VMOV            S0, R4
FD0CA:  LDR             R1, [R0]
FD0CC:  VMOV            S2, R5
FD0D0:  MOVS            R2, #1
FD0D2:  B               loc_FD0E0
FD0D4:  VMOV            S0, R4
FD0D8:  LDR             R1, [R0]
FD0DA:  VMOV            S2, R5
FD0DE:  MOVS            R2, #0
FD0E0:  VCVT.F32.S32    S0, S0
FD0E4:  VCVT.F32.S32    S2, S2
FD0E8:  VSTR            S0, [SP,#0x30+var_28]
FD0EC:  VSTR            S2, [SP,#0x30+var_2C]
FD0F0:  LDR             R3, [R1]
FD0F2:  ADD             R1, SP, #0x30+var_2C
FD0F4:  BLX             R3
FD0F6:  MOV             R10, R0
FD0F8:  B               loc_FD0FE
FD0FA:  MOV.W           R10, #0
FD0FE:  LDR             R0, =(off_23496C - 0xFD104)
FD100:  ADD             R0, PC; off_23496C
FD102:  LDR             R0, [R0]; dword_23DEF4
FD104:  LDR             R0, [R0]
FD106:  CMP             R0, #0
FD108:  MOV             R1, R0
FD10A:  IT NE
FD10C:  MOVNE           R1, #1
FD10E:  AND.W           R1, R1, R11
FD112:  CMP             R1, #1
FD114:  BNE             loc_FD134
FD116:  LDR.W           R0, [R0,#0x3B0]
FD11A:  LDR             R0, [R0,#0x18]; int
FD11C:  CBZ             R0, loc_FD134
FD11E:  MOV             R2, R8
FD120:  MOV             R1, R6; int
FD122:  MOV             R3, R5; int
FD124:  STR             R4, [SP,#0x30+var_30]; float
FD126:  CMP.W           R8, #0
FD12A:  IT NE
FD12C:  MOVNE           R2, #1; int
FD12E:  BL              sub_14F534
FD132:  CBZ             R0, loc_FD19E
FD134:  CMP.W           R10, #0
FD138:  BNE             loc_FD19E
FD13A:  CMP.W           R9, #0
FD13E:  BEQ             loc_FD158
FD140:  MOV             R2, R8
FD142:  MOV             R0, R9
FD144:  MOV             R1, R6
FD146:  MOV             R3, R5
FD148:  STR             R4, [SP,#0x30+var_30]
FD14A:  CMP.W           R8, #0
FD14E:  IT NE
FD150:  MOVNE           R2, #1
FD152:  BL              sub_1308D0
FD156:  CBZ             R0, loc_FD19E
FD158:  ADD             R0, SP, #0x30+var_2C
FD15A:  STRD.W          R5, R4, [SP,#0x30+var_24]
FD15E:  STRD.W          R6, R8, [SP,#0x30+var_2C]
FD162:  BL              sub_FA4BC
FD166:  CBZ             R0, loc_FD17E
FD168:  LDR             R0, =(dword_2473C8 - 0xFD172)
FD16A:  ADD.W           R9, SP, #0x30+var_2C
FD16E:  ADD             R0, PC; dword_2473C8
FD170:  MOV             R1, R9
FD172:  BL              sub_FD1E4
FD176:  MOV             R0, R9
FD178:  BL              sub_FA4BC
FD17C:  CBZ             R0, loc_FD1BA
FD17E:  LDR             R0, =(off_234970 - 0xFD186)
FD180:  LDR             R1, =(off_2474FC - 0xFD188)
FD182:  ADD             R0, PC; off_234970
FD184:  ADD             R1, PC; off_2474FC
FD186:  LDR             R0, [R0]; dword_23DEF0
FD188:  LDR.W           R12, [R1]
FD18C:  LDR             R0, [R0]
FD18E:  LDRB.W          R0, [R0,#0x54]
FD192:  CBZ             R0, loc_FD1B0
FD194:  MOV             R0, R6
FD196:  MOV             R1, R8
FD198:  MOV             R2, R5
FD19A:  MOV             R3, R4
FD19C:  B               loc_FD1B8
FD19E:  LDR             R0, =(off_2474FC - 0xFD1AA)
FD1A0:  MOVS            R1, #0
FD1A2:  MOVS            R2, #0
FD1A4:  MOVS            R3, #0
FD1A6:  ADD             R0, PC; off_2474FC
FD1A8:  LDR             R6, [R0]
FD1AA:  MOVS            R0, #1
FD1AC:  BLX             R6
FD1AE:  B               loc_FD1BA
FD1B0:  MOVS            R0, #1
FD1B2:  MOVS            R1, #0
FD1B4:  MOVS            R2, #0
FD1B6:  MOVS            R3, #0
FD1B8:  BLX             R12
FD1BA:  ADD             SP, SP, #0x14
FD1BC:  POP.W           {R8-R11}
FD1C0:  POP             {R4-R7,PC}
