; =========================================================
; Game Engine Function: sub_F9CD8
; Address            : 0xF9CD8 - 0xF9D38
; =========================================================

F9CD8:  PUSH            {R4-R7,LR}
F9CDA:  ADD             R7, SP, #0xC
F9CDC:  PUSH.W          {R8}
F9CE0:  MOV             R4, R0
F9CE2:  MOVW            R0, #0x4E20
F9CE6:  CMP             R4, R0
F9CE8:  BLS             loc_F9CEE
F9CEA:  MOVS            R0, #1
F9CEC:  B               loc_F9D32
F9CEE:  LDR             R0, =(unk_B2CDC - 0xF9CF8)
F9CF0:  MOV             R8, R1
F9CF2:  MOV             R1, R4
F9CF4:  ADD             R0, PC; unk_B2CDC
F9CF6:  BL              sub_107188
F9CFA:  CBNZ            R0, loc_F9D22
F9CFC:  CMP.W           R8, #1
F9D00:  BLT             loc_F9D22
F9D02:  LDR             R6, =(unk_B2CDC - 0xF9D0A)
F9D04:  MOVS            R5, #1
F9D06:  ADD             R6, PC; unk_B2CDC
F9D08:  MOV.W           R0, #0x3E8; useconds
F9D0C:  BLX             usleep
F9D10:  MOV             R0, R6
F9D12:  MOV             R1, R4
F9D14:  BL              sub_107188
F9D18:  CBNZ            R0, loc_F9D22
F9D1A:  ADDS            R0, R5, #1
F9D1C:  CMP             R5, R8
F9D1E:  MOV             R5, R0
F9D20:  BLT             loc_F9D08
F9D22:  LDR             R0, =(unk_B2CDC - 0xF9D2A)
F9D24:  MOV             R1, R4
F9D26:  ADD             R0, PC; unk_B2CDC
F9D28:  BL              sub_107188
F9D2C:  CMP             R0, #0
F9D2E:  IT NE
F9D30:  MOVNE           R0, #1
F9D32:  POP.W           {R8}
F9D36:  POP             {R4-R7,PC}
