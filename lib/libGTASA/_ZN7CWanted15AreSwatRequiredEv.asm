; =========================================================
; Game Engine Function: _ZN7CWanted15AreSwatRequiredEv
; Address            : 0x4223B8 - 0x4223C8
; =========================================================

4223B8:  LDR             R1, [R0,#0x2C]
4223BA:  CMP             R1, #4
4223BC:  ITEE EQ
4223BE:  MOVEQ           R0, #1
4223C0:  LDRBNE          R0, [R0,#(dword_1C+3 - 1)]
4223C2:  UBFXNE.W        R0, R0, #3, #1
4223C6:  BX              LR
