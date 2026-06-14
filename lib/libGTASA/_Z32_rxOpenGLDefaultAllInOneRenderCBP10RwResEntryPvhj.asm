; =========================================================
; Game Engine Function: _Z32_rxOpenGLDefaultAllInOneRenderCBP10RwResEntryPvhj
; Address            : 0x222CD0 - 0x222E3E
; =========================================================

222CD0:  PUSH            {R4-R7,LR}
222CD2:  ADD             R7, SP, #0xC
222CD4:  PUSH.W          {R8-R11}
222CD8:  SUB             SP, SP, #4
222CDA:  VPUSH           {D8}
222CDE:  SUB             SP, SP, #0x20
222CE0:  STR             R3, [SP,#0x48+var_30]
222CE2:  LDRH            R5, [R0,#0x1A]
222CE4:  CMP             R5, #0
222CE6:  BEQ.W           loc_222E30
222CEA:  ADD.W           R4, R0, #0x1C
222CEE:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x222CF6)
222CF0:  LDR             R1, [SP,#0x48+var_30]
222CF2:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
222CF4:  VLDR            S16, =255.0
222CF8:  AND.W           R11, R1, #0x84
222CFC:  AND.W           R1, R1, #8
222D00:  LDR.W           R8, [R0]; _rwOpenGLLightingEnabled
222D04:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x222D0C)
222D06:  STR             R1, [SP,#0x48+var_34]
222D08:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
222D0A:  LDR             R1, =(skipBlendRender_ptr - 0x222D12)
222D0C:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
222D0E:  ADD             R1, PC; skipBlendRender_ptr
222D10:  STR             R0, [SP,#0x48+var_38]
222D12:  LDR             R0, =(_rwOpenGLOpaqueBlack_ptr - 0x222D1C)
222D14:  LDR.W           R9, [R1]; skipBlendRender
222D18:  ADD             R0, PC; _rwOpenGLOpaqueBlack_ptr
222D1A:  LDR             R0, [R0]; _rwOpenGLOpaqueBlack
222D1C:  STR             R0, [SP,#0x48+var_44]
222D1E:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x222D24)
222D20:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
222D22:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
222D24:  STR             R0, [SP,#0x48+var_40]
222D26:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x222D2C)
222D28:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
222D2A:  LDR             R0, [R0]; emu_InternalBlendEnabled
222D2C:  STR             R0, [SP,#0x48+var_2C]
222D2E:  LDR             R0, =(skipNonblendRender_ptr - 0x222D34)
222D30:  ADD             R0, PC; skipNonblendRender_ptr
222D32:  LDR             R0, [R0]; skipNonblendRender
222D34:  STR             R0, [SP,#0x48+var_3C]
222D36:  LDR             R0, [R4,#0x30]
222D38:  CMP             R0, #0
222D3A:  BEQ             loc_222E30
222D3C:  LDR             R1, [R4,#0x34]
222D3E:  SUBS            R5, #1
222D40:  LDRB            R0, [R0,#7]
222D42:  CMP             R1, #0
222D44:  IT EQ
222D46:  CMPEQ           R0, #0xFF
222D48:  BNE             loc_222D4E
222D4A:  MOVS            R6, #0
222D4C:  B               loc_222D68
222D4E:  CMP             R0, #0
222D50:  BEQ             loc_222E0A
222D52:  VMOV            S0, R0
222D56:  VCVT.F32.U32    S0, S0
222D5A:  VDIV.F32        S0, S0, S16
222D5E:  VMOV            R0, S0; float
222D62:  BLX             j__Z23emu_EnableAlphaModulatef; emu_EnableAlphaModulate(float)
222D66:  MOVS            R6, #1
222D68:  MOVS            R0, #0xC
222D6A:  MOV             R1, R6
222D6C:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
222D70:  LDR.W           R0, [R8]
222D74:  CBZ             R0, loc_222D80
222D76:  LDR             R0, [R4,#0x30]
222D78:  LDR             R1, [SP,#0x48+var_30]
222D7A:  BLX             j__Z36_rwOpenGLLightsSetMaterialPropertiesPK10RpMaterialj; _rwOpenGLLightsSetMaterialProperties(RpMaterial const*,uint)
222D7E:  B               loc_222DA0
222D80:  LDR             R0, [SP,#0x48+var_38]
222D82:  LDR             R0, [R0]
222D84:  CBZ             R0, loc_222D94
222D86:  MOVW            R0, #0xB57; unsigned int
222D8A:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
222D8E:  LDR             R0, [SP,#0x48+var_40]
222D90:  MOVS            R1, #0
222D92:  STR             R1, [R0]
222D94:  LDR             R0, [SP,#0x48+var_34]
222D96:  CMP             R0, #0
222D98:  ITT EQ
222D9A:  LDREQ           R0, [SP,#0x48+var_44]; float *
222D9C:  BLXEQ           j__Z14emu_glColor4fvPKf; emu_glColor4fv(float const*)
222DA0:  CMP.W           R11, #0
222DA4:  ITTT NE
222DA6:  LDRNE           R0, [R4,#0x30]
222DA8:  LDRNE.W         R10, [R0]
222DAC:  CMPNE.W         R10, #0
222DB0:  BEQ             loc_222DCC
222DB2:  B.W             loc_3F678A
222DB6:  LDRB.W          R0, [R1,#0x30]
222DBA:  LSLS            R0, R0, #0x1F
222DBC:  BNE             loc_222E04
222DBE:  MOVS            R0, #1
222DC0:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
222DC4:  LDRB.W          R1, [R10,#0x50]
222DC8:  MOVS            R0, #9
222DCA:  B               loc_222DD0
222DCC:  MOVS            R0, #1
222DCE:  MOVS            R1, #0
222DD0:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
222DD4:  LDR             R0, [SP,#0x48+var_2C]
222DD6:  LDRB.W          R1, [R9]
222DDA:  LDRB            R0, [R0]
222DDC:  CMP             R1, #0
222DDE:  IT NE
222DE0:  CMPNE           R0, #0
222DE2:  BNE             loc_222E22
222DE4:  CBNZ            R0, loc_222DEC
222DE6:  LDR             R0, [SP,#0x48+var_3C]
222DE8:  LDRB            R0, [R0]
222DEA:  CBNZ            R0, loc_222E22
222DEC:  LDR             R1, [R4,#0x1C]; this
222DEE:  CBZ             R1, loc_222E14
222DF0:  LDR             R0, [R4,#0x20]; ArrayState *
222DF2:  LDR             R2, [R4]; unsigned int
222DF4:  CBZ             R0, loc_222E1A
222DF6:  LDRD.W          R3, R12, [R4,#0x24]; unsigned int
222DFA:  STR.W           R12, [SP,#0x48+var_48]; unsigned int
222DFE:  BLX             j__Z28emu_ArraysDrawStoredSeparatejjjjj; emu_ArraysDrawStoredSeparate(uint,uint,uint,uint,uint)
222E02:  B               loc_222E22
222E04:  CBZ             R6, loc_222E0A
222E06:  BLX             j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
222E0A:  ADDS            R4, #0x38 ; '8'
222E0C:  LSLS            R0, R5, #0x10
222E0E:  BNE.W           loc_222D36
222E12:  B               loc_222E30
222E14:  LDR             R1, [R4]
222E16:  LDR             R0, [R4,#0x14]
222E18:  B               loc_222E1E
222E1A:  MOV             R0, R1; unsigned int
222E1C:  MOV             R1, R2; unsigned int
222E1E:  BLX             j__Z20emu_ArraysDrawStoredjj; emu_ArraysDrawStored(uint,uint)
222E22:  ADDS            R4, #0x38 ; '8'
222E24:  CBZ             R6, loc_222E2A
222E26:  BLX             j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
222E2A:  LSLS            R0, R5, #0x10
222E2C:  BNE.W           loc_222D36
222E30:  ADD             SP, SP, #0x20 ; ' '
222E32:  VPOP            {D8}
222E36:  ADD             SP, SP, #4
222E38:  POP.W           {R8-R11}
222E3C:  POP             {R4-R7,PC}
