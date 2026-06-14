; =========================================================
; Game Engine Function: sub_12EBA4
; Address            : 0x12EBA4 - 0x12EBD8
; =========================================================

12EBA4:  PUSH            {R4,R6,R7,LR}
12EBA6:  ADD             R7, SP, #8
12EBA8:  MOV             R4, R0
12EBAA:  LDR             R0, =(off_234C0C - 0x12EBB0)
12EBAC:  ADD             R0, PC; off_234C0C
12EBAE:  LDR             R1, [R0]; `vtable for'Button ...
12EBB0:  LDR             R0, [R4,#0x68]
12EBB2:  ADDS            R1, #8
12EBB4:  STR             R1, [R4]
12EBB6:  ADD.W           R1, R4, #0x58 ; 'X'
12EBBA:  CMP             R1, R0
12EBBC:  BEQ             loc_12EBC4
12EBBE:  CBZ             R0, loc_12EBCE
12EBC0:  MOVS            R1, #5
12EBC2:  B               loc_12EBC6
12EBC4:  MOVS            R1, #4
12EBC6:  LDR             R2, [R0]
12EBC8:  LDR.W           R1, [R2,R1,LSL#2]
12EBCC:  BLX             R1
12EBCE:  MOV             R0, R4
12EBD0:  POP.W           {R4,R6,R7,LR}
12EBD4:  B.W             sub_12BCE4
