; =========================================================
; Game Engine Function: _ZN8CVehicle6RenderEv
; Address            : 0x5823BC - 0x5824A6
; =========================================================

5823BC:  PUSH            {R4,R5,R7,LR}
5823BE:  ADD             R7, SP, #8
5823C0:  MOV             R4, R0
5823C2:  LDR             R0, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x5823C8)
5823C4:  ADD             R0, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
5823C6:  LDR             R0, [R0]; CMirrors::TypeOfMirror ...
5823C8:  LDR             R0, [R0]; CMirrors::TypeOfMirror
5823CA:  CMP             R0, #3
5823CC:  IT EQ
5823CE:  POPEQ           {R4,R5,R7,PC}
5823D0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5823D8)
5823D2:  LDR             R1, =(g_fx_ptr - 0x5823DE)
5823D4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5823D6:  LDRSH.W         R2, [R4,#0x26]
5823DA:  ADD             R1, PC; g_fx_ptr
5823DC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5823DE:  LDR.W           R5, [R0,R2,LSL#2]
5823E2:  LDR             R0, [R1]; g_fx ; this
5823E4:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
5823E8:  CMP             R0, #1
5823EA:  BLT             loc_582406
5823EC:  ADDW            R0, R4, #0x4BC
5823F0:  VLDR            S0, [R0]
5823F4:  VCVT.U32.F32    S0, S0
5823F8:  VMOV            R0, S0
5823FC:  AND.W           R1, R0, #0xF; CVehicleModelInfo *
582400:  MOV             R0, R5; this
582402:  BLX             j__ZN14CCarFXRenderer9RemapDirtEP17CVehicleModelInfoj; CCarFXRenderer::RemapDirt(CVehicleModelInfo *,uint)
582406:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x58240C)
582408:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
58240A:  LDR             R0, [R0]; MobileSettings::settings ...
58240C:  LDR             R0, [R0,#(dword_6E03FC - 0x6E03F4)]
58240E:  CBZ             R0, loc_58248E
582410:  LDR             R1, =(TheCamera_ptr - 0x58241A)
582412:  SUBS            R0, #1
582414:  LDR             R2, [R4,#0x14]
582416:  ADD             R1, PC; TheCamera_ptr
582418:  CMP             R2, #0
58241A:  LDR             R3, [R1]; TheCamera
58241C:  ADD.W           R1, R2, #0x30 ; '0'
582420:  LDR             R5, [R3,#(dword_951FBC - 0x951FA8)]
582422:  IT EQ
582424:  ADDEQ           R1, R4, #4
582426:  ADD.W           R2, R5, #0x30 ; '0'
58242A:  CMP             R5, #0
58242C:  IT EQ
58242E:  ADDEQ           R2, R3, #4
582430:  CMP             R0, #2
582432:  BHI             loc_58249C
582434:  VLDR            S0, [R1]
582438:  VLDR            S6, [R2]
58243C:  VLDR            S2, [R1,#4]
582440:  VLDR            S8, [R2,#4]
582444:  VSUB.F32        S0, S6, S0
582448:  VLDR            S4, [R1,#8]
58244C:  ADR             R1, dword_5824C0
58244E:  VSUB.F32        S2, S8, S2
582452:  VLDR            S10, [R2,#8]
582456:  ADD.W           R1, R1, R0,LSL#2
58245A:  VSUB.F32        S4, S10, S4
58245E:  VMUL.F32        S0, S0, S0
582462:  VMUL.F32        S2, S2, S2
582466:  VMUL.F32        S4, S4, S4
58246A:  VADD.F32        S0, S0, S2
58246E:  VLDR            S2, [R1]
582472:  ADR             R1, dword_5824CC
582474:  ADD.W           R0, R1, R0,LSL#2
582478:  VADD.F32        S0, S0, S4
58247C:  VSQRT.F32       S0, S0
582480:  VADD.F32        S0, S0, S2
582484:  VLDR            S2, [R0]
582488:  VDIV.F32        S0, S0, S2
58248C:  B               loc_582492
58248E:  VLDR            S0, =0.0
582492:  LDR             R0, =(carLodLerp_ptr - 0x582498)
582494:  ADD             R0, PC; carLodLerp_ptr
582496:  LDR             R0, [R0]; carLodLerp
582498:  VSTR            S0, [R0]
58249C:  MOV             R0, R4; this
58249E:  POP.W           {R4,R5,R7,LR}
5824A2:  B.W             sub_18D690
