; =========================================================
; Game Engine Function: sub_7F660
; Address            : 0x7F660 - 0x7F676
; =========================================================

7F660:  PUSH            {R4,R6,R7,LR}
7F662:  ADD             R7, SP, #8
7F664:  MOV             R4, R0
7F666:  LDR             R0, [R0]; void *
7F668:  CMP             R0, #0
7F66A:  ITT NE
7F66C:  STRNE           R0, [R4,#4]
7F66E:  BLXNE           j__ZdlPv; operator delete(void *)
7F672:  MOV             R0, R4
7F674:  POP             {R4,R6,R7,PC}
