; =========================================================
; Game Engine Function: sub_F7784
; Address            : 0xF7784 - 0xF77BE
; =========================================================

F7784:  PUSH            {R4,R5,R7,LR}
F7786:  ADD             R7, SP, #8
F7788:  MOV             R4, R1
F778A:  MOV             R5, R0
F778C:  LDRD.W          R1, R0, [R0]; src
F7790:  LDR             R3, [R4,#4]
F7792:  SUBS            R2, R0, R1; n
F7794:  SUBS            R0, R3, R2; dest
F7796:  CMP             R2, #1
F7798:  STR             R0, [R4,#4]
F779A:  BLT             loc_F77A2
F779C:  BLX             j_memcpy
F77A0:  LDR             R0, [R4,#4]
F77A2:  LDR             R1, [R5]
F77A4:  STR             R0, [R5]
F77A6:  STR             R1, [R4,#4]
F77A8:  LDR             R0, [R4,#8]
F77AA:  LDR             R1, [R5,#4]
F77AC:  STR             R0, [R5,#4]
F77AE:  STR             R1, [R4,#8]
F77B0:  LDR             R0, [R4,#0xC]
F77B2:  LDR             R1, [R5,#8]
F77B4:  STR             R0, [R5,#8]
F77B6:  LDR             R0, [R4,#4]
F77B8:  STR             R1, [R4,#0xC]
F77BA:  STR             R0, [R4]
F77BC:  POP             {R4,R5,R7,PC}
