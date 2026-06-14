; =========================================================
; Game Engine Function: sub_F66C6
; Address            : 0xF66C6 - 0xF66D8
; =========================================================

F66C6:  LDR             R0, [R3]
F66C8:  SUBS            R2, R2, R1; n
F66CA:  SUBS            R0, R0, R2; dest
F66CC:  STR             R0, [R3]
F66CE:  CMP             R2, #1
F66D0:  IT GE
F66D2:  BGE.W           loc_10C458
F66D6:  BX              LR
