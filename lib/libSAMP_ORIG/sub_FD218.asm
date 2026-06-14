; =========================================================
; Game Engine Function: sub_FD218
; Address            : 0xFD218 - 0xFD22C
; =========================================================

FD218:  LDRD.W          R2, R3, [R0,#4]
FD21C:  CMP             R2, R3
FD21E:  IT EQ
FD220:  BEQ.W           sub_FD404
FD224:  LDR             R1, [R1]
FD226:  STM             R2!, {R1}
FD228:  STR             R2, [R0,#4]
FD22A:  BX              LR
