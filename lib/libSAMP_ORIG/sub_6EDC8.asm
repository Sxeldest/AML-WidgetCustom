; =========================================================
; Game Engine Function: sub_6EDC8
; Address            : 0x6EDC8 - 0x6EDE2
; =========================================================

6EDC8:  PUSH            {R4,R6,R7,LR}
6EDCA:  ADD             R7, SP, #8
6EDCC:  MOV             R4, R0
6EDCE:  LDR             R0, [R0,#8]; ptr
6EDD0:  BLX             free
6EDD4:  LDR             R0, [R4,#4]; void *
6EDD6:  CMP             R0, #0
6EDD8:  IT NE
6EDDA:  BLXNE           j__ZdlPv; operator delete(void *)
6EDDE:  MOV             R0, R4
6EDE0:  POP             {R4,R6,R7,PC}
