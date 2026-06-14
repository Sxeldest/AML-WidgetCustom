; =========================================================
; Game Engine Function: _ZN10TouchSense18playEffectInternalEii
; Address            : 0x270A34 - 0x270A40
; =========================================================

270A34:  LDR             R1, [R0]
270A36:  MOVS            R0, #0
270A38:  CMP             R1, #0
270A3A:  IT GT
270A3C:  MOVGT           R0, #1
270A3E:  BX              LR
