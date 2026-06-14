; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun23PlayerPassiveControlGunEv
; Address            : 0x4DDA58 - 0x4DDA78
; =========================================================

4DDA58:  MOVS            R1, #1
4DDA5A:  STRB            R1, [R0,#9]
4DDA5C:  LDRSB.W         R1, [R0,#0x10]
4DDA60:  CMP             R1, #1
4DDA62:  ITT LE
4DDA64:  LDRSBLE.W       R1, [R0,#0xF]
4DDA68:  CMPLE           R1, #1
4DDA6A:  BLE             loc_4DDA70
4DDA6C:  MOVS            R0, #0
4DDA6E:  BX              LR
4DDA70:  MOVS            R1, #6
4DDA72:  STRB            R1, [R0,#0xF]
4DDA74:  MOVS            R0, #1
4DDA76:  BX              LR
