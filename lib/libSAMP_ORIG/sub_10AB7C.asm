; =========================================================
; Game Engine Function: sub_10AB7C
; Address            : 0x10AB7C - 0x10ABD4
; =========================================================

10AB7C:  PUSH            {R4-R6,R10,R11,LR}
10AB80:  ADD             R11, SP, #0x10
10AB84:  MOV             R6, R0
10AB88:  LDR             R0, [R0]
10AB8C:  MOV             R4, R2
10AB90:  MOV             R5, R1
10AB94:  LDR             R2, [R0,#8]
10AB98:  MOV             R0, R6
10AB9C:  BLX             R2
10ABA0:  CMP             R0, #0
10ABA4:  BEQ             loc_10ABC8
10ABA8:  LDR             R0, [R6]
10ABAC:  MOV             R1, R5
10ABB0:  LDR             R2, [R0,#0xC]
10ABB4:  MOV             R0, R6
10ABB8:  BLX             R2
10ABBC:  STR             R0, [R4]
10ABC0:  MOV             R0, #0
10ABC4:  POP             {R4-R6,R10,R11,PC}
10ABC8:  MOV             R0, #0xFFFFE672
10ABD0:  POP             {R4-R6,R10,R11,PC}
