; =========================================================
; Game Engine Function: sub_FD524
; Address            : 0xFD524 - 0xFD538
; =========================================================

FD524:  LDR             R1, [R0,#4]
FD526:  B.W             loc_FD52A
FD52A:  LDR             R2, [R0,#8]
FD52C:  CMP             R2, R1
FD52E:  IT EQ
FD530:  BXEQ            LR
FD532:  SUBS            R2, #4
FD534:  STR             R2, [R0,#8]
FD536:  B               loc_FD52C
