; =========================================================
; Game Engine Function: sub_17D884
; Address            : 0x17D884 - 0x17D89E
; =========================================================

17D884:  LDRD.W          R1, R2, [R0,#8]
17D888:  ASRS            R3, R1, #3
17D88A:  LDRB            R2, [R2,R3]
17D88C:  ADDS            R3, R1, #1
17D88E:  STR             R3, [R0,#8]
17D890:  AND.W           R0, R1, #7
17D894:  LSL.W           R0, R2, R0
17D898:  UXTB            R0, R0
17D89A:  LSRS            R0, R0, #7
17D89C:  BX              LR
