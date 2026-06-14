; =========================================================
; Game Engine Function: sub_17EF06
; Address            : 0x17EF06 - 0x17EF20
; =========================================================

17EF06:  MOV             R1, #0xFFFFF970
17EF0E:  LDR             R2, [R0,R1]
17EF10:  CBZ             R2, locret_17EF1E
17EF12:  LDRD.W          R1, R2, [R2,#4]
17EF16:  SUB.W           R0, R0, #0x9D0
17EF1A:  B.W             sub_18179C
17EF1E:  BX              LR
