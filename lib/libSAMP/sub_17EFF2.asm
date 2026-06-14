; =========================================================
; Game Engine Function: sub_17EFF2
; Address            : 0x17EFF2 - 0x17F006
; =========================================================

17EFF2:  LDR.W           R2, [R0,#0x340]
17EFF6:  CBZ             R2, loc_17F000
17EFF8:  LDRD.W          R1, R2, [R2,#4]
17EFFC:  B.W             sub_181A6C
17F000:  MOV.W           R0, #0xFFFFFFFF
17F004:  BX              LR
