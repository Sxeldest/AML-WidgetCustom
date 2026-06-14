; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity16GetEmittedVolumeEv
; Address            : 0x3AAC1C - 0x3AAC52
; =========================================================

3AAC1C:  LDR.W           R1, [R0,#0xA0]
3AAC20:  CMP             R1, #0
3AAC22:  ITT NE
3AAC24:  LDRBNE.W        R2, [R0,#0x98]
3AAC28:  CMPNE           R2, #0
3AAC2A:  BNE             loc_3AAC48
3AAC2C:  LDR.W           R1, [R0,#0xA4]
3AAC30:  VLDR            S0, =-100.0
3AAC34:  CBZ             R1, loc_3AAC42
3AAC36:  LDRB.W          R0, [R0,#0x98]
3AAC3A:  CMP             R0, #0
3AAC3C:  IT EQ
3AAC3E:  VLDREQ          S0, [R1,#0x14]
3AAC42:  VMOV            R0, S0
3AAC46:  BX              LR
3AAC48:  VLDR            S0, [R1,#0x14]
3AAC4C:  VMOV            R0, S0
3AAC50:  BX              LR
