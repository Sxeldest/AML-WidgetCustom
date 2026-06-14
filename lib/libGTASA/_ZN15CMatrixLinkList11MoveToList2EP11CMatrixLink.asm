; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList11MoveToList2EP11CMatrixLink
; Address            : 0x408118 - 0x40813C
; =========================================================

408118:  LDRD.W          R2, R3, [R1,#0x4C]
40811C:  STR             R2, [R3,#0x4C]
40811E:  LDRD.W          R2, R3, [R1,#0x4C]
408122:  STR             R3, [R2,#0x50]
408124:  LDR.W           R2, [R0,#0xF8]
408128:  STR             R2, [R1,#0x50]
40812A:  LDR.W           R2, [R0,#0xF8]
40812E:  STR             R1, [R2,#0x4C]
408130:  ADD.W           R2, R0, #0xA8
408134:  STR             R2, [R1,#0x4C]
408136:  STR.W           R1, [R0,#0xF8]
40813A:  BX              LR
