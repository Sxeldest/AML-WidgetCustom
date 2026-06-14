; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList14MoveToFreeListEP11CMatrixLink
; Address            : 0x40813C - 0x408160
; =========================================================

40813C:  LDRD.W          R2, R3, [R1,#0x4C]
408140:  STR             R2, [R3,#0x4C]
408142:  LDRD.W          R2, R3, [R1,#0x4C]
408146:  STR             R3, [R2,#0x50]
408148:  LDR.W           R2, [R0,#0x1A0]
40814C:  STR             R2, [R1,#0x50]
40814E:  LDR.W           R2, [R0,#0x1A0]
408152:  STR             R1, [R2,#0x4C]
408154:  ADD.W           R2, R0, #0x150
408158:  STR             R2, [R1,#0x4C]
40815A:  STR.W           R1, [R0,#0x1A0]
40815E:  BX              LR
