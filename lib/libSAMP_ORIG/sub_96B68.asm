; =========================================================
; Game Engine Function: sub_96B68
; Address            : 0x96B68 - 0x96B80
; =========================================================

96B68:  LDR             R1, =(dword_1ACF68 - 0x96B72)
96B6A:  MOVW            R2, #0x1A10
96B6E:  ADD             R1, PC; dword_1ACF68
96B70:  LDR             R1, [R1]
96B72:  LDR             R3, [R1,R2]
96B74:  ORR.W           R3, R3, #0x40 ; '@'
96B78:  STR             R3, [R1,R2]
96B7A:  ADD             R1, R2
96B7C:  STR             R0, [R1,#0x4C]
96B7E:  BX              LR
