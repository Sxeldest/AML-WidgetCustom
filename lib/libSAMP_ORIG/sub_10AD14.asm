; =========================================================
; Game Engine Function: sub_10AD14
; Address            : 0x10AD14 - 0x10AD74
; =========================================================

10AD14:  PUSH            {R4-R8,R10,R11,LR}
10AD18:  ADD             R11, SP, #0x18
10AD1C:  MOV             R7, R0
10AD20:  LDR             R0, [R0]
10AD24:  MOV             R5, R2
10AD28:  MOV             R8, R3
10AD2C:  MOV             R6, R1
10AD30:  LDR             R2, [R0,#0x14]
10AD34:  MOV             R0, R7
10AD38:  BLX             R2
10AD3C:  CMP             R0, #0
10AD40:  BEQ             loc_10AD68
10AD44:  LDR             R0, [R7]
10AD48:  MOV             R1, R6
10AD4C:  MOV             R2, R5
10AD50:  MOV             R3, R8
10AD54:  LDR             R4, [R0,#0x1C]
10AD58:  MOV             R0, R7
10AD5C:  BLX             R4
10AD60:  MOV             R0, #0
10AD64:  POP             {R4-R8,R10,R11,PC}
10AD68:  MOV             R0, #0xFFFFE672
10AD70:  POP             {R4-R8,R10,R11,PC}
