; =========================================================
; Game Engine Function: _Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv
; Address            : 0x1AEF1C - 0x1AEFF8
; =========================================================

1AEF1C:  PUSH            {R4-R7,LR}
1AEF1E:  ADD             R7, SP, #0xC
1AEF20:  PUSH.W          {R8}
1AEF24:  MOV             R4, R1
1AEF26:  CMP             R0, #1
1AEF28:  BNE             loc_1AEFF0
1AEF2A:  LDR             R1, =(dword_6B3208 - 0x1AEF32)
1AEF2C:  CMP             R4, #0
1AEF2E:  ADD             R1, PC; dword_6B3208
1AEF30:  LDRB            R0, [R1,#(byte_6B320C - 0x6B3208)]
1AEF32:  LDR             R1, [R1,#(dword_6B3210 - 0x6B3208)]
1AEF34:  LDR.W           R2, [R1,R0,LSL#2]
1AEF38:  BEQ             loc_1AEFAC
1AEF3A:  CBNZ            R2, loc_1AEF50
1AEF3C:  MOVW            R0, #0xDE1; unsigned int
1AEF40:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
1AEF44:  LDR             R1, =(dword_6B3208 - 0x1AEF4A)
1AEF46:  ADD             R1, PC; dword_6B3208
1AEF48:  LDRB            R0, [R1,#(byte_6B320C - 0x6B3208)]
1AEF4A:  LDR             R1, [R1,#(dword_6B3210 - 0x6B3208)]
1AEF4C:  LDR.W           R2, [R1,R0,LSL#2]
1AEF50:  CMP             R2, R4
1AEF52:  BEQ             loc_1AEFF0
1AEF54:  LDR             R2, =(RasterExtOffset_ptr - 0x1AEF5A)
1AEF56:  ADD             R2, PC; RasterExtOffset_ptr
1AEF58:  LDR             R2, [R2]; RasterExtOffset
1AEF5A:  LDR             R6, [R2]
1AEF5C:  STR.W           R4, [R1,R0,LSL#2]
1AEF60:  MOV             R0, R4
1AEF62:  BLX             j__Z16_rwGLHandleBlendP8RwRaster; _rwGLHandleBlend(RwRaster *)
1AEF66:  LDR             R0, [R4,R6]
1AEF68:  CBZ             R0, loc_1AEFA8
1AEF6A:  LDR             R0, [R4,#0x2C]
1AEF6C:  CBZ             R0, loc_1AEF7C
1AEF6E:  BLX             j__Z26emu_ArraysGetShareResourcev; emu_ArraysGetShareResource(void)
1AEF72:  CMP             R0, #0
1AEF74:  ITT EQ
1AEF76:  LDREQ           R0, [R4,#0x2C]
1AEF78:  BLXEQ           j__ZN22TextureDatabaseRuntime21RenderingTextureEntryEP20TextureDatabaseEntry; TextureDatabaseRuntime::RenderingTextureEntry(TextureDatabaseEntry *)
1AEF7C:  LDR             R1, =(dword_6B3208 - 0x1AEF86)
1AEF7E:  MOVS            R5, #0
1AEF80:  LDR             R0, [R4,R6]
1AEF82:  ADD             R1, PC; dword_6B3208
1AEF84:  LDRB            R2, [R1,#(byte_6B320C - 0x6B3208)]
1AEF86:  LDR             R1, [R1,#(dword_6B3218 - 0x6B3208)]
1AEF88:  LDR             R3, [R0]
1AEF8A:  LDR.W           R8, [R1,R2,LSL#2]
1AEF8E:  MOVS            R1, #0
1AEF90:  LDR             R2, [R3,#0x18]
1AEF92:  BLX             R2
1AEF94:  LDR             R0, [R4,R6]
1AEF96:  CMP.W           R8, #3
1AEF9A:  LDR             R1, [R0]
1AEF9C:  LDR             R3, [R1,#0xC]
1AEF9E:  IT EQ
1AEFA0:  MOVEQ           R5, #1
1AEFA2:  MOV             R1, R5
1AEFA4:  MOV             R2, R5
1AEFA6:  BLX             R3
1AEFA8:  MOV             R0, R4
1AEFAA:  B               loc_1AEFEC
1AEFAC:  CBZ             R2, loc_1AEFF0
1AEFAE:  MOVW            R0, #0xDE1; unsigned int
1AEFB2:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AEFB6:  MOV.W           R0, #0xBC0; unsigned int
1AEFBA:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AEFBE:  LDR             R0, =(dword_6B3208 - 0x1AEFC4)
1AEFC0:  ADD             R0, PC; dword_6B3208
1AEFC2:  LDR             R0, [R0,#(dword_6B3220 - 0x6B3208)]
1AEFC4:  CBZ             R0, loc_1AEFDC
1AEFC6:  LDR             R0, =(dword_6B3208 - 0x1AEFCE)
1AEFC8:  MOVS            R2, #0
1AEFCA:  ADD             R0, PC; dword_6B3208
1AEFCC:  LDR             R1, [R0,#(dword_6B3234 - 0x6B3208)]
1AEFCE:  STR             R2, [R0,#(dword_6B3220 - 0x6B3208)]
1AEFD0:  CMP             R1, #0
1AEFD2:  ITT EQ
1AEFD4:  MOVWEQ          R0, #0xBE2; unsigned int
1AEFD8:  BLXEQ           j__Z13emu_glDisablej; emu_glDisable(uint)
1AEFDC:  LDR             R0, =(dword_6B3208 - 0x1AEFE4)
1AEFDE:  MOVS            R2, #0
1AEFE0:  ADD             R0, PC; dword_6B3208
1AEFE2:  LDRB            R1, [R0,#(byte_6B320C - 0x6B3208)]
1AEFE4:  LDR             R0, [R0,#(dword_6B3210 - 0x6B3208)]
1AEFE6:  STR.W           R2, [R0,R1,LSL#2]
1AEFEA:  MOVS            R0, #0
1AEFEC:  BLX             j__Z25HandleTextureEnhancementsP8RwRaster; HandleTextureEnhancements(RwRaster *)
1AEFF0:  MOVS            R0, #1
1AEFF2:  POP.W           {R8}
1AEFF6:  POP             {R4-R7,PC}
