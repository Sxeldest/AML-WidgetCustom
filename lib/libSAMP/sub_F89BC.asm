; =========================================================
; Game Engine Function: sub_F89BC
; Address            : 0xF89BC - 0xF89D6
; =========================================================

F89BC:  LDR             R0, [R0,#4]
F89BE:  CBZ             R0, loc_F89C8
F89C0:  STR             R1, [R0,#0x48]
F89C2:  STR             R2, [R0,#0x4C]
F89C4:  STR             R3, [R0,#0x50]
F89C6:  BX              LR
F89C8:  LDR             R1, =(aAxl - 0xF89D2); "AXL" ...
F89CA:  MOVS            R0, #6
F89CC:  LDR             R2, =(aCentityCanTWri - 0xF89D4); "CEntity: Can't write speed vector - m_p"... ...
F89CE:  ADD             R1, PC; "AXL"
F89D0:  ADD             R2, PC; "CEntity: Can't write speed vector - m_p"...
F89D2:  B.W             sub_2242C8
