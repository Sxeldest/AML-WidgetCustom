; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity17IsTwinLoopPlayingEv
; Address            : 0x3AAC58 - 0x3AAC70
; =========================================================

3AAC58:  LDR.W           R1, [R0,#0xA0]
3AAC5C:  CMP             R1, #0
3AAC5E:  ITT NE
3AAC60:  MOVNE           R0, #1
3AAC62:  BXNE            LR
3AAC64:  LDR.W           R0, [R0,#0xA4]
3AAC68:  CMP             R0, #0
3AAC6A:  IT NE
3AAC6C:  MOVNE           R0, #1
3AAC6E:  BX              LR
