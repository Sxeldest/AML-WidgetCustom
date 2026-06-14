; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline18CustomPipeRenderCBEP10RwResEntryPvhj
; Address            : 0x2CB278 - 0x2CB398
; =========================================================

2CB278:  PUSH            {R4-R7,LR}
2CB27A:  ADD             R7, SP, #0xC
2CB27C:  PUSH.W          {R8-R11}
2CB280:  SUB             SP, SP, #4
2CB282:  VPUSH           {D8}
2CB286:  SUB             SP, SP, #0x10
2CB288:  LDRH            R4, [R0,#0x1A]
2CB28A:  MOV             R9, R3
2CB28C:  CMP             R4, #0
2CB28E:  BEQ             loc_2CB38A
2CB290:  ADD.W           R5, R0, #0x1C
2CB294:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x2CB2A2)
2CB296:  AND.W           R10, R9, #0x84
2CB29A:  VLDR            S16, =255.0
2CB29E:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
2CB2A0:  AND.W           R1, R9, #8
2CB2A4:  STR             R1, [SP,#0x38+var_2C]
2CB2A6:  LDR.W           R8, [R0]; _rwOpenGLLightingEnabled
2CB2AA:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x2CB2B0)
2CB2AC:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
2CB2AE:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
2CB2B0:  STR             R0, [SP,#0x38+var_30]
2CB2B2:  LDR             R0, =(_rwOpenGLOpaqueBlack_ptr - 0x2CB2B8)
2CB2B4:  ADD             R0, PC; _rwOpenGLOpaqueBlack_ptr
2CB2B6:  LDR             R0, [R0]; _rwOpenGLOpaqueBlack
2CB2B8:  STR             R0, [SP,#0x38+var_38]
2CB2BA:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x2CB2C0)
2CB2BC:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
2CB2BE:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
2CB2C0:  STR             R0, [SP,#0x38+var_34]
2CB2C2:  LDRD.W          R0, R1, [R5,#0x30]
2CB2C6:  SUBS            R4, #1
2CB2C8:  CMP             R1, #0
2CB2CA:  LDRB            R0, [R0,#7]
2CB2CC:  IT EQ
2CB2CE:  CMPEQ           R0, #0xFF
2CB2D0:  BNE             loc_2CB2D6
2CB2D2:  MOVS            R6, #0
2CB2D4:  B               loc_2CB2F0
2CB2D6:  CMP             R0, #0
2CB2D8:  BEQ             loc_2CB384
2CB2DA:  VMOV            S0, R0
2CB2DE:  VCVT.F32.U32    S0, S0
2CB2E2:  VDIV.F32        S0, S0, S16
2CB2E6:  VMOV            R0, S0; float
2CB2EA:  BLX             j__Z23emu_EnableAlphaModulatef; emu_EnableAlphaModulate(float)
2CB2EE:  MOVS            R6, #1
2CB2F0:  MOVS            R0, #0xC
2CB2F2:  MOV             R1, R6
2CB2F4:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
2CB2F8:  LDR.W           R0, [R8]
2CB2FC:  CBZ             R0, loc_2CB308
2CB2FE:  LDR             R0, [R5,#0x30]
2CB300:  MOV             R1, R9
2CB302:  BLX             j__Z36_rwOpenGLLightsSetMaterialPropertiesPK10RpMaterialj; _rwOpenGLLightsSetMaterialProperties(RpMaterial const*,uint)
2CB306:  B               loc_2CB328
2CB308:  LDR             R0, [SP,#0x38+var_30]
2CB30A:  LDR             R0, [R0]
2CB30C:  CBZ             R0, loc_2CB31C
2CB30E:  MOVW            R0, #0xB57; unsigned int
2CB312:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
2CB316:  LDR             R0, [SP,#0x38+var_34]
2CB318:  MOVS            R1, #0
2CB31A:  STR             R1, [R0]
2CB31C:  LDR             R0, [SP,#0x38+var_2C]
2CB31E:  CMP             R0, #0
2CB320:  ITT EQ
2CB322:  LDREQ           R0, [SP,#0x38+var_38]; float *
2CB324:  BLXEQ           j__Z14emu_glColor4fvPKf; emu_glColor4fv(float const*)
2CB328:  CMP.W           R10, #0
2CB32C:  ITTT NE
2CB32E:  LDRNE           R0, [R5,#0x30]
2CB330:  LDRNE.W         R11, [R0]
2CB334:  CMPNE.W         R11, #0
2CB338:  BEQ             loc_2CB354
2CB33A:  B.W             loc_3F677A
2CB33E:  LDRB.W          R0, [R1,#0x30]
2CB342:  LSLS            R0, R0, #0x1F
2CB344:  BNE             loc_2CB374
2CB346:  MOVS            R0, #1
2CB348:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
2CB34C:  LDRB.W          R1, [R11,#0x50]
2CB350:  MOVS            R0, #9
2CB352:  B               loc_2CB358
2CB354:  MOVS            R0, #1
2CB356:  MOVS            R1, #0
2CB358:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
2CB35C:  MOV             R0, R5; this
2CB35E:  BLX             j__ZN24RxOpenGLMeshInstanceData10DrawStoredEv; RxOpenGLMeshInstanceData::DrawStored(void)
2CB362:  CMP             R6, #0
2CB364:  ADD.W           R5, R5, #0x38 ; '8'
2CB368:  IT NE
2CB36A:  BLXNE           j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
2CB36E:  LSLS            R0, R4, #0x10
2CB370:  BNE             loc_2CB2C2
2CB372:  B               loc_2CB38A
2CB374:  CMP             R6, #0
2CB376:  IT NE
2CB378:  BLXNE           j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
2CB37C:  ADDS            R5, #0x38 ; '8'
2CB37E:  LSLS            R0, R4, #0x10
2CB380:  BNE             loc_2CB2C2
2CB382:  B               loc_2CB38A
2CB384:  ADDS            R5, #0x38 ; '8'
2CB386:  LSLS            R0, R4, #0x10
2CB388:  BNE             loc_2CB2C2
2CB38A:  ADD             SP, SP, #0x10
2CB38C:  VPOP            {D8}
2CB390:  ADD             SP, SP, #4
2CB392:  POP.W           {R8-R11}
2CB396:  POP             {R4-R7,PC}
