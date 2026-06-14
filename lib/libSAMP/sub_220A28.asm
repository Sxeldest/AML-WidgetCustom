; =========================================================
; Game Engine Function: sub_220A28
; Address            : 0x220A28 - 0x220A3E
; =========================================================

220A28:  PUSH            {R4,R6,R7,LR}
220A2A:  ADD             R7, SP, #8
220A2C:  MOV             R4, R0
220A2E:  LDR             R0, [R0]; void *
220A30:  CBZ             R0, loc_220A3A
220A32:  BLX             j__ZdaPv; operator delete[](void *)
220A36:  MOVS            R0, #0
220A38:  STR             R0, [R4]
220A3A:  MOV             R0, R4
220A3C:  POP             {R4,R6,R7,PC}
