; =========================================================
; Game Engine Function: sub_FD512
; Address            : 0xFD512 - 0xFD524
; =========================================================

FD512:  LDR             R0, [R3]
FD514:  SUBS            R2, R2, R1
FD516:  SUBS            R0, R0, R2
FD518:  STR             R0, [R3]
FD51A:  CMP             R2, #1
FD51C:  IT GE
FD51E:  BGE.W           loc_10C458
FD522:  BX              LR
