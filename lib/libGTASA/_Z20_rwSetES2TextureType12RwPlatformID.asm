; =========================================================
; Game Engine Function: _Z20_rwSetES2TextureType12RwPlatformID
; Address            : 0x1AEB1C - 0x1AEB3E
; =========================================================

1AEB1C:  LDR             R0, =(es2TextureType_ptr - 0x1AEB24)
1AEB1E:  LDR             R1, =(UncompressedRead_ptr - 0x1AEB26)
1AEB20:  ADD             R0, PC; es2TextureType_ptr
1AEB22:  ADD             R1, PC; UncompressedRead_ptr
1AEB24:  LDR             R0, [R0]; es2TextureType
1AEB26:  LDR             R1, [R1]; UncompressedRead
1AEB28:  LDR             R2, [R0]
1AEB2A:  MOVS            R0, #0
1AEB2C:  STR             R0, [R1]
1AEB2E:  CMP             R2, #0xB
1AEB30:  IT EQ
1AEB32:  BXEQ            LR
1AEB34:  LDR             R1, =(ClearAfterSwap_ptr - 0x1AEB3A)
1AEB36:  ADD             R1, PC; ClearAfterSwap_ptr
1AEB38:  LDR             R1, [R1]; ClearAfterSwap
1AEB3A:  STR             R0, [R1]
1AEB3C:  BX              LR
