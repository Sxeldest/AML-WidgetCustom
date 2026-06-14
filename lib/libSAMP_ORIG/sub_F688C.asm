; =========================================================
; Game Engine Function: sub_F688C
; Address            : 0xF688C - 0xF68B2
; =========================================================

F688C:  PUSH            {R4,R5,R7,LR}
F688E:  ADD             R7, SP, #8
F6890:  MOV             R5, R0
F6892:  LDRB            R0, [R0]
F6894:  MOV             R4, R1
F6896:  LSLS            R0, R0, #0x1F
F6898:  ITT NE
F689A:  LDRNE           R0, [R5,#8]; void *
F689C:  BLXNE           j__ZdlPv; operator delete(void *)
F68A0:  LDR             R0, [R4,#8]
F68A2:  STR             R0, [R5,#8]
F68A4:  MOVS            R0, #0
F68A6:  VLDR            D16, [R4]
F68AA:  VSTR            D16, [R5]
F68AE:  STRH            R0, [R4]
F68B0:  POP             {R4,R5,R7,PC}
