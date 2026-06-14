; =========================================================
; Game Engine Function: _ZN8CMirrors16RenderReflBufferEb
; Address            : 0x5C5048 - 0x5C5154
; =========================================================

5C5048:  PUSH            {R4-R7,LR}
5C504A:  ADD             R7, SP, #0xC
5C504C:  PUSH.W          {R8}
5C5050:  VPUSH           {D8-D12}
5C5054:  SUB             SP, SP, #0x10
5C5056:  MOV             R4, R0
5C5058:  LDR             R0, =(_ZN8CMirrors10reflBufferE_ptr - 0x5C505E)
5C505A:  ADD             R0, PC; _ZN8CMirrors10reflBufferE_ptr
5C505C:  LDR             R0, [R0]; CMirrors::reflBuffer ...
5C505E:  LDR             R0, [R0]; CMirrors::reflBuffer
5C5060:  CMP             R0, #0
5C5062:  BEQ             loc_5C50F0
5C5064:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5C506A)
5C5066:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5C5068:  LDR             R0, [R0]; MobileSettings::settings ...
5C506A:  LDR.W           R0, [R0,#(dword_6E04DC - 0x6E03F4)]
5C506E:  CMP             R0, #2
5C5070:  BLT             loc_5C50F0
5C5072:  LDR             R0, =(RwEngineInstance_ptr - 0x5C5078)
5C5074:  ADD             R0, PC; RwEngineInstance_ptr
5C5076:  LDR             R0, [R0]; RwEngineInstance
5C5078:  LDR             R0, [R0]
5C507A:  LDR             R0, [R0]
5C507C:  LDR             R1, [R0,#0x60]
5C507E:  VLDR            S0, [R1,#0xC]
5C5082:  VLDR            S2, [R1,#0x10]
5C5086:  MOVS            R1, #1
5C5088:  VCVT.F32.S32    S16, S0
5C508C:  VLDR            S20, [R0,#0x80]
5C5090:  MOVS            R0, #0xB
5C5092:  VCVT.F32.S32    S18, S2
5C5096:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C509A:  MOVS            R0, #0xA
5C509C:  MOVS            R1, #2
5C509E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C50A2:  MOVS            R0, #9
5C50A4:  MOVS            R1, #2
5C50A6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C50AA:  LDR             R0, =(_ZN8CMirrors10reflBufferE_ptr - 0x5C50B0)
5C50AC:  ADD             R0, PC; _ZN8CMirrors10reflBufferE_ptr
5C50AE:  LDR             R0, [R0]; CMirrors::reflBuffer ...
5C50B0:  LDR             R1, [R0]; CMirrors::reflBuffer
5C50B2:  MOVS            R0, #1
5C50B4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C50B8:  VMOV.F32        S0, #1.0
5C50BC:  VLDR            S2, =0.68
5C50C0:  CMP             R4, #1
5C50C2:  VMUL.F32        S24, S16, S2
5C50C6:  VDIV.F32        S20, S0, S20
5C50CA:  VLDR            S0, =0.02
5C50CE:  VMUL.F32        S22, S18, S0
5C50D2:  BNE             loc_5C50FC
5C50D4:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C50D8:  VMOV            R2, S24
5C50DC:  MOVS            R3, #0
5C50DE:  VMOV            R1, S22
5C50E2:  STR             R3, [SP,#0x48+var_40]
5C50E4:  VSTR            S20, [SP,#0x48+var_44]
5C50E8:  STR             R0, [SP,#0x48+var_48]
5C50EA:  MOV             R0, R2
5C50EC:  MOV             R3, R1
5C50EE:  B               loc_5C5132
5C50F0:  ADD             SP, SP, #0x10
5C50F2:  VPOP            {D8-D12}
5C50F6:  POP.W           {R8}
5C50FA:  POP             {R4-R7,PC}
5C50FC:  VLDR            S0, =0.98
5C5100:  VMOV            R4, S24
5C5104:  VLDR            S2, =0.32
5C5108:  VMOV            R5, S22
5C510C:  VMUL.F32        S0, S16, S0
5C5110:  VMUL.F32        S2, S18, S2
5C5114:  VMOV            R6, S0
5C5118:  VMOV            R8, S2
5C511C:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C5120:  MOVS            R1, #0
5C5122:  MOV             R2, R6; float
5C5124:  STR             R1, [SP,#0x48+var_40]; float
5C5126:  MOV             R1, R5; float
5C5128:  VSTR            S20, [SP,#0x48+var_44]
5C512C:  MOV             R3, R8; float
5C512E:  STR             R0, [SP,#0x48+var_48]; float
5C5130:  MOV             R0, R4; float
5C5132:  BLX.W           j__Z14Im2DRenderQuadfffffff; Im2DRenderQuad(float,float,float,float,float,float,float)
5C5136:  MOVS            R0, #0xB
5C5138:  MOVS            R1, #6
5C513A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C513E:  MOVS            R0, #0xA
5C5140:  MOVS            R1, #5
5C5142:  ADD             SP, SP, #0x10
5C5144:  VPOP            {D8-D12}
5C5148:  POP.W           {R8}
5C514C:  POP.W           {R4-R7,LR}
5C5150:  B.W             sub_192888
