; =========================================================
; Game Engine Function: sub_1FAAEC
; Address            : 0x1FAAEC - 0x1FAB0A
; =========================================================

1FAAEC:  PUSH            {R7,LR}
1FAAEE:  MOV             R7, SP
1FAAF0:  CMP             R2, #1
1FAAF2:  BEQ             loc_1FAB00
1FAAF4:  CMP.W           R2, #0x1000
1FAAF8:  BGE             loc_1FAB00
1FAAFA:  BL              sub_2145F4
1FAAFE:  POP             {R7,PC}
1FAB00:  LDR             R1, =(aUnspecifiedIos - 0x1FAB06); "unspecified iostream_category error" ...
1FAB02:  ADD             R1, PC; "unspecified iostream_category error"
1FAB04:  BL              sub_DC6DC
1FAB08:  POP             {R7,PC}
