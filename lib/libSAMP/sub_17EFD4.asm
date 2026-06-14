; =========================================================
; Game Engine Function: sub_17EFD4
; Address            : 0x17EFD4 - 0x17EFF2
; =========================================================

17EFD4:  MOV             R1, #0xFFFFF970
17EFDC:  LDR             R2, [R0,R1]
17EFDE:  CBZ             R2, loc_17EFEC
17EFE0:  LDRD.W          R1, R2, [R2,#4]
17EFE4:  SUB.W           R0, R0, #0x9D0
17EFE8:  B.W             sub_181A3C
17EFEC:  MOV.W           R0, #0xFFFFFFFF
17EFF0:  BX              LR
