; =========================================================
; Game Engine Function: _Z15CheckReferencesP7CEntity
; Address            : 0x40EB2C - 0x40EB36
; =========================================================

40EB2C:  ADDS            R0, #0x28 ; '('
40EB2E:  LDR             R0, [R0]
40EB30:  CMP             R0, #0
40EB32:  BNE             loc_40EB2E
40EB34:  BX              LR
