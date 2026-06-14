; =========================================================
; Game Engine Function: sub_15106E
; Address            : 0x15106E - 0x151236
; =========================================================

15106E:  PUSH            {R4-R7,LR}
151070:  ADD             R7, SP, #0xC
151072:  PUSH.W          {R8-R11}
151076:  SUB             SP, SP, #0x14
151078:  LDR             R4, [R1,#4]
15107A:  MOV             R11, R1
15107C:  LDRH            R6, [R2]
15107E:  STR             R0, [SP,#0x30+var_2C]
151080:  CBZ             R4, loc_1510BA
151082:  MOV.W           R0, #0x55555555
151086:  MOV.W           R1, #0x33333333
15108A:  AND.W           R0, R0, R4,LSR#1
15108E:  SUBS            R0, R4, R0
151090:  AND.W           R1, R1, R0,LSR#2
151094:  BIC.W           R0, R0, #0xCCCCCCCC
151098:  ADD             R0, R1
15109A:  MOV.W           R1, #0x1010101
15109E:  ADD.W           R0, R0, R0,LSR#4
1510A2:  BIC.W           R0, R0, #0xF0F0F0F0
1510A6:  MULS            R0, R1
1510A8:  MOV.W           R10, R0,LSR#24
1510AC:  CMP.W           R10, #1
1510B0:  BHI             loc_1510BC
1510B2:  SUBS            R0, R4, #1
1510B4:  AND.W           R9, R0, R6
1510B8:  B               loc_1510CC
1510BA:  B               loc_15110C
1510BC:  CMP             R4, R6
1510BE:  MOV             R9, R6
1510C0:  BHI             loc_1510CC
1510C2:  MOV             R0, R6
1510C4:  MOV             R1, R4
1510C6:  BLX             sub_221798
1510CA:  MOV             R9, R1
1510CC:  LDR.W           R0, [R11]
1510D0:  LDR.W           R5, [R0,R9,LSL#2]
1510D4:  CBZ             R5, loc_15110C
1510D6:  SUB.W           R8, R4, #1
1510DA:  LDR             R5, [R5]
1510DC:  CBZ             R5, loc_15110C
1510DE:  LDR             R0, [R5,#4]
1510E0:  CMP             R0, R6
1510E2:  BEQ             loc_151100
1510E4:  CMP.W           R10, #1
1510E8:  BHI             loc_1510F0
1510EA:  AND.W           R0, R0, R8
1510EE:  B               loc_1510FC
1510F0:  CMP             R0, R4
1510F2:  BCC             loc_1510FC
1510F4:  MOV             R1, R4
1510F6:  BLX             sub_221798
1510FA:  MOV             R0, R1
1510FC:  CMP             R0, R9
1510FE:  BNE             loc_15110C
151100:  LDRH            R0, [R5,#8]
151102:  CMP             R0, R6
151104:  BNE             loc_1510DA
151106:  MOVS            R0, #0
151108:  LDR             R6, [SP,#0x30+var_2C]
15110A:  B               loc_15122A
15110C:  MOVS            R0, #0x10; unsigned int
15110E:  LDRD.W          R5, R8, [R7,#arg_0]
151112:  BLX             j__Znwj; operator new(uint)
151116:  LDR.W           R2, [R11,#0xC]
15111A:  ADD.W           R10, R11, #8
15111E:  LDR             R1, [R5]
151120:  MOV.W           R12, #0
151124:  ADDS            R2, #1
151126:  LDR.W           R3, [R8]
15112A:  VLDR            S0, [R11,#0x10]
15112E:  VMOV            S2, R2
151132:  LDRH            R1, [R1]
151134:  LDR             R5, [R3]
151136:  VCVT.F32.U32    S2, S2
15113A:  STR.W           R12, [R3]
15113E:  STR             R6, [R0,#4]
151140:  STRH            R1, [R0,#8]
151142:  STR.W           R12, [R0]
151146:  STR             R5, [R0,#0xC]
151148:  STRD.W          R0, R10, [SP,#0x30+var_28]
15114C:  MOV.W           R0, #1
151150:  STRB.W          R0, [SP,#0x30+var_20]
151154:  CBZ             R4, loc_151170
151156:  VMOV            S4, R4
15115A:  VCVT.F32.U32    S4, S4
15115E:  VMUL.F32        S4, S0, S4
151162:  VCMP.F32        S4, S2
151166:  VMRS            APSR_nzcv, FPSCR
15116A:  BMI             loc_151170
15116C:  MOV             R6, R9
15116E:  B               loc_1511C6
151170:  LSLS            R5, R4, #1
151172:  CMP             R4, #3
151174:  BCC             loc_151180
151176:  SUBS            R0, R4, #1
151178:  ANDS            R4, R0
15117A:  IT NE
15117C:  MOVNE           R4, #1
15117E:  B               loc_151182
151180:  MOVS            R4, #1
151182:  VDIV.F32        S0, S2, S0
151186:  VMOV            R0, S0; x
15118A:  BLX             ceilf
15118E:  VMOV            S0, R0
151192:  ORR.W           R1, R4, R5
151196:  VCVT.U32.F32    S0, S0
15119A:  VMOV            R0, S0
15119E:  CMP             R1, R0
1511A0:  IT CC
1511A2:  MOVCC           R1, R0; this
1511A4:  MOV             R0, R11; int
1511A6:  BL              sub_15124A
1511AA:  LDR.W           R4, [R11,#4]
1511AE:  SUBS            R0, R4, #1
1511B0:  TST             R4, R0
1511B2:  BNE             loc_1511B8
1511B4:  ANDS            R6, R0
1511B6:  B               loc_1511C6
1511B8:  CMP             R4, R6
1511BA:  BHI             loc_1511C6
1511BC:  MOV             R0, R6
1511BE:  MOV             R1, R4
1511C0:  BLX             sub_221798
1511C4:  MOV             R6, R1
1511C6:  LDR.W           R0, [R11]
1511CA:  LDR.W           R0, [R0,R6,LSL#2]
1511CE:  CBZ             R0, loc_1511DE
1511D0:  LDR             R1, [SP,#0x30+var_28]
1511D2:  LDR             R2, [R0]
1511D4:  LDR             R6, [SP,#0x30+var_2C]
1511D6:  STR             R2, [R1]
1511D8:  LDR             R1, [SP,#0x30+var_28]
1511DA:  STR             R1, [R0]
1511DC:  B               loc_15121C
1511DE:  LDR             R0, [SP,#0x30+var_28]
1511E0:  LDR.W           R1, [R11,#8]
1511E4:  STR             R1, [R0]
1511E6:  LDR.W           R0, [R11]
1511EA:  LDR             R1, [SP,#0x30+var_28]
1511EC:  STR.W           R1, [R11,#8]
1511F0:  STR.W           R10, [R0,R6,LSL#2]
1511F4:  LDR             R5, [SP,#0x30+var_28]
1511F6:  LDR             R6, [SP,#0x30+var_2C]
1511F8:  LDR             R0, [R5]
1511FA:  CBZ             R0, loc_15121C
1511FC:  LDR             R0, [R0,#4]
1511FE:  SUBS            R1, R4, #1
151200:  TST             R4, R1
151202:  BNE             loc_151208
151204:  ANDS            R0, R1
151206:  B               loc_151214
151208:  CMP             R0, R4
15120A:  BCC             loc_151214
15120C:  MOV             R1, R4
15120E:  BLX             sub_221798
151212:  MOV             R0, R1
151214:  LDR.W           R1, [R11]
151218:  STR.W           R5, [R1,R0,LSL#2]
15121C:  LDR.W           R0, [R11,#0xC]
151220:  LDR             R5, [SP,#0x30+var_28]
151222:  ADDS            R0, #1
151224:  STR.W           R0, [R11,#0xC]
151228:  MOVS            R0, #1
15122A:  STRB            R0, [R6,#4]
15122C:  STR             R5, [R6]
15122E:  ADD             SP, SP, #0x14
151230:  POP.W           {R8-R11}
151234:  POP             {R4-R7,PC}
