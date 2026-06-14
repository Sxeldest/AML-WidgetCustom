; =========================================================
; Game Engine Function: sub_F8A08
; Address            : 0xF8A08 - 0xF8A22
; =========================================================

F8A08:  LDR             R0, [R0,#4]
F8A0A:  CBZ             R0, loc_F8A14
F8A0C:  STR             R1, [R0,#0x54]
F8A0E:  STR             R2, [R0,#0x58]
F8A10:  STR             R3, [R0,#0x5C]
F8A12:  BX              LR
F8A14:  LDR             R1, =(aAxl - 0xF8A1E); "AXL" ...
F8A16:  MOVS            R0, #6
F8A18:  LDR             R2, =(aCentityCanTWri_0 - 0xF8A20); "CEntity: Can't write turn speed vector "... ...
F8A1A:  ADD             R1, PC; "AXL"
F8A1C:  ADD             R2, PC; "CEntity: Can't write turn speed vector "...
F8A1E:  B.W             sub_2242C8
