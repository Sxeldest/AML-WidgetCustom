; =========================================================
; Game Engine Function: sub_15B0DA
; Address            : 0x15B0DA - 0x15B12E
; =========================================================

15B0DA:  PUSH            {R4-R7,LR}
15B0DC:  ADD             R7, SP, #0xC
15B0DE:  PUSH.W          {R11}
15B0E2:  SUB             SP, SP, #8
15B0E4:  MOV             R6, R1
15B0E6:  SUB.W           R1, R7, #-var_12; int
15B0EA:  MOV             R4, R0
15B0EC:  MOVS            R5, #0
15B0EE:  MOV             R0, R6; int
15B0F0:  MOVS            R2, #0x10
15B0F2:  MOVS            R3, #1
15B0F4:  STRH.W          R5, [R7,#var_12]
15B0F8:  BL              sub_17D786
15B0FC:  LDR             R1, [R6]
15B0FE:  LDR             R0, [R6,#8]
15B100:  CMP             R0, R1
15B102:  BGE             loc_15B11A
15B104:  LDR             R1, [R6,#0xC]
15B106:  ASRS            R2, R0, #3
15B108:  LDRB            R1, [R1,R2]
15B10A:  ADDS            R2, R0, #1
15B10C:  AND.W           R0, R0, #7
15B110:  STR             R2, [R6,#8]
15B112:  LSL.W           R0, R1, R0
15B116:  UXTB            R0, R0
15B118:  LSRS            R5, R0, #7
15B11A:  LDRH.W          R2, [R7,#var_12]
15B11E:  MOV             R1, R5
15B120:  LDR             R0, [R4,#0x58]
15B122:  BL              sub_1525E0
15B126:  ADD             SP, SP, #8
15B128:  POP.W           {R11}
15B12C:  POP             {R4-R7,PC}
