; =========================================================
; Game Engine Function: sub_10BFD2
; Address            : 0x10BFD2 - 0x10BFEA
; =========================================================

10BFD2:  LDR             R2, [R0,#0xC]
10BFD4:  LDRD.W          R3, R12, [R0,#4]
10BFD8:  LDR             R1, [R1]
10BFDA:  ADD.W           R0, R3, R2,ASR#1
10BFDE:  LSLS            R2, R2, #0x1F
10BFE0:  ITT NE
10BFE2:  LDRNE           R2, [R0]
10BFE4:  LDRNE.W         R12, [R2,R12]
10BFE8:  BX              R12
