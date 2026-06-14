; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity16SetEmittedVolumeEf
; Address            : 0x3AABEE - 0x3AAC1C
; =========================================================

3AABEE:  LDR.W           R2, [R0,#0xA0]
3AABF2:  VMOV            S0, R1
3AABF6:  CBZ             R2, loc_3AAC04
3AABF8:  LDRB.W          R1, [R0,#0x98]
3AABFC:  CMP             R1, #0
3AABFE:  IT NE
3AAC00:  VSTRNE          S0, [R2,#0x14]
3AAC04:  LDR.W           R1, [R0,#0xA4]
3AAC08:  CMP             R1, #0
3AAC0A:  IT EQ
3AAC0C:  BXEQ            LR
3AAC0E:  LDRB.W          R0, [R0,#0x98]
3AAC12:  CMP             R0, #0
3AAC14:  IT EQ
3AAC16:  VSTREQ          S0, [R1,#0x14]
3AAC1A:  BX              LR
