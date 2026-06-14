; =========================================================
; Game Engine Function: _Z35RpMaterialQueryMultiTexturePlatform12RwPlatformID
; Address            : 0x1C5294 - 0x1C52A8
; =========================================================

1C5294:  LDR             R1, =(RegEntries_ptr - 0x1C529A)
1C5296:  ADD             R1, PC; RegEntries_ptr
1C5298:  LDR             R1, [R1]; RegEntries
1C529A:  ADD.W           R0, R1, R0,LSL#4
1C529E:  LDR             R0, [R0,#4]
1C52A0:  CMP             R0, #0
1C52A2:  IT NE
1C52A4:  MOVNE           R0, #1
1C52A6:  BX              LR
