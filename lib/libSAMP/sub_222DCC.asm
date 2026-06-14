; =========================================================
; Game Engine Function: sub_222DCC
; Address            : 0x222DCC - 0x222E24
; =========================================================

222DCC:  PUSH            {R4-R6,R10,R11,LR}
222DD0:  ADD             R11, SP, #0x10
222DD4:  MOV             R6, R0
222DD8:  LDR             R0, [R0]
222DDC:  MOV             R4, R2
222DE0:  MOV             R5, R1
222DE4:  LDR             R2, [R0,#0x14]
222DE8:  MOV             R0, R6
222DEC:  BLX             R2
222DF0:  CMP             R0, #0
222DF4:  BEQ             loc_222E18
222DF8:  LDR             R0, [R6]
222DFC:  MOV             R1, R5
222E00:  LDR             R2, [R0,#0x18]
222E04:  MOV             R0, R6
222E08:  BLX             R2
222E0C:  STRD            R0, R1, [R4]
222E10:  MOV             R0, #0
222E14:  POP             {R4-R6,R10,R11,PC}
222E18:  MOV             R0, #0xFFFFE672
222E20:  POP             {R4-R6,R10,R11,PC}
