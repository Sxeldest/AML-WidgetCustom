; =========================================================
; Game Engine Function: sub_1430C8
; Address            : 0x1430C8 - 0x14313C
; =========================================================

1430C8:  PUSH            {R4,R6,R7,LR}
1430CA:  ADD             R7, SP, #8
1430CC:  SUB             SP, SP, #0x130
1430CE:  LDR             R2, [R1,#0xC]; size
1430D0:  MOV             R4, R0
1430D2:  LDR             R1, [R1,#0x14]; src
1430D4:  ADD             R0, SP, #0x138+var_11C; int
1430D6:  MOVS            R3, #0
1430D8:  BL              sub_17D4F2
1430DC:  LDR.W           R0, [R4,#0x218]
1430E0:  CMP             R0, #5
1430E2:  BNE             loc_143132
1430E4:  ADD             R0, SP, #0x138+var_11C; int
1430E6:  ADD.W           R1, SP, #0x138+var_11D; int
1430EA:  MOVS            R2, #8
1430EC:  MOVS            R3, #1
1430EE:  BL              sub_17D786
1430F2:  ADD             R0, SP, #0x138+var_11C; int
1430F4:  ADD             R1, SP, #0x138+var_120; int
1430F6:  MOVS            R2, #0x10
1430F8:  MOVS            R3, #1
1430FA:  BL              sub_17D786
1430FE:  ADD             R0, SP, #0x138+var_11C; int
143100:  MOV             R1, SP; dest
143102:  MOVS            R2, #0x18
143104:  BL              sub_17D744
143108:  LDRH.W          R0, [SP,#0x138+var_120]
14310C:  CMP.W           R0, #0x3EC
143110:  BHI             loc_143132
143112:  LDR.W           R1, [R4,#0x3B0]
143116:  LDR             R1, [R1]
143118:  ADDS            R2, R1, R0
14311A:  LDRB.W          R2, [R2,#0xFB4]
14311E:  CBZ             R2, loc_143132
143120:  ADD.W           R0, R1, R0,LSL#2
143124:  LDR             R0, [R0,#4]
143126:  CBZ             R0, loc_143132
143128:  LDR             R0, [R0]
14312A:  CBZ             R0, loc_143132
14312C:  MOV             R1, SP
14312E:  BL              sub_14ABC8
143132:  ADD             R0, SP, #0x138+var_11C
143134:  BL              sub_17D542
143138:  ADD             SP, SP, #0x130
14313A:  POP             {R4,R6,R7,PC}
