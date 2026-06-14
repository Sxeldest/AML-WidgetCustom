; =========================================================
; Game Engine Function: sub_FC9A4
; Address            : 0xFC9A4 - 0xFC9BE
; =========================================================

FC9A4:  PUSH            {R7,LR}
FC9A6:  MOV             R7, SP
FC9A8:  CMP.W           R2, #0x1000
FC9AC:  BLT             loc_FC9B8
FC9AE:  LDR             R1, =(aUnspecifiedGen - 0xFC9B4); "unspecified generic_category error" ...
FC9B0:  ADD             R1, PC; "unspecified generic_category error"
FC9B2:  BL              sub_5FBF8
FC9B6:  POP             {R7,PC}
FC9B8:  BL              sub_FC90C
FC9BC:  POP             {R7,PC}
