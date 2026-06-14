; =========================================================
; Game Engine Function: sub_10CC6C
; Address            : 0x10CC6C - 0x10CC8C
; =========================================================

10CC6C:  PUSH            {R4,R6,R7,LR}
10CC6E:  ADD             R7, SP, #8
10CC70:  MOV             R4, R0
10CC72:  LDR             R0, [R0,#0x10]
10CC74:  CMP             R4, R0
10CC76:  BEQ             loc_10CC7E
10CC78:  CBZ             R0, loc_10CC88
10CC7A:  MOVS            R1, #5
10CC7C:  B               loc_10CC80
10CC7E:  MOVS            R1, #4
10CC80:  LDR             R2, [R0]
10CC82:  LDR.W           R1, [R2,R1,LSL#2]
10CC86:  BLX             R1
10CC88:  MOV             R0, R4
10CC8A:  POP             {R4,R6,R7,PC}
