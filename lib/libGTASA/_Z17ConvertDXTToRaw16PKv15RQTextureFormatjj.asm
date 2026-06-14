; =========================================================
; Game Engine Function: _Z17ConvertDXTToRaw16PKv15RQTextureFormatjj
; Address            : 0x1B2DDC - 0x1B2E06
; =========================================================

1B2DDC:  PUSH            {R4,R6,R7,LR}
1B2DDE:  ADD             R7, SP, #8
1B2DE0:  SUB             SP, SP, #8
1B2DE2:  MOV             R12, R0
1B2DE4:  ADD             R0, SP, #0x10+var_C
1B2DE6:  SUBS            R4, R1, #7
1B2DE8:  STR             R0, [SP,#0x10+var_10]; unsigned int *
1B2DEA:  MOVS            R0, #0
1B2DEC:  CMP             R4, #4
1B2DEE:  MOVW            LR, #0x83E9
1B2DF2:  IT CC
1B2DF4:  ADDCC.W         R0, R1, LR; unsigned int
1B2DF8:  MOV             R1, R2; unsigned int
1B2DFA:  MOV             R2, R3; unsigned int
1B2DFC:  MOV             R3, R12; void *
1B2DFE:  BLX             j__Z39dxtSwizzler_CreateUncompressedTexture16jjjPKvRj; dxtSwizzler_CreateUncompressedTexture16(uint,uint,uint,void const*,uint &)
1B2E02:  ADD             SP, SP, #8
1B2E04:  POP             {R4,R6,R7,PC}
