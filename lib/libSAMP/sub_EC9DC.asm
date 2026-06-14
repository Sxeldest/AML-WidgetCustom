; =========================================================
; Game Engine Function: sub_EC9DC
; Address            : 0xEC9DC - 0xEC9F2
; =========================================================

EC9DC:  PUSH            {R4,R6,R7,LR}
EC9DE:  ADD             R7, SP, #8
EC9E0:  MOV             R4, R0
EC9E2:  LDRB            R0, [R0]
EC9E4:  LSLS            R0, R0, #0x1F
EC9E6:  ITT NE
EC9E8:  LDRNE           R0, [R4,#8]; void *
EC9EA:  BLXNE           j__ZdlPv; operator delete(void *)
EC9EE:  MOV             R0, R4
EC9F0:  POP             {R4,R6,R7,PC}
