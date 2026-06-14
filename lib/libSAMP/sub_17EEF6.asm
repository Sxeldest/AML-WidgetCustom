; =========================================================
; Game Engine Function: sub_17EEF6
; Address            : 0x17EEF6 - 0x17EF06
; =========================================================

17EEF6:  LDR.W           R2, [R0,#0x340]
17EEFA:  CBZ             R2, locret_17EF04
17EEFC:  LDRD.W          R1, R2, [R2,#4]
17EF00:  B.W             sub_18179C
17EF04:  BX              LR
