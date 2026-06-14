; =========================================================
; Game Engine Function: sub_12E0BA
; Address            : 0x12E0BA - 0x12E104
; =========================================================

12E0BA:  PUSH            {R4-R7,LR}
12E0BC:  ADD             R7, SP, #0xC
12E0BE:  PUSH.W          {R11}
12E0C2:  SUB             SP, SP, #8
12E0C4:  MOV             R4, R0
12E0C6:  LDR             R0, [R0]
12E0C8:  LDR             R0, [R0]
12E0CA:  DMB.W           ISH
12E0CE:  CMP             R0, #1
12E0D0:  BEQ             loc_12E0F8
12E0D2:  LDR             R0, [R4]
12E0D4:  MOV             R5, SP
12E0D6:  MOVS            R2, #0
12E0D8:  MOVS            R6, #0
12E0DA:  ADDS            R1, R0, #4
12E0DC:  MOV             R0, R5
12E0DE:  BL              sub_12E104
12E0E2:  LDR             R0, [SP,#0x18+var_18]
12E0E4:  LDR             R1, [R4]
12E0E6:  STR             R0, [R4]
12E0E8:  ADD             R0, SP, #0x18+var_14
12E0EA:  STRD.W          R6, R1, [SP,#0x18+var_18]
12E0EE:  BL              sub_12DFE0
12E0F2:  MOV             R0, R5
12E0F4:  BL              sub_12DFE0
12E0F8:  LDR             R0, [R4]
12E0FA:  ADDS            R0, #4
12E0FC:  ADD             SP, SP, #8
12E0FE:  POP.W           {R11}
12E102:  POP             {R4-R7,PC}
