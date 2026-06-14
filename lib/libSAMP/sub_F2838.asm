; =========================================================
; Game Engine Function: sub_F2838
; Address            : 0xF2838 - 0xF2882
; =========================================================

F2838:  PUSH            {R4-R7,LR}
F283A:  ADD             R7, SP, #0xC
F283C:  PUSH.W          {R8}
F2840:  MOV             R5, R1
F2842:  LDRB            R1, [R0,#0x14]
F2844:  DMB.W           ISH
F2848:  LSLS            R1, R1, #0x1F
F284A:  BNE             loc_F287C
F284C:  LDRD.W          R6, R4, [R0,#8]
F2850:  CMP             R6, R4
F2852:  BEQ             loc_F287C
F2854:  MOV             R8, R2
F2856:  LDR             R0, [R6]
F2858:  LDRB            R1, [R0,#8]
F285A:  DMB.W           ISH
F285E:  LSLS            R1, R1, #0x1F
F2860:  BEQ             loc_F2876
F2862:  LDRB            R1, [R0,#9]
F2864:  DMB.W           ISH
F2868:  LSLS            R1, R1, #0x1F
F286A:  BNE             loc_F2876
F286C:  LDR             R1, [R0]
F286E:  MOV             R2, R8
F2870:  LDR             R3, [R1,#0x10]
F2872:  MOV             R1, R5
F2874:  BLX             R3
F2876:  ADDS            R6, #8
F2878:  CMP             R6, R4
F287A:  BNE             loc_F2856
F287C:  POP.W           {R8}
F2880:  POP             {R4-R7,PC}
