; =========================================================
; Game Engine Function: sub_222C8C
; Address            : 0x222C8C - 0x222CE4
; =========================================================

222C8C:  PUSH            {R4-R6,R10,R11,LR}
222C90:  ADD             R11, SP, #0x10
222C94:  MOV             R6, R0
222C98:  LDR             R0, [R0]
222C9C:  MOV             R4, R2
222CA0:  MOV             R5, R1
222CA4:  LDR             R2, [R0,#8]
222CA8:  MOV             R0, R6
222CAC:  BLX             R2
222CB0:  CMP             R0, #0
222CB4:  BEQ             loc_222CD8
222CB8:  LDR             R0, [R6]
222CBC:  MOV             R1, R5
222CC0:  LDR             R2, [R0,#0xC]
222CC4:  MOV             R0, R6
222CC8:  BLX             R2
222CCC:  STR             R0, [R4]
222CD0:  MOV             R0, #0
222CD4:  POP             {R4-R6,R10,R11,PC}
222CD8:  MOV             R0, #0xFFFFE672
222CE0:  POP             {R4-R6,R10,R11,PC}
