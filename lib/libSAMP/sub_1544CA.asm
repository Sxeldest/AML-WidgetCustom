; =========================================================
; Game Engine Function: sub_1544CA
; Address            : 0x1544CA - 0x1544E6
; =========================================================

1544CA:  PUSH            {R4,R6,R7,LR}
1544CC:  ADD             R7, SP, #8
1544CE:  MOV             R4, R1
1544D0:  LDR             R1, [R0]
1544D2:  LDR             R1, [R1,#0x10]
1544D4:  BLX             R1
1544D6:  MOV             R1, R0
1544D8:  MOV             R0, R4
1544DA:  BL              sub_164CDC
1544DE:  CMP             R0, #0
1544E0:  IT NE
1544E2:  MOVNE           R0, #1
1544E4:  POP             {R4,R6,R7,PC}
