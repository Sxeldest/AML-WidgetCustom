; =========================================================
; Game Engine Function: _ZN5CFont14SetOrientationEh
; Address            : 0x5AB304 - 0x5AB324
; =========================================================

5AB304:  CMP             R0, #2
5AB306:  IT HI
5AB308:  BXHI            LR
5AB30A:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB316)
5AB30C:  LSLS            R0, R0, #3
5AB30E:  MOV.W           R2, #0x10000
5AB312:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB314:  LSRS            R2, R0
5AB316:  LDR             R1, [R1]; CFont::Details ...
5AB318:  STRB            R2, [R1,#(byte_A297CE - 0xA297B4)]
5AB31A:  MOVS            R2, #1
5AB31C:  LSR.W           R0, R2, R0
5AB320:  STRB            R0, [R1,#(byte_A297CD - 0xA297B4)]
5AB322:  BX              LR
