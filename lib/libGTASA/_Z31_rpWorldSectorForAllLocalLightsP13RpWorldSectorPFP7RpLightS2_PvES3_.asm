; =========================================================
; Game Engine Function: _Z31_rpWorldSectorForAllLocalLightsP13RpWorldSectorPFP7RpLightS2_PvES3_
; Address            : 0x21C904 - 0x21C936
; =========================================================

21C904:  PUSH            {R4-R7,LR}
21C906:  ADD             R7, SP, #0xC
21C908:  PUSH.W          {R8,R9,R11}
21C90C:  MOV             R8, R0
21C90E:  MOV             R9, R2
21C910:  MOV             R5, R8
21C912:  MOV             R6, R1
21C914:  LDR.W           R0, [R5,#0x48]!
21C918:  CMP             R0, R5
21C91A:  BEQ             loc_21C92E
21C91C:  LDR             R4, [R0]
21C91E:  LDR             R0, [R0,#8]
21C920:  CBZ             R0, loc_21C928
21C922:  MOV             R1, R9
21C924:  BLX             R6
21C926:  CBZ             R0, loc_21C92E
21C928:  CMP             R4, R5
21C92A:  MOV             R0, R4
21C92C:  BNE             loc_21C91C
21C92E:  MOV             R0, R8
21C930:  POP.W           {R8,R9,R11}
21C934:  POP             {R4-R7,PC}
