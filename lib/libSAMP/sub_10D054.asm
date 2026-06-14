; =========================================================
; Game Engine Function: sub_10D054
; Address            : 0x10D054 - 0x10D074
; =========================================================

10D054:  PUSH            {R4,R6,R7,LR}
10D056:  ADD             R7, SP, #8
10D058:  MOV             R4, R0
10D05A:  LDR             R0, [R0,#0x10]
10D05C:  CMP             R4, R0
10D05E:  BEQ             loc_10D066
10D060:  CBZ             R0, loc_10D070
10D062:  MOVS            R1, #5
10D064:  B               loc_10D068
10D066:  MOVS            R1, #4
10D068:  LDR             R2, [R0]
10D06A:  LDR.W           R1, [R2,R1,LSL#2]
10D06E:  BLX             R1
10D070:  MOV             R0, R4
10D072:  POP             {R4,R6,R7,PC}
