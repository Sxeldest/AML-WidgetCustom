; =========================================================
; Game Engine Function: sub_17EFA2
; Address            : 0x17EFA2 - 0x17EFC0
; =========================================================

17EFA2:  MOV             R1, #0xFFFFF970
17EFAA:  LDR             R2, [R0,R1]
17EFAC:  CBZ             R2, loc_17EFBA
17EFAE:  LDRD.W          R1, R2, [R2,#4]
17EFB2:  SUB.W           R0, R0, #0x9D0
17EFB6:  B.W             sub_181934
17EFBA:  MOV.W           R0, #0xFFFFFFFF
17EFBE:  BX              LR
