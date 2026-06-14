; =========================================================
; Game Engine Function: sub_156A98
; Address            : 0x156A98 - 0x156AB8
; =========================================================

156A98:  PUSH            {R4,R6,R7,LR}
156A9A:  ADD             R7, SP, #8
156A9C:  MOV             R4, R0
156A9E:  LDRB.W          R0, [R0,#0x250]
156AA2:  LSLS            R0, R0, #0x1F
156AA4:  ITT NE
156AA6:  LDRNE.W         R0, [R4,#0x258]; void *
156AAA:  BLXNE           j__ZdlPv; operator delete(void *)
156AAE:  MOV             R0, R4
156AB0:  POP.W           {R4,R6,R7,LR}
156AB4:  B.W             sub_1563DC
