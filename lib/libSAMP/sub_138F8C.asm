; =========================================================
; Game Engine Function: sub_138F8C
; Address            : 0x138F8C - 0x139150
; =========================================================

138F8C:  PUSH            {R4-R7,LR}
138F8E:  ADD             R7, SP, #0xC
138F90:  PUSH.W          {R8-R11}
138F94:  SUB             SP, SP, #0xC
138F96:  LDR.W           R10, [R1,#4]
138F9A:  MOV             R5, R3
138F9C:  LDRB            R4, [R2]
138F9E:  MOV             R9, R1
138FA0:  MOV             R8, R0
138FA2:  CMP.W           R10, #0
138FA6:  BEQ             loc_138FE8
138FA8:  MOV.W           R0, #0x55555555
138FAC:  MOV.W           R1, #0x33333333
138FB0:  AND.W           R0, R0, R10,LSR#1
138FB4:  STRD.W          R5, R8, [SP,#0x28+var_24]
138FB8:  SUB.W           R0, R10, R0
138FBC:  AND.W           R1, R1, R0,LSR#2
138FC0:  BIC.W           R0, R0, #0xCCCCCCCC
138FC4:  ADD             R0, R1
138FC6:  MOV.W           R1, #0x1010101
138FCA:  ADD.W           R0, R0, R0,LSR#4
138FCE:  BIC.W           R0, R0, #0xF0F0F0F0
138FD2:  MULS            R0, R1
138FD4:  MOV.W           R8, R0,LSR#24
138FD8:  CMP.W           R8, #1
138FDC:  BHI             loc_138FEA
138FDE:  SUB.W           R0, R10, #1
138FE2:  AND.W           R11, R0, R4
138FE6:  B               loc_138FFA
138FE8:  B               loc_13903E
138FEA:  CMP             R10, R4
138FEC:  MOV             R11, R4
138FEE:  BHI             loc_138FFA
138FF0:  MOV             R0, R4
138FF2:  MOV             R1, R10
138FF4:  BLX             sub_221798
138FF8:  MOV             R11, R1
138FFA:  LDR.W           R0, [R9]
138FFE:  LDR.W           R6, [R0,R11,LSL#2]
139002:  CBZ             R6, loc_13903A
139004:  SUB.W           R5, R10, #1
139008:  LDR             R6, [R6]
13900A:  CBZ             R6, loc_13903A
13900C:  LDR             R0, [R6,#4]
13900E:  CMP             R0, R4
139010:  BEQ             loc_13902C
139012:  CMP.W           R8, #1
139016:  BHI             loc_13901C
139018:  ANDS            R0, R5
13901A:  B               loc_139028
13901C:  CMP             R0, R10
13901E:  BCC             loc_139028
139020:  MOV             R1, R10
139022:  BLX             sub_221798
139026:  MOV             R0, R1
139028:  CMP             R0, R11
13902A:  BNE             loc_13903A
13902C:  LDRB            R0, [R6,#8]
13902E:  CMP             R0, R4
139030:  BNE             loc_139008
139032:  MOVS            R0, #0
139034:  LDR.W           R8, [SP,#0x28+var_20]
139038:  B               loc_139140
13903A:  LDRD.W          R5, R8, [SP,#0x28+var_24]
13903E:  MOVS            R0, #0x10; unsigned int
139040:  BLX             j__Znwj; operator new(uint)
139044:  MOV             R6, R0
139046:  LDR.W           R0, [R9,#0xC]
13904A:  VLDR            S0, [R9,#0x10]
13904E:  MOVS            R2, #0
139050:  ADDS            R0, #1
139052:  CMP.W           R10, #0
139056:  STRD.W          R2, R4, [R6]
13905A:  VMOV            S2, R0
13905E:  LDRD.W          R0, R1, [R5]
139062:  STRD.W          R0, R1, [R6,#8]
139066:  VCVT.F32.U32    S2, S2
13906A:  BEQ             loc_139086
13906C:  VMOV            S4, R10
139070:  VCVT.F32.U32    S4, S4
139074:  VMUL.F32        S4, S0, S4
139078:  VCMP.F32        S4, S2
13907C:  VMRS            APSR_nzcv, FPSCR
139080:  BMI             loc_139086
139082:  MOV             R4, R11
139084:  B               loc_1390EC
139086:  MOV             R11, R8
139088:  MOV.W           R8, R10,LSL#1
13908C:  CMP.W           R10, #3
139090:  BCC             loc_1390A0
139092:  SUB.W           R0, R10, #1
139096:  ANDS.W          R5, R10, R0
13909A:  IT NE
13909C:  MOVNE           R5, #1
13909E:  B               loc_1390A2
1390A0:  MOVS            R5, #1
1390A2:  VDIV.F32        S0, S2, S0
1390A6:  VMOV            R0, S0; x
1390AA:  BLX             ceilf
1390AE:  VMOV            S0, R0
1390B2:  ORR.W           R1, R5, R8
1390B6:  VCVT.U32.F32    S0, S0
1390BA:  VMOV            R0, S0
1390BE:  CMP             R1, R0
1390C0:  IT CC
1390C2:  MOVCC           R1, R0; this
1390C4:  MOV             R0, R9; int
1390C6:  BL              sub_13915A
1390CA:  LDR.W           R10, [R9,#4]
1390CE:  MOV             R8, R11
1390D0:  SUB.W           R0, R10, #1
1390D4:  TST.W           R10, R0
1390D8:  BNE             loc_1390DE
1390DA:  ANDS            R4, R0
1390DC:  B               loc_1390EC
1390DE:  CMP             R10, R4
1390E0:  BHI             loc_1390EC
1390E2:  MOV             R0, R4
1390E4:  MOV             R1, R10
1390E6:  BLX             sub_221798
1390EA:  MOV             R4, R1
1390EC:  LDR.W           R0, [R9]
1390F0:  LDR.W           R1, [R0,R4,LSL#2]
1390F4:  CBZ             R1, loc_1390FE
1390F6:  LDR             R0, [R1]
1390F8:  STR             R0, [R6]
1390FA:  STR             R6, [R1]
1390FC:  B               loc_139134
1390FE:  MOV             R1, R9
139100:  LDR.W           R2, [R1,#8]!
139104:  STR             R2, [R6]
139106:  STR             R6, [R1]
139108:  STR.W           R1, [R0,R4,LSL#2]
13910C:  LDR             R0, [R6]
13910E:  CBZ             R0, loc_139134
139110:  LDR             R0, [R0,#4]
139112:  SUB.W           R1, R10, #1
139116:  TST.W           R10, R1
13911A:  BNE             loc_139120
13911C:  ANDS            R0, R1
13911E:  B               loc_13912C
139120:  CMP             R0, R10
139122:  BCC             loc_13912C
139124:  MOV             R1, R10
139126:  BLX             sub_221798
13912A:  MOV             R0, R1
13912C:  LDR.W           R1, [R9]
139130:  STR.W           R6, [R1,R0,LSL#2]
139134:  LDR.W           R0, [R9,#0xC]
139138:  ADDS            R0, #1
13913A:  STR.W           R0, [R9,#0xC]
13913E:  MOVS            R0, #1
139140:  STRB.W          R0, [R8,#4]
139144:  STR.W           R6, [R8]
139148:  ADD             SP, SP, #0xC
13914A:  POP.W           {R8-R11}
13914E:  POP             {R4-R7,PC}
