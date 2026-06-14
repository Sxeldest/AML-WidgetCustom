; =========================================================
; Game Engine Function: sub_20F4A2
; Address            : 0x20F4A2 - 0x20F4C2
; =========================================================

20F4A2:  PUSH            {R4,R6,R7,LR}
20F4A4:  ADD             R7, SP, #8
20F4A6:  CMP             R0, R1
20F4A8:  BEQ             loc_20F4B8
20F4AA:  LDR             R3, [R2]
20F4AC:  LDR             R4, [R0]
20F4AE:  CMP             R4, R3
20F4B0:  BNE             loc_20F4B8
20F4B2:  ADDS            R2, #4
20F4B4:  ADDS            R0, #4
20F4B6:  B               loc_20F4A6
20F4B8:  SUBS            R0, R0, R1
20F4BA:  CLZ.W           R0, R0
20F4BE:  LSRS            R0, R0, #5
20F4C0:  POP             {R4,R6,R7,PC}
