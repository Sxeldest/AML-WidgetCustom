; =========================================================
; Game Engine Function: sub_17F2EE
; Address            : 0x17F2EE - 0x17F300
; =========================================================

17F2EE:  LDR.W           R2, [R0,#0x340]
17F2F2:  CBZ             R2, loc_17F2FC
17F2F4:  LDRD.W          R1, R2, [R2,#4]
17F2F8:  B.W             sub_181A90
17F2FC:  MOVS            R0, #0
17F2FE:  BX              LR
