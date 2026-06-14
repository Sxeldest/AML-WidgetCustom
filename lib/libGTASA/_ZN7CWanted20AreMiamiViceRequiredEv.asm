; =========================================================
; Game Engine Function: _ZN7CWanted20AreMiamiViceRequiredEv
; Address            : 0x4223AC - 0x4223B8
; =========================================================

4223AC:  LDR             R1, [R0,#0x2C]
4223AE:  MOVS            R0, #0
4223B0:  CMP             R1, #2
4223B2:  IT GT
4223B4:  MOVGT           R0, #1
4223B6:  BX              LR
