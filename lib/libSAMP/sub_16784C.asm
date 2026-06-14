; =========================================================
; Game Engine Function: sub_16784C
; Address            : 0x16784C - 0x167896
; =========================================================

16784C:  PUSH            {R4-R7,LR}
16784E:  ADD             R7, SP, #0xC
167850:  PUSH.W          {R11}
167854:  LDR             R6, =(dword_381B58 - 0x16785C)
167856:  MOV             R4, R0
167858:  ADD             R6, PC; dword_381B58
16785A:  LDR             R0, [R6]
16785C:  CBZ             R0, loc_167868
16785E:  LDR.W           R1, [R0,#0x370]
167862:  ADDS            R1, #1
167864:  STR.W           R1, [R0,#0x370]
167868:  LDR             R0, =(dword_381B60 - 0x167870)
16786A:  LDR             R2, =(off_2390AC - 0x167872)
16786C:  ADD             R0, PC; dword_381B60
16786E:  ADD             R2, PC; off_2390AC
167870:  LDR             R1, [R0]
167872:  MOVW            R0, #0x3B48
167876:  LDR             R2, [R2]; sub_171190
167878:  BLX             R2; sub_171190
16787A:  MOV             R1, R4
16787C:  MOV             R5, R0
16787E:  BL              sub_1678A8
167882:  LDR             R0, [R6]
167884:  CBNZ            R0, loc_167888
167886:  STR             R5, [R6]
167888:  MOV             R0, R5
16788A:  BL              sub_167E3C
16788E:  MOV             R0, R5
167890:  POP.W           {R11}
167894:  POP             {R4-R7,PC}
