; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun14StartCountDownEhb
; Address            : 0x4DDD00 - 0x4DDD18
; =========================================================

4DDD00:  CMP             R2, #1
4DDD02:  BNE             loc_4DDD0E
4DDD04:  LDRB.W          R2, [R0,#0x38]
4DDD08:  CMP             R2, R1
4DDD0A:  IT CC
4DDD0C:  MOVCC           R1, R2
4DDD0E:  MOVS            R2, #0
4DDD10:  STRB            R2, [R0,#0xB]
4DDD12:  STRB.W          R1, [R0,#0x38]
4DDD16:  BX              LR
