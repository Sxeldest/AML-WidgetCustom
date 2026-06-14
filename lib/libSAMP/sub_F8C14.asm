; =========================================================
; Game Engine Function: sub_F8C14
; Address            : 0xF8C14 - 0xF8C6A
; =========================================================

F8C14:  PUSH            {R4,R5,R7,LR}
F8C16:  ADD             R7, SP, #8
F8C18:  MOV             R4, R0
F8C1A:  LDR             R0, [R0,#4]
F8C1C:  CBZ             R0, locret_F8C3C
F8C1E:  LDR             R1, =(off_23494C - 0xF8C2E)
F8C20:  MOVW            R3, #0x7D24
F8C24:  LDR             R2, [R0]
F8C26:  MOVT            R3, #0x66 ; 'f'
F8C2A:  ADD             R1, PC; off_23494C
F8C2C:  LDR             R5, [R1]; dword_23DF24
F8C2E:  LDR             R1, [R5]
F8C30:  ADD             R3, R1
F8C32:  CMP             R2, R3
F8C34:  ITT NE
F8C36:  LDRNE           R2, [R0,#0x18]
F8C38:  CMPNE           R2, #0
F8C3A:  BNE             loc_F8C3E
F8C3C:  POP             {R4,R5,R7,PC}
F8C3E:  LDR             R0, [R0,#0x14]
F8C40:  CMP             R0, #0
F8C42:  BEQ             locret_F8C3C
F8C44:  MOVW            R3, #0xEDEF
F8C48:  LDR             R2, [R2,#4]
F8C4A:  MOVT            R3, #0x44 ; 'D'
F8C4E:  ADD             R3, R1
F8C50:  ADD.W           R1, R2, #0x10
F8C54:  BLX             R3
F8C56:  LDR             R1, [R5]
F8C58:  MOV             R2, #0x3EBFE9
F8C60:  LDR             R0, [R4,#4]
F8C62:  ADD             R1, R2
F8C64:  POP.W           {R4,R5,R7,LR}
F8C68:  BX              R1
