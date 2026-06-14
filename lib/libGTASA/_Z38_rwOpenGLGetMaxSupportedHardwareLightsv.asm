; =========================================================
; Game Engine Function: _Z38_rwOpenGLGetMaxSupportedHardwareLightsv
; Address            : 0x1B1064 - 0x1B1078
; =========================================================

1B1064:  LDR             R0, =(byte_6B3298 - 0x1B106A)
1B1066:  ADD             R0, PC; byte_6B3298
1B1068:  LDRB            R0, [R0]
1B106A:  CBNZ            R0, loc_1B1074
1B106C:  LDR             R0, =(byte_6B3298 - 0x1B1074)
1B106E:  MOVS            R1, #1
1B1070:  ADD             R0, PC; byte_6B3298
1B1072:  STRB            R1, [R0]
1B1074:  MOVS            R0, #8
1B1076:  BX              LR
