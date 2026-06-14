; =========================================================
; Game Engine Function: sub_F9D44
; Address            : 0xF9D44 - 0xF9D8A
; =========================================================

F9D44:  PUSH            {R4,R5,R7,LR}
F9D46:  ADD             R7, SP, #8
F9D48:  MOV             R4, R0
F9D4A:  MOVW            R0, #0x4E1F
F9D4E:  CMP             R4, R0
F9D50:  IT HI
F9D52:  POPHI           {R4,R5,R7,PC}
F9D54:  LDR             R0, =(unk_B2CDC - 0xF9D5E)
F9D56:  MOV             R5, R1
F9D58:  MOV             R1, R4
F9D5A:  ADD             R0, PC; unk_B2CDC
F9D5C:  BL              sub_107188
F9D60:  CBZ             R5, loc_F9D7C
F9D62:  CBZ             R0, locret_F9D88
F9D64:  LDR             R0, =(off_23494C - 0xF9D6A)
F9D66:  ADD             R0, PC; off_23494C
F9D68:  LDR             R0, [R0]; dword_23DF24
F9D6A:  LDR             R0, [R0]
F9D6C:  ADD.W           R0, R0, #0x2D0000
F9D70:  ADD.W           R1, R0, #0xB9
F9D74:  MOV             R0, R4
F9D76:  POP.W           {R4,R5,R7,LR}
F9D7A:  BX              R1
F9D7C:  CBZ             R0, locret_F9D88
F9D7E:  LDR             R0, =(unk_B2D7C - 0xF9D86)
F9D80:  MOV             R1, R4
F9D82:  ADD             R0, PC; unk_B2D7C
F9D84:  BL              sub_107188
F9D88:  POP             {R4,R5,R7,PC}
