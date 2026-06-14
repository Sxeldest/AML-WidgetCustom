; =========================================================
; Game Engine Function: sub_1D8116
; Address            : 0x1D8116 - 0x1D813A
; =========================================================

1D8116:  PUSH            {R4,R5,R7,LR}
1D8118:  ADD             R7, SP, #8
1D811A:  MOV             R4, R1
1D811C:  LDR.W           R5, [R0,#0x98]
1D8120:  STR.W           R4, [R0,#0xA0]
1D8124:  B               loc_1D8132
1D8126:  MOV             R0, R5
1D8128:  MOV             R1, R4
1D812A:  BL              sub_1D8116
1D812E:  LDR.W           R5, [R5,#0x9C]
1D8132:  CMP             R5, #0
1D8134:  IT EQ
1D8136:  POPEQ           {R4,R5,R7,PC}
1D8138:  B               loc_1D8126
