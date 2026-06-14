; =========================================================
; Game Engine Function: sub_86FD6
; Address            : 0x86FD6 - 0x86FF0
; =========================================================

86FD6:  LDRD.W          R1, R2, [R0,#8]
86FDA:  ASRS            R3, R1, #3
86FDC:  LDRB            R2, [R2,R3]
86FDE:  ADDS            R3, R1, #1
86FE0:  STR             R3, [R0,#8]
86FE2:  AND.W           R0, R1, #7
86FE6:  LSL.W           R0, R2, R0
86FEA:  UXTB            R0, R0
86FEC:  LSRS            R0, R0, #7
86FEE:  BX              LR
