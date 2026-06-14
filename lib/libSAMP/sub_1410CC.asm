; =========================================================
; Game Engine Function: sub_1410CC
; Address            : 0x1410CC - 0x14114E
; =========================================================

1410CC:  PUSH            {R4-R7,LR}
1410CE:  ADD             R7, SP, #0xC
1410D0:  PUSH.W          {R11}
1410D4:  MOV             R4, R0
1410D6:  LDR             R0, =(off_23496C - 0x1410DC)
1410D8:  ADD             R0, PC; off_23496C
1410DA:  LDR             R0, [R0]; dword_23DEF4
1410DC:  LDR             R0, [R0]
1410DE:  LDR.W           R0, [R0,#0x3B0]
1410E2:  LDR             R6, [R0,#4]
1410E4:  MOV             R0, R6
1410E6:  BL              sub_1501BC
1410EA:  MOV             R5, R0
1410EC:  LSRS            R0, R0, #4
1410EE:  CMP             R0, #0x7C ; '|'
1410F0:  BHI             loc_141144
1410F2:  MOV             R0, R6
1410F4:  MOV             R1, R5
1410F6:  BL              sub_F2396
1410FA:  CBZ             R0, loc_141144
1410FC:  LDR.W           R6, [R6,R5,LSL#2]
141100:  CBZ             R6, loc_141144
141102:  MOV             R0, R6
141104:  BL              sub_F8E1C
141108:  VMOV.F32        S0, #8.0
14110C:  VMOV            S2, R0
141110:  VCMP.F32        S2, S0
141114:  VMRS            APSR_nzcv, FPSCR
141118:  BPL             loc_141144
14111A:  LDR             R0, [R4,#0x1C]
14111C:  BL              sub_104648
141120:  CMP             R0, #0x2E ; '.'
141122:  BNE             loc_14112E
141124:  LDR             R0, [R4,#0x1C]
141126:  MOVS            R1, #0
141128:  MOVS            R2, #0
14112A:  BL              sub_10479C
14112E:  LDR             R0, [R4,#0x1C]
141130:  MOVS            R2, #1
141132:  LDR             R1, [R6,#8]
141134:  MOVS            R4, #1
141136:  BL              sub_105378
14113A:  MOV             R1, R5
14113C:  MOVS            R2, #1
14113E:  BL              sub_141154
141142:  B               loc_141146
141144:  MOVS            R4, #0
141146:  MOV             R0, R4
141148:  POP.W           {R11}
14114C:  POP             {R4-R7,PC}
