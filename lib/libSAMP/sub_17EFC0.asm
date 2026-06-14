; =========================================================
; Game Engine Function: sub_17EFC0
; Address            : 0x17EFC0 - 0x17EFD4
; =========================================================

17EFC0:  LDR.W           R2, [R0,#0x340]
17EFC4:  CBZ             R2, loc_17EFCE
17EFC6:  LDRD.W          R1, R2, [R2,#4]
17EFCA:  B.W             sub_181A3C
17EFCE:  MOV.W           R0, #0xFFFFFFFF
17EFD2:  BX              LR
