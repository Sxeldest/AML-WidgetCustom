; =========================================================
; Game Engine Function: sub_FD3DE
; Address            : 0xFD3DE - 0xFD3F0
; =========================================================

FD3DE:  LDR             R0, [R3]
FD3E0:  SUBS            R2, R2, R1
FD3E2:  SUBS            R0, R0, R2
FD3E4:  STR             R0, [R3]
FD3E6:  CMP             R2, #1
FD3E8:  IT GE
FD3EA:  BGE.W           loc_10C458
FD3EE:  BX              LR
