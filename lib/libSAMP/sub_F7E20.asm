; =========================================================
; Game Engine Function: sub_F7E20
; Address            : 0xF7E20 - 0xF7E6A
; =========================================================

F7E20:  PUSH            {R4,R6,R7,LR}
F7E22:  ADD             R7, SP, #8
F7E24:  MOV             R4, R0
F7E26:  LDR             R0, =(_ZTV6CActor - 0xF7E2E); `vtable for'CActor ...
F7E28:  LDR             R1, [R4,#0xC]
F7E2A:  ADD             R0, PC; `vtable for'CActor
F7E2C:  ADD.W           R0, R0, #8
F7E30:  STR             R0, [R4]
F7E32:  CBZ             R1, loc_F7E56
F7E34:  LDR             R0, [R4,#8]
F7E36:  BL              sub_1082F4
F7E3A:  CBZ             R0, loc_F7E56
F7E3C:  LDR             R0, =(off_23494C - 0xF7E4A)
F7E3E:  MOV             R3, #0x667D24
F7E46:  ADD             R0, PC; off_23494C
F7E48:  LDR             R1, [R0]; dword_23DF24
F7E4A:  LDR             R0, [R4,#0xC]
F7E4C:  LDR             R2, [R1]
F7E4E:  LDR             R1, [R0]
F7E50:  ADD             R2, R3
F7E52:  CMP             R1, R2
F7E54:  BNE             loc_F7E64
F7E56:  MOVS            R0, #0
F7E58:  STR             R0, [R4,#8]
F7E5A:  MOVS            R0, #0
F7E5C:  STR             R0, [R4,#4]
F7E5E:  STR             R0, [R4,#0xC]
F7E60:  MOV             R0, R4
F7E62:  POP             {R4,R6,R7,PC}
F7E64:  LDR             R1, [R1,#4]
F7E66:  BLX             R1
F7E68:  B               loc_F7E5A
