; =========================================================
; Game Engine Function: sub_F89E0
; Address            : 0xF89E0 - 0xF8A00
; =========================================================

F89E0:  LDR             R0, [R0,#4]
F89E2:  CBZ             R0, loc_F89F2
F89E4:  LDR             R2, [R0,#0x54]
F89E6:  STR             R2, [R1]
F89E8:  LDR             R2, [R0,#0x58]
F89EA:  STR             R2, [R1,#4]
F89EC:  LDR             R0, [R0,#0x5C]
F89EE:  STR             R0, [R1,#8]
F89F0:  BX              LR
F89F2:  LDR             R1, =(aAxl - 0xF89FC); "AXL" ...
F89F4:  MOVS            R0, #6
F89F6:  LDR             R2, =(aCentityCanTRea_0 - 0xF89FE); "CEntity: Can't read turn speed vector -"... ...
F89F8:  ADD             R1, PC; "AXL"
F89FA:  ADD             R2, PC; "CEntity: Can't read turn speed vector -"...
F89FC:  B.W             sub_2242C8
