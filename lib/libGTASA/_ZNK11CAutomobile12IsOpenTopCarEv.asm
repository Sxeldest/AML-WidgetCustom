; =========================================================
; Game Engine Function: _ZNK11CAutomobile12IsOpenTopCarEv
; Address            : 0x550AD8 - 0x550B14
; =========================================================

550AD8:  LDRH            R1, [R0,#0x26]
550ADA:  MOVW            R2, #0x1B7
550ADE:  CMP             R1, R2
550AE0:  BEQ             loc_550AFC
550AE2:  CMP.W           R1, #0x1E0
550AE6:  BNE             loc_550B10
550AE8:  LDRB.W          R1, [R0,#0x43C]
550AEC:  CMP             R1, #0
550AEE:  ITT NE
550AF0:  LDRBNE.W        R0, [R0,#0x43D]
550AF4:  CMPNE           R0, #0
550AF6:  BEQ             loc_550B10
550AF8:  MOVS            R0, #1
550AFA:  BX              LR
550AFC:  LDRB.W          R1, [R0,#0x43C]
550B00:  CMP             R1, #0
550B02:  ITT NE
550B04:  LDRBNE.W        R0, [R0,#0x43D]
550B08:  CMPNE           R0, #0
550B0A:  BEQ             loc_550B10
550B0C:  MOVS            R0, #1
550B0E:  BX              LR
550B10:  MOVS            R0, #0
550B12:  BX              LR
