; =========================================================
; Game Engine Function: _Z27RQ_Command_rqDrawNonIndexedRPc
; Address            : 0x1CC0E8 - 0x1CC156
; =========================================================

1CC0E8:  PUSH            {R4-R7,LR}
1CC0EA:  ADD             R7, SP, #0xC
1CC0EC:  PUSH.W          {R11}
1CC0F0:  LDR             R1, [R0]
1CC0F2:  ADDS            R3, R1, #4
1CC0F4:  MOV             R2, R1
1CC0F6:  LDR.W           R6, [R2],#0xC
1CC0FA:  STR             R3, [R0]
1CC0FC:  ADD.W           R3, R1, #8
1CC100:  LDR             R5, [R1,#4]
1CC102:  STR             R3, [R0]
1CC104:  LDR             R4, [R1,#8]
1CC106:  STR             R2, [R0]
1CC108:  BLX             j__Z21ES2BindActiveTexturesv; ES2BindActiveTextures(void)
1CC10C:  CMP             R6, #5; switch 6 cases
1CC10E:  BHI             def_1CC110; jumptable 001CC110 default case
1CC110:  TBB.W           [PC,R6]; switch jump
1CC114:  DCB 3; jump table for switch statement
1CC115:  DCB 5
1CC116:  DCB 7
1CC117:  DCB 9
1CC118:  DCB 0x16
1CC119:  DCB 0x18
1CC11A:  MOVS            R0, #4; jumptable 001CC110 case 0
1CC11C:  B               loc_1CC146
1CC11E:  MOVS            R0, #5; jumptable 001CC110 case 1
1CC120:  B               loc_1CC146
1CC122:  MOVS            R0, #6; jumptable 001CC110 case 2
1CC124:  B               loc_1CC146
1CC126:  CBZ             R4, def_1CC110; jumptable 001CC110 case 3
1CC128:  MOVS            R6, #0
1CC12A:  ADDS            R1, R5, R6; first
1CC12C:  MOVS            R0, #6; mode
1CC12E:  MOVS            R2, #4; count
1CC130:  BLX             glDrawArrays
1CC134:  ADDS            R6, #4
1CC136:  CMP             R6, R4
1CC138:  BCC             loc_1CC12A
1CC13A:  POP.W           {R11}; jumptable 001CC110 default case
1CC13E:  POP             {R4-R7,PC}
1CC140:  MOVS            R0, #1; jumptable 001CC110 case 4
1CC142:  B               loc_1CC146
1CC144:  MOVS            R0, #3; jumptable 001CC110 case 5
1CC146:  MOV             R1, R5; first
1CC148:  MOV             R2, R4; count
1CC14A:  POP.W           {R11}
1CC14E:  POP.W           {R4-R7,LR}
1CC152:  B.W             j_glDrawArrays
