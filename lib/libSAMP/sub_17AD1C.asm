; =========================================================
; Game Engine Function: sub_17AD1C
; Address            : 0x17AD1C - 0x17AD5E
; =========================================================

17AD1C:  PUSH            {R4,R6,R7,LR}
17AD1E:  ADD             R7, SP, #8
17AD20:  MOV             R2, R0
17AD22:  LDR             R0, =(off_234E80 - 0x17AD2E)
17AD24:  MOV             R12, R1
17AD26:  MOVW            R1, #0x19AC
17AD2A:  ADD             R0, PC; off_234E80
17AD2C:  MOVS            R3, #1
17AD2E:  LDR             R0, [R0]; dword_381B58
17AD30:  LDR             R0, [R0]
17AD32:  LDR             R1, [R0,R1]
17AD34:  LDRB.W          R4, [R1,#0x7F]
17AD38:  STRB.W          R3, [R1,#0x7C]
17AD3C:  CBZ             R4, loc_17AD40
17AD3E:  POP             {R4,R6,R7,PC}
17AD40:  ADD.W           R4, R0, #0x2F40
17AD44:  MOVW            R1, #0xC01
17AD48:  MOV             R3, R12
17AD4A:  MOV             R0, R4
17AD4C:  BL              sub_1655E4
17AD50:  ADDS            R1, R4, R0
17AD52:  MOV             R0, R4; s
17AD54:  MOVS            R2, #1
17AD56:  POP.W           {R4,R6,R7,LR}
17AD5A:  B.W             sub_17A9F4
