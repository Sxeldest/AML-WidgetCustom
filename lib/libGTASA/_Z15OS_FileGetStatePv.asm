; =========================================================
; Game Engine Function: _Z15OS_FileGetStatePv
; Address            : 0x26769A - 0x2676AE
; =========================================================

26769A:  LDRB            R1, [R0,#8]
26769C:  CMP             R1, #0
26769E:  ITT EQ
2676A0:  MOVEQ           R0, #0
2676A2:  BXEQ            LR
2676A4:  LDR             R0, [R0,#0xC]
2676A6:  CMP             R0, #0
2676A8:  IT NE
2676AA:  MOVNE           R0, #4
2676AC:  BX              LR
