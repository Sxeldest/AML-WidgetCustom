; =========================================================
; Game Engine Function: sub_83500
; Address            : 0x83500 - 0x83516
; =========================================================

83500:  PUSH            {R4,R6,R7,LR}
83502:  ADD             R7, SP, #8
83504:  MOV             R4, R0
83506:  LDR             R0, [R0]; void *
83508:  CMP             R0, #0
8350A:  ITT NE
8350C:  STRNE           R0, [R4,#4]
8350E:  BLXNE           j__ZdlPv; operator delete(void *)
83512:  MOV             R0, R4
83514:  POP             {R4,R6,R7,PC}
