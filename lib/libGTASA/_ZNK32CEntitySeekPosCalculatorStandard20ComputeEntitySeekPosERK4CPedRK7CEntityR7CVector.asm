; =========================================================
; Game Engine Function: _ZNK32CEntitySeekPosCalculatorStandard20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector
; Address            : 0x3349E0 - 0x3349FA
; =========================================================

3349E0:  LDR             R0, [R2,#0x14]
3349E2:  ADD.W           R1, R0, #0x30 ; '0'
3349E6:  CMP             R0, #0
3349E8:  IT EQ
3349EA:  ADDEQ           R1, R2, #4
3349EC:  VLDR            D16, [R1]
3349F0:  LDR             R0, [R1,#8]
3349F2:  STR             R0, [R3,#8]
3349F4:  VSTR            D16, [R3]
3349F8:  BX              LR
