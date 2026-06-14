; =========================================================
; Game Engine Function: sub_7DE24
; Address            : 0x7DE24 - 0x7DE3A
; =========================================================

7DE24:  PUSH            {R4,R6,R7,LR}
7DE26:  ADD             R7, SP, #8
7DE28:  MOV             R4, R0
7DE2A:  LDR             R0, [R0]; void *
7DE2C:  CMP             R0, #0
7DE2E:  ITT NE
7DE30:  STRNE           R0, [R4,#4]
7DE32:  BLXNE           j__ZdlPv; operator delete(void *)
7DE36:  MOV             R0, R4
7DE38:  POP             {R4,R6,R7,PC}
