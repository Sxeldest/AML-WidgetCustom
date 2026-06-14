; =========================================================
; Game Engine Function: sub_154074
; Address            : 0x154074 - 0x15423C
; =========================================================

154074:  PUSH            {R4-R7,LR}
154076:  ADD             R7, SP, #0xC
154078:  PUSH.W          {R8-R11}
15407C:  SUB             SP, SP, #0x14
15407E:  LDR             R4, [R1,#4]
154080:  MOV             R11, R1
154082:  LDRH            R6, [R2]
154084:  STR             R0, [SP,#0x30+var_2C]
154086:  CBZ             R4, loc_1540C0
154088:  MOV.W           R0, #0x55555555
15408C:  MOV.W           R1, #0x33333333
154090:  AND.W           R0, R0, R4,LSR#1
154094:  SUBS            R0, R4, R0
154096:  AND.W           R1, R1, R0,LSR#2
15409A:  BIC.W           R0, R0, #0xCCCCCCCC
15409E:  ADD             R0, R1
1540A0:  MOV.W           R1, #0x1010101
1540A4:  ADD.W           R0, R0, R0,LSR#4
1540A8:  BIC.W           R0, R0, #0xF0F0F0F0
1540AC:  MULS            R0, R1
1540AE:  MOV.W           R10, R0,LSR#24
1540B2:  CMP.W           R10, #1
1540B6:  BHI             loc_1540C2
1540B8:  SUBS            R0, R4, #1
1540BA:  AND.W           R9, R0, R6
1540BE:  B               loc_1540D2
1540C0:  B               loc_154112
1540C2:  CMP             R4, R6
1540C4:  MOV             R9, R6
1540C6:  BHI             loc_1540D2
1540C8:  MOV             R0, R6
1540CA:  MOV             R1, R4
1540CC:  BLX             sub_221798
1540D0:  MOV             R9, R1
1540D2:  LDR.W           R0, [R11]
1540D6:  LDR.W           R5, [R0,R9,LSL#2]
1540DA:  CBZ             R5, loc_154112
1540DC:  SUB.W           R8, R4, #1
1540E0:  LDR             R5, [R5]
1540E2:  CBZ             R5, loc_154112
1540E4:  LDR             R0, [R5,#4]
1540E6:  CMP             R0, R6
1540E8:  BEQ             loc_154106
1540EA:  CMP.W           R10, #1
1540EE:  BHI             loc_1540F6
1540F0:  AND.W           R0, R0, R8
1540F4:  B               loc_154102
1540F6:  CMP             R0, R4
1540F8:  BCC             loc_154102
1540FA:  MOV             R1, R4
1540FC:  BLX             sub_221798
154100:  MOV             R0, R1
154102:  CMP             R0, R9
154104:  BNE             loc_154112
154106:  LDRH            R0, [R5,#8]
154108:  CMP             R0, R6
15410A:  BNE             loc_1540E0
15410C:  MOVS            R0, #0
15410E:  LDR             R6, [SP,#0x30+var_2C]
154110:  B               loc_154230
154112:  MOVS            R0, #0x10; unsigned int
154114:  LDRD.W          R5, R8, [R7,#arg_0]
154118:  BLX             j__Znwj; operator new(uint)
15411C:  LDR.W           R2, [R11,#0xC]
154120:  ADD.W           R10, R11, #8
154124:  LDR             R1, [R5]
154126:  MOV.W           R12, #0
15412A:  ADDS            R2, #1
15412C:  LDR.W           R3, [R8]
154130:  VLDR            S0, [R11,#0x10]
154134:  VMOV            S2, R2
154138:  LDRH            R1, [R1]
15413A:  LDR             R5, [R3]
15413C:  VCVT.F32.U32    S2, S2
154140:  STR.W           R12, [R3]
154144:  STR             R6, [R0,#4]
154146:  STRH            R1, [R0,#8]
154148:  STR.W           R12, [R0]
15414C:  STR             R5, [R0,#0xC]
15414E:  STRD.W          R0, R10, [SP,#0x30+var_28]
154152:  MOV.W           R0, #1
154156:  STRB.W          R0, [SP,#0x30+var_20]
15415A:  CBZ             R4, loc_154176
15415C:  VMOV            S4, R4
154160:  VCVT.F32.U32    S4, S4
154164:  VMUL.F32        S4, S0, S4
154168:  VCMP.F32        S4, S2
15416C:  VMRS            APSR_nzcv, FPSCR
154170:  BMI             loc_154176
154172:  MOV             R6, R9
154174:  B               loc_1541CC
154176:  LSLS            R5, R4, #1
154178:  CMP             R4, #3
15417A:  BCC             loc_154186
15417C:  SUBS            R0, R4, #1
15417E:  ANDS            R4, R0
154180:  IT NE
154182:  MOVNE           R4, #1
154184:  B               loc_154188
154186:  MOVS            R4, #1
154188:  VDIV.F32        S0, S2, S0
15418C:  VMOV            R0, S0; x
154190:  BLX             ceilf
154194:  VMOV            S0, R0
154198:  ORR.W           R1, R4, R5
15419C:  VCVT.U32.F32    S0, S0
1541A0:  VMOV            R0, S0
1541A4:  CMP             R1, R0
1541A6:  IT CC
1541A8:  MOVCC           R1, R0; this
1541AA:  MOV             R0, R11; int
1541AC:  BL              sub_1539B2
1541B0:  LDR.W           R4, [R11,#4]
1541B4:  SUBS            R0, R4, #1
1541B6:  TST             R4, R0
1541B8:  BNE             loc_1541BE
1541BA:  ANDS            R6, R0
1541BC:  B               loc_1541CC
1541BE:  CMP             R4, R6
1541C0:  BHI             loc_1541CC
1541C2:  MOV             R0, R6
1541C4:  MOV             R1, R4
1541C6:  BLX             sub_221798
1541CA:  MOV             R6, R1
1541CC:  LDR.W           R0, [R11]
1541D0:  LDR.W           R0, [R0,R6,LSL#2]
1541D4:  CBZ             R0, loc_1541E4
1541D6:  LDR             R1, [SP,#0x30+var_28]
1541D8:  LDR             R2, [R0]
1541DA:  LDR             R6, [SP,#0x30+var_2C]
1541DC:  STR             R2, [R1]
1541DE:  LDR             R1, [SP,#0x30+var_28]
1541E0:  STR             R1, [R0]
1541E2:  B               loc_154222
1541E4:  LDR             R0, [SP,#0x30+var_28]
1541E6:  LDR.W           R1, [R11,#8]
1541EA:  STR             R1, [R0]
1541EC:  LDR.W           R0, [R11]
1541F0:  LDR             R1, [SP,#0x30+var_28]
1541F2:  STR.W           R1, [R11,#8]
1541F6:  STR.W           R10, [R0,R6,LSL#2]
1541FA:  LDR             R5, [SP,#0x30+var_28]
1541FC:  LDR             R6, [SP,#0x30+var_2C]
1541FE:  LDR             R0, [R5]
154200:  CBZ             R0, loc_154222
154202:  LDR             R0, [R0,#4]
154204:  SUBS            R1, R4, #1
154206:  TST             R4, R1
154208:  BNE             loc_15420E
15420A:  ANDS            R0, R1
15420C:  B               loc_15421A
15420E:  CMP             R0, R4
154210:  BCC             loc_15421A
154212:  MOV             R1, R4
154214:  BLX             sub_221798
154218:  MOV             R0, R1
15421A:  LDR.W           R1, [R11]
15421E:  STR.W           R5, [R1,R0,LSL#2]
154222:  LDR.W           R0, [R11,#0xC]
154226:  LDR             R5, [SP,#0x30+var_28]
154228:  ADDS            R0, #1
15422A:  STR.W           R0, [R11,#0xC]
15422E:  MOVS            R0, #1
154230:  STRB            R0, [R6,#4]
154232:  STR             R5, [R6]
154234:  ADD             SP, SP, #0x14
154236:  POP.W           {R8-R11}
15423A:  POP             {R4-R7,PC}
