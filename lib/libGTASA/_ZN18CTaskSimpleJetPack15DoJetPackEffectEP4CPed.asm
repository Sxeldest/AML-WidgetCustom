; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack15DoJetPackEffectEP4CPed
; Address            : 0x5321D4 - 0x532376
; =========================================================

5321D4:  PUSH            {R4-R7,LR}
5321D6:  ADD             R7, SP, #0xC
5321D8:  PUSH.W          {R11}
5321DC:  SUB             SP, SP, #0x10
5321DE:  MOV             R4, R0
5321E0:  LDR             R0, [R1,#0x18]
5321E2:  CBZ             R0, loc_53225A
5321E4:  LDR             R0, [R0,#4]
5321E6:  LDR             R1, [R4,#0x64]
5321E8:  ADD.W           R5, R0, #0x10
5321EC:  CBNZ            R1, loc_532222
5321EE:  LDR             R0, =(g_fxMan_ptr - 0x5321FA)
5321F0:  ADR             R1, aJetpack; "jetpack"
5321F2:  ADD             R2, SP, #0x20+var_1C; int
5321F4:  MOVS            R6, #0
5321F6:  ADD             R0, PC; g_fxMan_ptr
5321F8:  MOV             R3, R5; int
5321FA:  STRD.W          R6, R6, [SP,#0x20+var_18]
5321FE:  LDR             R0, [R0]; g_fxMan ; int
532200:  STRD.W          R6, R6, [SP,#0x20+var_20]; int
532204:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
532208:  CMP             R0, #0
53220A:  STR             R0, [R4,#0x64]
53220C:  BEQ             loc_532222
53220E:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
532212:  LDR             R0, [R4,#0x64]; this
532214:  MOVS            R1, #1; unsigned __int8
532216:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
53221A:  LDR             R0, [R4,#0x64]; this
53221C:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
532220:  STR             R6, [R4,#0x6C]
532222:  LDR             R0, [R4,#0x68]
532224:  CBNZ            R0, loc_53225A
532226:  LDR             R0, =(g_fxMan_ptr - 0x532232)
532228:  ADR             R1, aJetpack; "jetpack"
53222A:  ADD             R2, SP, #0x20+var_1C; int
53222C:  MOVS            R6, #0
53222E:  ADD             R0, PC; g_fxMan_ptr
532230:  MOV             R3, R5; int
532232:  STRD.W          R6, R6, [SP,#0x20+var_18]
532236:  LDR             R0, [R0]; g_fxMan ; int
532238:  STRD.W          R6, R6, [SP,#0x20+var_20]; int
53223C:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
532240:  CMP             R0, #0
532242:  STR             R0, [R4,#0x68]
532244:  BEQ             loc_53225A
532246:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
53224A:  LDR             R0, [R4,#0x68]; this
53224C:  MOVS            R1, #1; unsigned __int8
53224E:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
532252:  LDR             R0, [R4,#0x68]; this
532254:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
532258:  STR             R6, [R4,#0x6C]
53225A:  LDR             R0, =(byte_9FF864 - 0x532260)
53225C:  ADD             R0, PC; byte_9FF864
53225E:  LDRB            R0, [R0]
532260:  DMB.W           ISH
532264:  TST.W           R0, #1
532268:  BNE             loc_532290
53226A:  LDR             R0, =(byte_9FF864 - 0x532270)
53226C:  ADD             R0, PC; byte_9FF864 ; __guard *
53226E:  BLX             j___cxa_guard_acquire
532272:  CBZ             R0, loc_532290
532274:  LDR             R1, =(dword_9FF858 - 0x532282)
532276:  MOVW            R3, #0x999A
53227A:  LDR             R0, =(byte_9FF864 - 0x532288)
53227C:  MOVS            R2, #0
53227E:  ADD             R1, PC; dword_9FF858
532280:  MOVT            R3, #0xBE19
532284:  ADD             R0, PC; byte_9FF864 ; __guard *
532286:  STRD.W          R2, R2, [R1]
53228A:  STR             R3, [R1,#(dword_9FF860 - 0x9FF858)]
53228C:  BLX             j___cxa_guard_release
532290:  LDR             R0, [R4,#0x64]
532292:  CBZ             R0, loc_5322B4
532294:  LDR             R1, =(aJetball1 - 0x53229C); "jetball1"
532296:  LDR             R0, [R4,#0x40]
532298:  ADD             R1, PC; "jetball1"
53229A:  BLX             j__ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc; CClumpModelInfo::GetFrameFromName(RpClump *,char const*)
53229E:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5322A2:  MOV             R1, R0
5322A4:  LDR             R0, [R4,#0x64]
5322A6:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
5322AA:  LDR             R1, =(dword_9FF858 - 0x5322B2)
5322AC:  LDR             R0, [R4,#0x64]
5322AE:  ADD             R1, PC; dword_9FF858
5322B0:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
5322B4:  LDR             R0, [R4,#0x68]
5322B6:  CBZ             R0, loc_5322D8
5322B8:  LDR             R1, =(aJetball2 - 0x5322C0); "jetball2"
5322BA:  LDR             R0, [R4,#0x40]
5322BC:  ADD             R1, PC; "jetball2"
5322BE:  BLX             j__ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc; CClumpModelInfo::GetFrameFromName(RpClump *,char const*)
5322C2:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5322C6:  MOV             R1, R0
5322C8:  LDR             R0, [R4,#0x68]
5322CA:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
5322CE:  LDR             R1, =(dword_9FF858 - 0x5322D6)
5322D0:  LDR             R0, [R4,#0x68]
5322D2:  ADD             R1, PC; dword_9FF858
5322D4:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
5322D8:  LDRB            R0, [R4,#0xE]
5322DA:  CBZ             R0, loc_5322E2
5322DC:  VMOV.F32        S2, #1.0
5322E0:  B               loc_5322FC
5322E2:  VLDR            S0, [R4,#0x10]
5322E6:  VMOV.F32        S4, #1.0
5322EA:  VLDR            S2, =0.0
5322EE:  VCMP.F32        S0, #0.0
5322F2:  VMRS            APSR_nzcv, FPSCR
5322F6:  IT NE
5322F8:  VMOVNE.F32      S2, S4
5322FC:  VLDR            S0, [R4,#0x6C]
532300:  VCMPE.F32       S0, S2
532304:  VMRS            APSR_nzcv, FPSCR
532308:  BGE             loc_532330
53230A:  VLDR            S2, =0.1
53230E:  VADD.F32        S0, S0, S2
532312:  VMOV.F32        S2, #1.0
532316:  VSTR            S0, [R4,#0x6C]
53231A:  VCMPE.F32       S0, S2
53231E:  VMRS            APSR_nzcv, FPSCR
532322:  ITTT GT
532324:  MOVGT.W         R0, #0x3F800000
532328:  STRGT           R0, [R4,#0x6C]
53232A:  VMOVGT.F32      S0, S2
53232E:  B               loc_532350
532330:  BLE             loc_532350
532332:  VLDR            S2, =-0.1
532336:  VADD.F32        S0, S0, S2
53233A:  VCMPE.F32       S0, #0.0
53233E:  VSTR            S0, [R4,#0x6C]
532342:  VMRS            APSR_nzcv, FPSCR
532346:  ITTT LT
532348:  MOVLT           R0, #0
53234A:  VLDRLT          S0, =0.0
53234E:  STRLT           R0, [R4,#0x6C]
532350:  LDR             R0, [R4,#0x64]; this
532352:  CMP             R0, #0
532354:  ITTT NE
532356:  VMOVNE          R2, S0; float
53235A:  MOVNE           R1, #1; unsigned __int8
53235C:  BLXNE           j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
532360:  LDR             R0, [R4,#0x68]; this
532362:  CMP             R0, #0
532364:  ITTT NE
532366:  LDRNE           R2, [R4,#0x6C]; float
532368:  MOVNE           R1, #1; unsigned __int8
53236A:  BLXNE           j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
53236E:  ADD             SP, SP, #0x10
532370:  POP.W           {R11}
532374:  POP             {R4-R7,PC}
