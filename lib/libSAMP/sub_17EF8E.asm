; =========================================================
; Game Engine Function: sub_17EF8E
; Address            : 0x17EF8E - 0x17EFA2
; =========================================================

17EF8E:  LDR.W           R2, [R0,#0x340]
17EF92:  CBZ             R2, loc_17EF9C
17EF94:  LDRD.W          R1, R2, [R2,#4]
17EF98:  B.W             sub_181934
17EF9C:  MOV.W           R0, #0xFFFFFFFF
17EFA0:  BX              LR
