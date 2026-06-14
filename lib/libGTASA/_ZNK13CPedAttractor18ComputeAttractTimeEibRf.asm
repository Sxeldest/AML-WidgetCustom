; =========================================================
; Game Engine Function: _ZNK13CPedAttractor18ComputeAttractTimeEibRf
; Address            : 0x4A8B1A - 0x4A8B2C
; =========================================================

4A8B1A:  ADD.W           R1, R0, #0x38 ; '8'
4A8B1E:  CMP             R2, #0
4A8B20:  IT NE
4A8B22:  ADDNE.W         R1, R0, #0x3C ; '<'
4A8B26:  LDR             R0, [R1]
4A8B28:  STR             R0, [R3]
4A8B2A:  BX              LR
