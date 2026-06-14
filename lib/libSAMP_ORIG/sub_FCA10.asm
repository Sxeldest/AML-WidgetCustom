; =========================================================
; Game Engine Function: sub_FCA10
; Address            : 0xFCA10 - 0xFCA2A
; =========================================================

FCA10:  PUSH            {R7,LR}
FCA12:  MOV             R7, SP
FCA14:  CMP.W           R2, #0x1000
FCA18:  BLT             loc_FCA24
FCA1A:  LDR             R1, =(aUnspecifiedSys - 0xFCA20); "unspecified system_category error" ...
FCA1C:  ADD             R1, PC; "unspecified system_category error"
FCA1E:  BL              sub_5FBF8
FCA22:  POP             {R7,PC}
FCA24:  BL              sub_FC90C
FCA28:  POP             {R7,PC}
