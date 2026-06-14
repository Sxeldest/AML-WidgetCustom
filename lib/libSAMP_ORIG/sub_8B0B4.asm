; =========================================================
; Game Engine Function: sub_8B0B4
; Address            : 0x8B0B4 - 0x8B0D8
; =========================================================

8B0B4:  LDR             R1, =(dword_1ACF68 - 0x8B0C0)
8B0B6:  MOVW            R2, #0x19BC
8B0BA:  CMP             R0, #0
8B0BC:  ADD             R1, PC; dword_1ACF68
8B0BE:  LDR             R1, [R1]
8B0C0:  STR             R0, [R1,R2]
8B0C2:  ADD             R1, R2
8B0C4:  MOV.W           R2, #0
8B0C8:  STRB            R2, [R1,#4]
8B0CA:  ITTTT NE
8B0CC:  LDRNE           R2, [R1,#8]
8B0CE:  CMPNE           R2, R0
8B0D0:  MOVNE           R0, #0
8B0D2:  STRDNE.W        R0, R0, [R1,#0xC]
8B0D6:  BX              LR
