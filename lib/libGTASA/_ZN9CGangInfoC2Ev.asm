; =========================================================
; Game Engine Function: _ZN9CGangInfoC2Ev
; Address            : 0x49EE88 - 0x49EE96
; =========================================================

49EE88:  MOVS            R2, #0xFF; Alternative name is 'CGangInfo::CGangInfo(void)'
49EE8A:  MOVS            R1, #0
49EE8C:  STRB            R2, [R0]
49EE8E:  STRD.W          R1, R1, [R0,#4]
49EE92:  STR             R1, [R0,#0xC]
49EE94:  BX              LR
