; =========================================================
; Game Engine Function: sub_17F006
; Address            : 0x17F006 - 0x17F024
; =========================================================

17F006:  MOV             R1, #0xFFFFF970
17F00E:  LDR             R2, [R0,R1]
17F010:  CBZ             R2, loc_17F01E
17F012:  LDRD.W          R1, R2, [R2,#4]
17F016:  SUB.W           R0, R0, #0x9D0
17F01A:  B.W             sub_181A6C
17F01E:  MOV.W           R0, #0xFFFFFFFF
17F022:  BX              LR
