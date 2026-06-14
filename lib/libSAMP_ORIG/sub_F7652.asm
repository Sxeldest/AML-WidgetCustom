; =========================================================
; Game Engine Function: sub_F7652
; Address            : 0xF7652 - 0xF7672
; =========================================================

F7652:  PUSH            {R4,R6,R7,LR}
F7654:  ADD             R7, SP, #8
F7656:  CMP             R0, R1
F7658:  BEQ             loc_F7668
F765A:  LDR             R3, [R2]
F765C:  LDR             R4, [R0]
F765E:  CMP             R4, R3
F7660:  BNE             loc_F7668
F7662:  ADDS            R2, #4
F7664:  ADDS            R0, #4
F7666:  B               loc_F7656
F7668:  SUBS            R0, R0, R1
F766A:  CLZ.W           R0, R0
F766E:  LSRS            R0, R0, #5
F7670:  POP             {R4,R6,R7,PC}
