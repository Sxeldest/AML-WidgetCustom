; =========================================================
; Game Engine Function: sub_123D3E
; Address            : 0x123D3E - 0x123D56
; =========================================================

123D3E:  LDR             R2, [R0,#0xC]
123D40:  LDRD.W          R3, R12, [R0,#4]
123D44:  LDR             R1, [R1]
123D46:  ADD.W           R0, R3, R2,ASR#1
123D4A:  LSLS            R2, R2, #0x1F
123D4C:  ITT NE
123D4E:  LDRNE           R2, [R0]
123D50:  LDRNE.W         R12, [R2,R12]
123D54:  BX              R12
