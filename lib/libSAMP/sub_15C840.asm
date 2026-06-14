; =========================================================
; Game Engine Function: sub_15C840
; Address            : 0x15C840 - 0x15C878
; =========================================================

15C840:  PUSH            {R4,R6,R7,LR}
15C842:  ADD             R7, SP, #8
15C844:  LDR             R4, [R1]
15C846:  MOVS            R2, #0
15C848:  STR             R2, [R1]
15C84A:  MOV             R1, R4
15C84C:  BL              sub_15DC6C
15C850:  CBZ             R4, locret_15C86C
15C852:  ADDS            R0, R4, #4
15C854:  DMB.W           ISH
15C858:  LDREX.W         R1, [R0]
15C85C:  SUBS            R2, R1, #1
15C85E:  STREX.W         R3, R2, [R0]
15C862:  CMP             R3, #0
15C864:  BNE             loc_15C858
15C866:  DMB.W           ISH
15C86A:  CBZ             R1, loc_15C86E
15C86C:  POP             {R4,R6,R7,PC}
15C86E:  LDR             R0, [R4]
15C870:  LDR             R1, [R0,#8]
15C872:  MOV             R0, R4
15C874:  BLX             R1
15C876:  POP             {R4,R6,R7,PC}
