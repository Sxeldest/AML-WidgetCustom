; =========================================================
; Game Engine Function: sub_E6674
; Address            : 0xE6674 - 0xE669A
; =========================================================

E6674:  PUSH            {R4,R6,R7,LR}
E6676:  ADD             R7, SP, #8
E6678:  MOV             R4, R0
E667A:  ADDS            R0, #0x20 ; ' '
E667C:  BL              sub_E6790
E6680:  LDR             R0, [R4,#0x10]
E6682:  CMP             R4, R0
E6684:  BEQ             loc_E668C
E6686:  CBZ             R0, loc_E6696
E6688:  MOVS            R1, #5
E668A:  B               loc_E668E
E668C:  MOVS            R1, #4
E668E:  LDR             R2, [R0]
E6690:  LDR.W           R1, [R2,R1,LSL#2]
E6694:  BLX             R1
E6696:  MOV             R0, R4
E6698:  POP             {R4,R6,R7,PC}
