; =========================================================
; Game Engine Function: sub_2166EE
; Address            : 0x2166EE - 0x21670E
; =========================================================

2166EE:  PUSH            {R4,R6,R7,LR}
2166F0:  ADD             R7, SP, #8
2166F2:  CMP             R0, R1
2166F4:  BEQ             loc_216704
2166F6:  LDRB            R3, [R2]
2166F8:  LDRB            R4, [R0]
2166FA:  CMP             R4, R3
2166FC:  BNE             loc_216704
2166FE:  ADDS            R2, #1
216700:  ADDS            R0, #1
216702:  B               loc_2166F2
216704:  SUBS            R0, R0, R1
216706:  CLZ.W           R0, R0
21670A:  LSRS            R0, R0, #5
21670C:  POP             {R4,R6,R7,PC}
