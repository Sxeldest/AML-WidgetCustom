; =========================================================
; Game Engine Function: _ZN7CWanted14AreFbiRequiredEv
; Address            : 0x4223C8 - 0x4223D8
; =========================================================

4223C8:  LDR             R1, [R0,#0x2C]
4223CA:  CMP             R1, #5
4223CC:  ITEE EQ
4223CE:  MOVEQ           R0, #1
4223D0:  LDRBNE          R0, [R0,#(dword_1C+3 - 1)]
4223D2:  UBFXNE.W        R0, R0, #4, #1
4223D6:  BX              LR
