; =========================================================
; Game Engine Function: _ZN10BoneNode_c9GetLimitsEiPfS0_
; Address            : 0x4D1F7C - 0x4D1FA6
; =========================================================

4D1F7C:  CMP             R1, #2
4D1F7E:  BEQ             loc_4D1F90
4D1F80:  CMP             R1, #1
4D1F82:  BEQ             loc_4D1F98
4D1F84:  CMP             R1, #0
4D1F86:  IT NE
4D1F88:  BXNE            LR
4D1F8A:  LDR             R1, [R0,#0x7C]
4D1F8C:  ADDS            R0, #0x88
4D1F8E:  B               loc_4D1F9E
4D1F90:  LDR.W           R1, [R0,#0x84]
4D1F94:  ADDS            R0, #0x90
4D1F96:  B               loc_4D1F9E
4D1F98:  LDR.W           R1, [R0,#0x80]
4D1F9C:  ADDS            R0, #0x8C
4D1F9E:  STR             R1, [R2]
4D1FA0:  LDR             R0, [R0]
4D1FA2:  STR             R0, [R3]
4D1FA4:  BX              LR
