; =========================================================
; Game Engine Function: _Z29_rxOpenGLAllInOnePipelineTermP14RxPipelineNode
; Address            : 0x222F64 - 0x222FE8
; =========================================================

222F64:  LDR             R0, =(dword_6BD758 - 0x222F6A)
222F66:  ADD             R0, PC; dword_6BD758
222F68:  LDR             R1, [R0]
222F6A:  SUBS            R1, #1
222F6C:  STR             R1, [R0]
222F6E:  IT NE
222F70:  BXNE            LR
222F72:  PUSH            {R4,R5,R7,LR}
222F74:  ADD             R7, SP, #0x10+var_8
222F76:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x222F7C)
222F78:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
222F7A:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
222F7C:  LDR             R0, [R0]
222F7E:  CBZ             R0, loc_222F92
222F80:  MOVW            R0, #0xB57; unsigned int
222F84:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
222F88:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x222F90)
222F8A:  MOVS            R1, #0
222F8C:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
222F8E:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
222F90:  STR             R1, [R0]
222F92:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x222F98)
222F94:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
222F96:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
222F98:  LDR             R0, [R0]
222F9A:  CBZ             R0, loc_222FAE
222F9C:  MOV.W           R0, #0xB50; unsigned int
222FA0:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
222FA4:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x222FAC)
222FA6:  MOVS            R1, #0
222FA8:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
222FAA:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
222FAC:  STR             R1, [R0]
222FAE:  LDR             R0, =(_rwOpenGLTexCoordArrayEnabled_ptr - 0x222FB4)
222FB0:  ADD             R0, PC; _rwOpenGLTexCoordArrayEnabled_ptr
222FB2:  LDR             R0, [R0]; _rwOpenGLTexCoordArrayEnabled
222FB4:  LDR             R0, [R0]
222FB6:  LDR             R0, [R0]
222FB8:  CMP             R0, #0
222FBA:  ITT NE
222FBC:  MOVNE           R0, #0; unsigned __int8
222FBE:  BLXNE           j__Z29_rwOpenGLSetActiveTextureUnith; _rwOpenGLSetActiveTextureUnit(uchar)
222FC2:  MOVS            R0, #0; unsigned __int8
222FC4:  MOVS            R4, #0
222FC6:  BLX             j__Z29_rwOpenGLSetActiveTextureUnith; _rwOpenGLSetActiveTextureUnit(uchar)
222FCA:  LDR             R0, =(RwEngineInstance_ptr - 0x222FD2)
222FCC:  LDR             R1, =(_rwOpenGLTexCoordArrayEnabled_ptr - 0x222FD4)
222FCE:  ADD             R0, PC; RwEngineInstance_ptr
222FD0:  ADD             R1, PC; _rwOpenGLTexCoordArrayEnabled_ptr
222FD2:  LDR             R0, [R0]; RwEngineInstance
222FD4:  LDR             R5, [R1]; _rwOpenGLTexCoordArrayEnabled
222FD6:  LDR             R1, [R0]
222FD8:  LDR             R0, [R5]
222FDA:  LDR.W           R1, [R1,#0x130]
222FDE:  BLX             R1
222FE0:  STR             R4, [R5]
222FE2:  POP.W           {R4,R5,R7,LR}
222FE6:  BX              LR
