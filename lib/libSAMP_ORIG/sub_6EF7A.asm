; =========================================================
; Game Engine Function: sub_6EF7A
; Address            : 0x6EF7A - 0x6EF94
; =========================================================

6EF7A:  PUSH            {R4,R6,R7,LR}
6EF7C:  ADD             R7, SP, #8
6EF7E:  MOV             R4, R0
6EF80:  LDR             R0, [R0,#8]; ptr
6EF82:  BLX             free
6EF86:  LDR             R0, [R4,#4]; void *
6EF88:  CMP             R0, #0
6EF8A:  IT NE
6EF8C:  BLXNE           j__ZdlPv; operator delete(void *)
6EF90:  MOV             R0, R4
6EF92:  POP             {R4,R6,R7,PC}
