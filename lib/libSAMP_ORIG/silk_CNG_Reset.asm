; =========================================================
; Game Engine Function: silk_CNG_Reset
; Address            : 0xB29BC - 0xB2A04
; =========================================================

B29BC:  PUSH            {R4,R5,R7,LR}
B29BE:  ADD             R7, SP, #8
B29C0:  MOV             R4, R0
B29C2:  MOVW            R0, #0x7FFF
B29C6:  LDR.W           R5, [R4,#0x924]
B29CA:  ADDS            R1, R5, #1
B29CC:  BLX             sub_108848
B29D0:  CMP             R5, #1
B29D2:  BLT             loc_B29EC
B29D4:  ADDW            R1, R4, #0xFD4
B29D8:  MOVS            R2, #0
B29DA:  MOV             R3, R0
B29DC:  STRH.W          R3, [R1,R2,LSL#1]
B29E0:  ADD             R3, R0
B29E2:  ADDS            R2, #1
B29E4:  LDR.W           R5, [R4,#0x924]
B29E8:  CMP             R2, R5
B29EA:  BLT             loc_B29DC
B29EC:  MOVW            R1, #0x7880
B29F0:  MOVW            R0, #0x1038
B29F4:  MOVT            R1, #0x30 ; '0'
B29F8:  STR             R1, [R4,R0]
B29FA:  MOVW            R0, #0x1034
B29FE:  MOVS            R1, #0
B2A00:  STR             R1, [R4,R0]
B2A02:  POP             {R4,R5,R7,PC}
