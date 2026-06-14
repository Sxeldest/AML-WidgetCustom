; =========================================================
; Game Engine Function: _ZN7CWanted15AreArmyRequiredEv
; Address            : 0x4223D8 - 0x4223E8
; =========================================================

4223D8:  LDR             R1, [R0,#0x2C]
4223DA:  CMP             R1, #6
4223DC:  ITEE EQ
4223DE:  MOVEQ           R0, #1
4223E0:  LDRBNE          R0, [R0,#(dword_1C+3 - 1)]
4223E2:  UBFXNE.W        R0, R0, #5, #1
4223E6:  BX              LR
