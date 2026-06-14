; =========================================================
; Game Engine Function: _Z25RpMaterialGetMultiTexturePK10RpMaterial12RwPlatformID
; Address            : 0x1C5268 - 0x1C528C
; =========================================================

1C5268:  LDR             R2, =(RegEntries_ptr - 0x1C526E)
1C526A:  ADD             R2, PC; RegEntries_ptr
1C526C:  LDR             R2, [R2]; RegEntries
1C526E:  ADD.W           R2, R2, R1,LSL#4
1C5272:  LDR             R2, [R2,#4]
1C5274:  CMP             R2, #0
1C5276:  ITT EQ
1C5278:  MOVEQ           R0, #0
1C527A:  BXEQ            LR
1C527C:  LDR             R2, =(RegEntries_ptr - 0x1C5282)
1C527E:  ADD             R2, PC; RegEntries_ptr
1C5280:  LDR             R2, [R2]; RegEntries
1C5282:  ADD.W           R1, R2, R1,LSL#4
1C5286:  LDR             R1, [R1,#8]
1C5288:  LDR             R0, [R0,R1]
1C528A:  BX              LR
