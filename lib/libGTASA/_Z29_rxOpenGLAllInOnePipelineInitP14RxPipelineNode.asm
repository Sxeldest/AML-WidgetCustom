; =========================================================
; Game Engine Function: _Z29_rxOpenGLAllInOnePipelineInitP14RxPipelineNode
; Address            : 0x222E60 - 0x222F22
; =========================================================

222E60:  LDR             R0, =(dword_6BD758 - 0x222E66)
222E62:  ADD             R0, PC; dword_6BD758
222E64:  LDR             R0, [R0]
222E66:  CMP             R0, #0
222E68:  BNE             loc_222F16
222E6A:  PUSH            {R4,R6,R7,LR}
222E6C:  ADD             R7, SP, #0x10+var_8
222E6E:  LDR             R0, =(_rwOpenGLPrimConvTbl_ptr - 0x222E7E)
222E70:  ADR             R1, dword_222F30
222E72:  VMOV.I32        Q8, #0
222E76:  VLD1.64         {D18-D19}, [R1@128]
222E7A:  ADD             R0, PC; _rwOpenGLPrimConvTbl_ptr
222E7C:  LDR             R0, [R0]; _rwOpenGLPrimConvTbl
222E7E:  ADD.W           R1, R0, #0xC
222E82:  VST1.32         {D16-D17}, [R0]
222E86:  VST1.32         {D16-D17}, [R1]
222E8A:  ADDS            R1, R0, #4
222E8C:  VST1.32         {D18-D19}, [R1]
222E90:  MOVS            R1, #6
222E92:  STR             R1, [R0,#(dword_6BD73C - 0x6BD728)]
222E94:  MOVW            R0, #0x8074; unsigned int
222E98:  BLX             j__Z15emu_glIsEnabledj; emu_glIsEnabled(uint)
222E9C:  LDR             R1, =(_rwOpenGLVertexArrayEnabled_ptr - 0x222EA8)
222E9E:  CMP             R0, #0
222EA0:  IT NE
222EA2:  MOVNE           R0, #1
222EA4:  ADD             R1, PC; _rwOpenGLVertexArrayEnabled_ptr
222EA6:  LDR             R1, [R1]; _rwOpenGLVertexArrayEnabled
222EA8:  STR             R0, [R1]
222EAA:  MOVW            R0, #0x8075; unsigned int
222EAE:  BLX             j__Z15emu_glIsEnabledj; emu_glIsEnabled(uint)
222EB2:  LDR             R1, =(_rwOpenGLNormalArrayEnabled_ptr - 0x222EBE)
222EB4:  CMP             R0, #0
222EB6:  IT NE
222EB8:  MOVNE           R0, #1
222EBA:  ADD             R1, PC; _rwOpenGLNormalArrayEnabled_ptr
222EBC:  LDR             R1, [R1]; _rwOpenGLNormalArrayEnabled
222EBE:  STR             R0, [R1]
222EC0:  MOVW            R0, #0x8076; unsigned int
222EC4:  BLX             j__Z15emu_glIsEnabledj; emu_glIsEnabled(uint)
222EC8:  LDR             R1, =(RwEngineInstance_ptr - 0x222ED2)
222ECA:  CMP             R0, #0
222ECC:  LDR             R2, =(_rwOpenGLColorArrayEnabled_ptr - 0x222ED4)
222ECE:  ADD             R1, PC; RwEngineInstance_ptr
222ED0:  ADD             R2, PC; _rwOpenGLColorArrayEnabled_ptr
222ED2:  LDR             R1, [R1]; RwEngineInstance
222ED4:  LDR             R2, [R2]; _rwOpenGLColorArrayEnabled
222ED6:  LDR             R1, [R1]
222ED8:  IT NE
222EDA:  MOVNE           R0, #1
222EDC:  STR             R0, [R2]
222EDE:  MOVS            R0, #0x20 ; ' '
222EE0:  LDR.W           R1, [R1,#0x12C]
222EE4:  BLX             R1
222EE6:  LDR             R1, =(_rwOpenGLTexCoordArrayEnabled_ptr - 0x222EEC)
222EE8:  ADD             R1, PC; _rwOpenGLTexCoordArrayEnabled_ptr
222EEA:  LDR             R4, [R1]; _rwOpenGLTexCoordArrayEnabled
222EEC:  STR             R0, [R4]
222EEE:  MOVS            R0, #0; unsigned __int8
222EF0:  BLX             j__Z29_rwOpenGLSetActiveTextureUnith; _rwOpenGLSetActiveTextureUnit(uchar)
222EF4:  MOVW            R0, #0x8078; unsigned int
222EF8:  BLX             j__Z15emu_glIsEnabledj; emu_glIsEnabled(uint)
222EFC:  LDR             R1, [R4]
222EFE:  CMP             R0, #0
222F00:  IT NE
222F02:  MOVNE           R0, #1
222F04:  STR             R0, [R1]
222F06:  MOVS            R0, #0; unsigned __int8
222F08:  BLX             j__Z29_rwOpenGLSetActiveTextureUnith; _rwOpenGLSetActiveTextureUnit(uchar)
222F0C:  LDR             R0, =(dword_6BD758 - 0x222F12)
222F0E:  ADD             R0, PC; dword_6BD758
222F10:  LDR             R0, [R0]
222F12:  POP.W           {R4,R6,R7,LR}
222F16:  LDR             R1, =(dword_6BD758 - 0x222F1E)
222F18:  ADDS            R0, #1
222F1A:  ADD             R1, PC; dword_6BD758
222F1C:  STR             R0, [R1]
222F1E:  MOVS            R0, #1
222F20:  BX              LR
