; =========================================================
; Game Engine Function: sub_105A24
; Address            : 0x105A24 - 0x105A54
; =========================================================

105A24:  PUSH            {R4,R5,R7,LR}
105A26:  ADD             R7, SP, #8
105A28:  MOV             R5, R1
105A2A:  LDR             R1, [R0,#0x5C]
105A2C:  CBZ             R1, locret_105A52
105A2E:  MOV             R4, R2
105A30:  BL              sub_F8E0E
105A34:  CBZ             R0, locret_105A52
105A36:  LDR             R1, =(off_23494C - 0x105A44)
105A38:  MOV             R2, #0x38BF01
105A40:  ADD             R1, PC; off_23494C
105A42:  LDR             R1, [R1]; dword_23DF24
105A44:  LDR             R1, [R1]
105A46:  ADDS            R3, R1, R2
105A48:  MOV             R1, R5
105A4A:  MOV             R2, R4
105A4C:  POP.W           {R4,R5,R7,LR}
105A50:  BX              R3
105A52:  POP             {R4,R5,R7,PC}
