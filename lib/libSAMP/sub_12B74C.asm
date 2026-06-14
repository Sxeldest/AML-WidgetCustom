; =========================================================
; Game Engine Function: sub_12B74C
; Address            : 0x12B74C - 0x12B776
; =========================================================

12B74C:  PUSH            {R4,R5,R7,LR}
12B74E:  ADD             R7, SP, #8
12B750:  MOV             R4, R0
12B752:  LDR             R0, [R0]
12B754:  MOV             R5, R1
12B756:  LDR             R1, [R0,#4]
12B758:  MOV             R0, R4
12B75A:  BLX             R1
12B75C:  LDR             R0, [R5,#0x10]
12B75E:  CBZ             R0, loc_12B772
12B760:  LDR             R1, [R0]
12B762:  LDR             R1, [R1,#0x18]
12B764:  BLX             R1
12B766:  LDR             R0, [R4]
12B768:  LDR             R1, [R0,#8]
12B76A:  MOV             R0, R4
12B76C:  POP.W           {R4,R5,R7,LR}
12B770:  BX              R1
12B772:  BL              sub_DC92C
