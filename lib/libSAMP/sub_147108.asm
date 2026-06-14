; =========================================================
; Game Engine Function: sub_147108
; Address            : 0x147108 - 0x1471BA
; =========================================================

147108:  PUSH            {R4,R6,R7,LR}
14710A:  ADD             R7, SP, #8
14710C:  SUB             SP, SP, #0x120
14710E:  LDRD.W          R1, R0, [R0]; src
147112:  MOVS            R3, #0
147114:  ASRS            R2, R0, #0x1F
147116:  ADD.W           R0, R0, R2,LSR#29
14711A:  MOVS            R2, #1
14711C:  ADD.W           R2, R2, R0,ASR#3; size
147120:  ADD             R0, SP, #0x128+var_124; int
147122:  BL              sub_17D4F2
147126:  SUB.W           R1, R7, #-var_A; int
14712A:  MOVS            R2, #0x10
14712C:  MOVS            R3, #1
14712E:  BL              sub_17D786
147132:  ADD             R0, SP, #0x128+var_124; int
147134:  ADD             R1, SP, #0x128+var_C; int
147136:  MOVS            R2, #0x10
147138:  MOVS            R3, #1
14713A:  BL              sub_17D786
14713E:  ADD             R0, SP, #0x128+var_124; int
147140:  SUB.W           R1, R7, #-var_D; int
147144:  MOVS            R2, #8
147146:  MOVS            R3, #1
147148:  BL              sub_17D786
14714C:  LDRB.W          R0, [R7,#var_D]
147150:  CBZ             R0, loc_147158
147152:  MOVS            R0, #1
147154:  STRB.W          R0, [R7,#var_D]
147158:  LDRH.W          R0, [R7,#var_A]
14715C:  CMP.W           R0, #0x3EC
147160:  BHI             loc_1471B0
147162:  LDR             R1, =(off_23496C - 0x147168)
147164:  ADD             R1, PC; off_23496C
147166:  LDR             R1, [R1]; dword_23DEF4
147168:  LDR             R1, [R1]
14716A:  LDR.W           R1, [R1,#0x3B0]
14716E:  LDR             R1, [R1]
147170:  ADDS            R2, R1, R0
147172:  LDRB.W          R2, [R2,#0xFB4]
147176:  CBZ             R2, loc_1471B0
147178:  ADD.W           R0, R1, R0,LSL#2
14717C:  LDR             R0, [R0,#4]
14717E:  CBZ             R0, loc_1471B0
147180:  LDR             R4, [R0]
147182:  CBZ             R4, loc_1471B0
147184:  MOV             R0, R4
147186:  BL              sub_14B4F8
14718A:  VMOV            S0, R0
14718E:  VLDR            S2, =200.0
147192:  VCMP.F32        S0, S2
147196:  VMRS            APSR_nzcv, FPSCR
14719A:  BPL             loc_1471B0
14719C:  LDRH.W          R1, [SP,#0x128+var_C]
1471A0:  LDRB.W          R2, [R7,#var_D]
1471A4:  MOV             R0, R4
1471A6:  CMP             R2, #0
1471A8:  IT NE
1471AA:  MOVNE           R2, #1
1471AC:  BL              sub_14B530
1471B0:  ADD             R0, SP, #0x128+var_124
1471B2:  BL              sub_17D542
1471B6:  ADD             SP, SP, #0x120
1471B8:  POP             {R4,R6,R7,PC}
