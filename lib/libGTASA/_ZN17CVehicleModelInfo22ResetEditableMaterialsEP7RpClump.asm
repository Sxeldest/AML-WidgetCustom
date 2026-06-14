; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo22ResetEditableMaterialsEP7RpClump
; Address            : 0x388B30 - 0x388B50
; =========================================================

388B30:  LDR             R0, =(dword_93187C - 0x388B36)
388B32:  ADD             R0, PC; dword_93187C
388B34:  LDR             R0, [R0]
388B36:  CMP             R0, #0
388B38:  IT EQ
388B3A:  BXEQ            LR
388B3C:  LDR             R1, =(dword_93187C - 0x388B42)
388B3E:  ADD             R1, PC; dword_93187C
388B40:  ADDS            R1, #8
388B42:  LDR             R2, [R1]
388B44:  STR             R2, [R0]
388B46:  LDR             R0, [R1,#4]
388B48:  ADDS            R1, #0xC
388B4A:  CMP             R0, #0
388B4C:  BNE             loc_388B42
388B4E:  BX              LR
