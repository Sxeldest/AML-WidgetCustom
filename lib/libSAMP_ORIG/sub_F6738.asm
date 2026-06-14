; =========================================================
; Game Engine Function: sub_F6738
; Address            : 0xF6738 - 0xF6750
; =========================================================

F6738:  LDR             R0, [R0]
F673A:  LDR             R0, [R0]
F673C:  LDRD.W          R2, R1, [R0]
F6740:  LDR             R3, [R0,#8]
F6742:  ADD.W           R0, R2, R3,ASR#1
F6746:  LSLS            R2, R3, #0x1F
F6748:  ITT NE
F674A:  LDRNE           R2, [R0]
F674C:  LDRNE           R1, [R2,R1]
F674E:  BX              R1
