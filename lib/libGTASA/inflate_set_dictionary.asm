; =========================================================
; Game Engine Function: inflate_set_dictionary
; Address            : 0x20DDD0 - 0x20DDE8
; =========================================================

20DDD0:  PUSH            {R4,R5,R7,LR}
20DDD2:  ADD             R7, SP, #8
20DDD4:  MOV             R5, R0
20DDD6:  MOV             R4, R2
20DDD8:  LDR             R0, [R5,#0x28]; void *
20DDDA:  BLX             memcpy_1
20DDDE:  LDR             R0, [R5,#0x28]
20DDE0:  ADD             R0, R4
20DDE2:  STRD.W          R0, R0, [R5,#0x30]
20DDE6:  POP             {R4,R5,R7,PC}
