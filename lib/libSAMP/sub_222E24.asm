; =========================================================
; Game Engine Function: sub_222E24
; Address            : 0x222E24 - 0x222E84
; =========================================================

222E24:  PUSH            {R4-R8,R10,R11,LR}
222E28:  ADD             R11, SP, #0x18
222E2C:  MOV             R7, R0
222E30:  LDR             R0, [R0]
222E34:  MOV             R5, R2
222E38:  MOV             R8, R3
222E3C:  MOV             R6, R1
222E40:  LDR             R2, [R0,#0x14]
222E44:  MOV             R0, R7
222E48:  BLX             R2
222E4C:  CMP             R0, #0
222E50:  BEQ             loc_222E78
222E54:  LDR             R0, [R7]
222E58:  MOV             R1, R6
222E5C:  MOV             R2, R5
222E60:  MOV             R3, R8
222E64:  LDR             R4, [R0,#0x1C]
222E68:  MOV             R0, R7
222E6C:  BLX             R4
222E70:  MOV             R0, #0
222E74:  POP             {R4-R8,R10,R11,PC}
222E78:  MOV             R0, #0xFFFFE672
222E80:  POP             {R4-R8,R10,R11,PC}
