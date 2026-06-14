; =========================================================
; Game Engine Function: _Z19ConvertDXTToRaw8888PKv15RQTextureFormatjj
; Address            : 0x1B2DB0 - 0x1B2DDC
; =========================================================

1B2DB0:  PUSH            {R4,R6,R7,LR}
1B2DB2:  ADD             R7, SP, #8
1B2DB4:  SUB             SP, SP, #8
1B2DB6:  MOV             R12, R0
1B2DB8:  ADD             R0, SP, #0x10+var_C
1B2DBA:  SUBS            R4, R1, #7
1B2DBC:  STR             R0, [SP,#0x10+var_10]; unsigned int *
1B2DBE:  MOVW            R0, #0x83F3
1B2DC2:  CMP             R4, #3
1B2DC4:  MOVW            LR, #0x83E9
1B2DC8:  IT CC
1B2DCA:  ADDCC.W         R0, R1, LR; unsigned int
1B2DCE:  MOV             R1, R2; unsigned int
1B2DD0:  MOV             R2, R3; unsigned int
1B2DD2:  MOV             R3, R12; void *
1B2DD4:  BLX             j__Z39dxtSwizzler_CreateUncompressedTexture32jjjPKvRj; dxtSwizzler_CreateUncompressedTexture32(uint,uint,uint,void const*,uint &)
1B2DD8:  ADD             SP, SP, #8
1B2DDA:  POP             {R4,R6,R7,PC}
