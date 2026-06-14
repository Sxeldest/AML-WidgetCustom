; =========================================================
; Game Engine Function: sub_E2A08
; Address            : 0xE2A08 - 0xE2A26
; =========================================================

E2A08:  PUSH            {R7,LR}
E2A0A:  MOV             R7, SP
E2A0C:  CMP             R2, #1
E2A0E:  BEQ             loc_E2A1C
E2A10:  CMP.W           R2, #0x1000
E2A14:  BGE             loc_E2A1C
E2A16:  BL              sub_FC90C
E2A1A:  POP             {R7,PC}
E2A1C:  LDR             R1, =(aUnspecifiedIos - 0xE2A22); "unspecified iostream_category error" ...
E2A1E:  ADD             R1, PC; "unspecified iostream_category error"
E2A20:  BL              sub_5FBF8
E2A24:  POP             {R7,PC}
