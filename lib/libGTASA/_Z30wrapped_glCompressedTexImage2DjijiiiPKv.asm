; =========================================================
; Game Engine Function: _Z30wrapped_glCompressedTexImage2DjijiiiPKv
; Address            : 0x1B2C9C - 0x1B2DA0
; =========================================================

1B2C9C:  PUSH            {R4-R7,LR}
1B2C9E:  ADD             R7, SP, #0xC
1B2CA0:  PUSH.W          {R8-R11}
1B2CA4:  SUB             SP, SP, #0x1C
1B2CA6:  MOV             R9, R0
1B2CA8:  LDR             R0, =(NativeFormat_ptr - 0x1B2CB2)
1B2CAA:  MOV             R4, R3
1B2CAC:  MOV             R5, R2
1B2CAE:  ADD             R0, PC; NativeFormat_ptr
1B2CB0:  MOV             R8, R1
1B2CB2:  LDR             R0, [R0]; NativeFormat
1B2CB4:  LDR             R0, [R0]
1B2CB6:  CMP             R0, #4
1B2CB8:  BNE             loc_1B2CE0
1B2CBA:  LDR             R0, =(RQCaps_ptr - 0x1B2CC0)
1B2CBC:  ADD             R0, PC; RQCaps_ptr
1B2CBE:  LDR             R0, [R0]; RQCaps
1B2CC0:  LDRB            R0, [R0,#(byte_6B8B9F - 0x6B8B9C)]
1B2CC2:  CBZ             R0, loc_1B2CC8
1B2CC4:  MOVS            R0, #0
1B2CC6:  B               loc_1B2CD8
1B2CC8:  LDR             R0, =(RQCaps_ptr - 0x1B2CCE)
1B2CCA:  ADD             R0, PC; RQCaps_ptr
1B2CCC:  LDR             R0, [R0]; RQCaps
1B2CCE:  LDRB            R1, [R0,#(byte_6B8BA0 - 0x6B8B9C)]
1B2CD0:  MOVS            R0, #3
1B2CD2:  CMP             R1, #0
1B2CD4:  IT NE
1B2CD6:  MOVNE           R0, #1
1B2CD8:  LDR             R1, =(NativeFormat_ptr - 0x1B2CDE)
1B2CDA:  ADD             R1, PC; NativeFormat_ptr
1B2CDC:  LDR             R1, [R1]; NativeFormat
1B2CDE:  STR             R0, [R1]
1B2CE0:  LDR.W           R10, [R7,#arg_8]
1B2CE4:  SUBS            R1, R0, #2
1B2CE6:  LDRD.W          R11, R6, [R7,#arg_0]
1B2CEA:  CMP             R1, #2
1B2CEC:  BCC             loc_1B2D00
1B2CEE:  CMP             R0, #1
1B2CF0:  BEQ             loc_1B2D36
1B2CF2:  CMP             R0, #0
1B2CF4:  BNE             loc_1B2D98
1B2CF6:  MOVS            R0, #0
1B2CF8:  STRD.W          R11, R0, [SP,#0x38+height]
1B2CFC:  STR             R6, [SP,#0x38+imageSize]
1B2CFE:  B               loc_1B2D62
1B2D00:  ADD             R0, SP, #0x38+var_24
1B2D02:  STR             R0, [SP,#0x38+height]; unsigned int *
1B2D04:  MOV             R0, R5; unsigned int
1B2D06:  MOV             R1, R4; unsigned int
1B2D08:  MOV             R2, R11; unsigned int
1B2D0A:  MOV             R3, R10; void *
1B2D0C:  BLX             j__Z39dxtSwizzler_CreateUncompressedTexture16jjjPKvRj; dxtSwizzler_CreateUncompressedTexture16(uint,uint,uint,void const*,uint &)
1B2D10:  MOV             R6, R0
1B2D12:  CBZ             R6, loc_1B2D58
1B2D14:  LDR             R0, [SP,#0x38+var_24]
1B2D16:  MOVW            R1, #0x8363
1B2D1A:  CMP             R0, R1
1B2D1C:  BNE             loc_1B2D74
1B2D1E:  MOVS            R2, #0
1B2D20:  MOVW            R0, #0x1907
1B2D24:  STRD.W          R11, R2, [SP,#0x38+height]
1B2D28:  ADD             R2, SP, #0x38+imageSize
1B2D2A:  STM             R2!, {R0,R1,R6}
1B2D2C:  MOV             R0, R9
1B2D2E:  MOV             R1, R8
1B2D30:  MOVW            R2, #0x1907
1B2D34:  B               loc_1B2D8C
1B2D36:  ADD             R0, SP, #0x38+var_20
1B2D38:  STR             R0, [SP,#0x38+height]; unsigned int *
1B2D3A:  MOV             R0, R5; unsigned int
1B2D3C:  MOV             R1, R4; unsigned int
1B2D3E:  MOV             R2, R11; unsigned int
1B2D40:  MOV             R3, R10; void *
1B2D42:  BLX             j__Z28dxtSwizzler_InlineSwizzleATCjjjPKvRj; dxtSwizzler_InlineSwizzleATC(uint,uint,uint,void const*,uint &)
1B2D46:  MOVS            R0, #0
1B2D48:  LDR             R2, [SP,#0x38+var_20]
1B2D4A:  STRD.W          R11, R0, [SP,#0x38+height]
1B2D4E:  MOV             R0, R9
1B2D50:  STRD.W          R6, R10, [SP,#0x38+imageSize]
1B2D54:  MOV             R1, R8
1B2D56:  B               loc_1B2D6C
1B2D58:  MOVS            R0, #0
1B2D5A:  STRD.W          R11, R0, [SP,#0x38+height]; height
1B2D5E:  LDR             R0, [R7,#arg_4]
1B2D60:  STR             R0, [SP,#0x38+imageSize]; imageSize
1B2D62:  MOV             R0, R9; target
1B2D64:  MOV             R1, R8; level
1B2D66:  MOV             R2, R5; internalformat
1B2D68:  STR.W           R10, [SP,#0x38+data]; data
1B2D6C:  MOV             R3, R4; width
1B2D6E:  BLX             glCompressedTexImage2D
1B2D72:  B               loc_1B2D98
1B2D74:  MOVS            R2, #0
1B2D76:  MOVW            R1, #0x1908
1B2D7A:  STRD.W          R11, R2, [SP,#0x38+height]; height
1B2D7E:  MOVW            R2, #0x1908; internalFormat
1B2D82:  STRD.W          R1, R0, [SP,#0x38+imageSize]; format
1B2D86:  MOV             R0, R9; target
1B2D88:  STR             R6, [SP,#0x38+pixels]; pixels
1B2D8A:  MOV             R1, R8; level
1B2D8C:  MOV             R3, R4; width
1B2D8E:  BLX             glTexImage2D
1B2D92:  MOV             R0, R6; p
1B2D94:  BLX             free
1B2D98:  ADD             SP, SP, #0x1C
1B2D9A:  POP.W           {R8-R11}
1B2D9E:  POP             {R4-R7,PC}
