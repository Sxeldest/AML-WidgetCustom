; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList11MoveToList1EP11CMatrixLink
; Address            : 0x4080FE - 0x408118
; =========================================================

4080FE:  LDRD.W          R2, R3, [R1,#0x4C]
408102:  STR             R2, [R3,#0x4C]
408104:  LDRD.W          R2, R3, [R1,#0x4C]
408108:  STR             R3, [R2,#0x50]
40810A:  LDR             R2, [R0,#0x50]
40810C:  STR             R2, [R1,#0x50]
40810E:  LDR             R2, [R0,#0x50]
408110:  STR             R1, [R2,#0x4C]
408112:  STR             R0, [R1,#0x4C]
408114:  STR             R1, [R0,#0x50]
408116:  BX              LR
