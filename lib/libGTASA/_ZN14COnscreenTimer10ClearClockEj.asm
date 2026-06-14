; =========================================================
; Game Engine Function: _ZN14COnscreenTimer10ClearClockEj
; Address            : 0x315158 - 0x315172
; =========================================================

315158:  LDR             R2, [R0]
31515A:  CMP             R2, R1
31515C:  IT NE
31515E:  BXNE            LR
315160:  MOVS            R1, #0
315162:  STRB            R1, [R0,#4]
315164:  STR             R1, [R0]
315166:  STRB.W          R1, [R0,#0x38]
31516A:  MOVS            R1, #1
31516C:  STRB.W          R1, [R0,#0x39]
315170:  BX              LR
