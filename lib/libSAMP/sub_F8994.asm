; =========================================================
; Game Engine Function: sub_F8994
; Address            : 0xF8994 - 0xF89B4
; =========================================================

F8994:  LDR             R0, [R0,#4]
F8996:  CBZ             R0, loc_F89A6
F8998:  LDR             R2, [R0,#0x48]
F899A:  STR             R2, [R1]
F899C:  LDR             R2, [R0,#0x4C]
F899E:  STR             R2, [R1,#4]
F89A0:  LDR             R0, [R0,#0x50]
F89A2:  STR             R0, [R1,#8]
F89A4:  BX              LR
F89A6:  LDR             R1, =(aAxl - 0xF89B0); "AXL" ...
F89A8:  MOVS            R0, #6
F89AA:  LDR             R2, =(aCentityCanTRea - 0xF89B2); "CEntity: Can't read speed vector - m_pE"... ...
F89AC:  ADD             R1, PC; "AXL"
F89AE:  ADD             R2, PC; "CEntity: Can't read speed vector - m_pE"...
F89B0:  B.W             sub_2242C8
