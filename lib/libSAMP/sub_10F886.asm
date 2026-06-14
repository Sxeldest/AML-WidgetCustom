; =========================================================
; Game Engine Function: sub_10F886
; Address            : 0x10F886 - 0x10F89E
; =========================================================

10F886:  LDR             R2, [R0,#0xC]
10F888:  LDRD.W          R3, R12, [R0,#4]
10F88C:  LDR             R1, [R1]
10F88E:  ADD.W           R0, R3, R2,ASR#1
10F892:  LSLS            R2, R2, #0x1F
10F894:  ITT NE
10F896:  LDRNE           R2, [R0]
10F898:  LDRNE.W         R12, [R2,R12]
10F89C:  BX              R12
