; =========================================================
; Game Engine Function: _ZN10TouchSense14hapticsEnabledEv
; Address            : 0x270A40 - 0x270A4C
; =========================================================

270A40:  LDR             R1, [R0]
270A42:  MOVS            R0, #0
270A44:  CMP             R1, #0
270A46:  IT GT
270A48:  MOVGT           R0, #1
270A4A:  BX              LR
