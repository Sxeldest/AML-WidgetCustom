; =========================================================
; Game Engine Function: _ZN4Fx_c13AddWheelGrassEP8CVehicle7CVectorhf
; Address            : 0x365288 - 0x3654DC
; =========================================================

365288:  PUSH            {R4-R7,LR}
36528A:  ADD             R7, SP, #0xC
36528C:  PUSH.W          {R8-R11}
365290:  SUB             SP, SP, #4
365292:  VPUSH           {D8-D15}
365296:  SUB             SP, SP, #0x48
365298:  MOV             R6, R1
36529A:  MOVS            R0, #0; int
36529C:  MOV             R9, R3
36529E:  MOV             R5, R2
3652A0:  LDR.W           R4, [R6,#0x464]
3652A4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3652A8:  CMP             R4, R0
3652AA:  BEQ             loc_3652BC
3652AC:  MOVS            R0, #1; int
3652AE:  LDR.W           R4, [R6,#0x464]
3652B2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3652B6:  CMP             R4, R0
3652B8:  BNE.W           loc_3654CE
3652BC:  MOV.W           R0, #0xFFFFFFFF; int
3652C0:  MOVS            R1, #0; bool
3652C2:  LDR             R4, [R7,#arg_0]
3652C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3652C8:  LDR             R1, =(TheCamera_ptr - 0x3652D6)
3652CA:  VMOV            S0, R9
3652CE:  VMOV            S8, R5
3652D2:  ADD             R1, PC; TheCamera_ptr
3652D4:  LDR             R1, [R1]; TheCamera
3652D6:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
3652D8:  ADD.W           R3, R2, #0x30 ; '0'
3652DC:  CMP             R2, #0
3652DE:  IT EQ
3652E0:  ADDEQ           R3, R1, #4
3652E2:  VLDR            S2, [R3]
3652E6:  VLDR            S4, [R3,#4]
3652EA:  VSUB.F32        S2, S2, S8
3652EE:  VLDR            S6, [R3,#8]
3652F2:  VSUB.F32        S0, S4, S0
3652F6:  VMOV            S4, R4
3652FA:  VSUB.F32        S4, S6, S4
3652FE:  VMUL.F32        S2, S2, S2
365302:  VMUL.F32        S0, S0, S0
365306:  VMUL.F32        S4, S4, S4
36530A:  VADD.F32        S0, S2, S0
36530E:  VLDR            S2, =625.0
365312:  VADD.F32        S0, S0, S4
365316:  VCMPE.F32       S0, S2
36531A:  VMRS            APSR_nzcv, FPSCR
36531E:  BGT.W           loc_3654CE
365322:  VLDR            S2, =400.0
365326:  VCMPE.F32       S0, S2
36532A:  VMRS            APSR_nzcv, FPSCR
36532E:  BLE             loc_365344
365330:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x365338)
365332:  LDRH            R1, [R6,#0x26]
365334:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
365336:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
365338:  LDR             R0, [R0]; CTimer::m_FrameCounter
36533A:  ADD             R0, R1
36533C:  LSLS            R0, R0, #0x1E
36533E:  BNE.W           loc_3654CE
365342:  B               loc_365366
365344:  CBZ             R0, loc_365354
365346:  VLDR            S2, =64.0
36534A:  VCMPE.F32       S0, S2
36534E:  VMRS            APSR_nzcv, FPSCR
365352:  BLE             loc_365366
365354:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x36535C)
365356:  LDRH            R1, [R6,#0x26]
365358:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
36535A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
36535C:  LDR             R0, [R0]; CTimer::m_FrameCounter
36535E:  ADD             R0, R1
365360:  LSLS            R0, R0, #0x1F
365362:  BNE.W           loc_3654CE
365366:  MOVW            R0, #0xCCCD
36536A:  MOVS            R2, #0
36536C:  MOV.W           R1, #0x3F800000
365370:  MOVT            R0, #0x3D4C
365374:  STRD.W          R1, R2, [SP,#0xA8+var_A8]; float
365378:  MOVW            R1, #0xC28F
36537C:  STRD.W          R2, R0, [SP,#0xA8+var_A0]; float
365380:  MOVW            R2, #0x51EC
365384:  MOVT            R1, #0x3CF5; float
365388:  ADD             R0, SP, #0xA8+var_7C; this
36538A:  MOVT            R2, #0x3DB8; float
36538E:  MOV             R3, R1; float
365390:  VLDR            S16, [R7,#arg_8]
365394:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
365398:  LDR             R0, =(g_fx_ptr - 0x3653AE)
36539A:  VMOV.F32        S22, #-1.5
36539E:  VMOV.F32        S26, #1.5
3653A2:  VLDR            S18, =4.6566e-10
3653A6:  VMOV.F32        S28, #2.0
3653AA:  ADD             R0, PC; g_fx_ptr
3653AC:  VLDR            S20, =0.03
3653B0:  ADD             R4, SP, #0xA8+var_94
3653B2:  LDR.W           R8, [R0]; g_fx
3653B6:  ADD.W           R10, SP, #0xA8+var_88
3653BA:  VLDR            S24, =0.0
3653BE:  MOV.W           R11, #3
3653C2:  VLDR            S30, =0.4
3653C6:  VLDR            S17, =-0.2
3653CA:  BLX             rand
3653CE:  VMOV            S0, R0
3653D2:  VCVT.F32.S32    S0, S0
3653D6:  VMUL.F32        S0, S0, S18
3653DA:  VMUL.F32        S0, S0, S20
3653DE:  VADD.F32        S0, S0, S20
3653E2:  VSTR            S0, [SP,#0xA8+var_6C]
3653E6:  VLDR            S19, [R6,#0x48]
3653EA:  BLX             rand
3653EE:  VMOV            S0, R0
3653F2:  VMUL.F32        S2, S19, S22
3653F6:  VCVT.F32.S32    S0, S0
3653FA:  VMUL.F32        S0, S0, S18
3653FE:  VMUL.F32        S0, S2, S0
365402:  VADD.F32        S0, S0, S24
365406:  VSTR            S0, [SP,#0xA8+var_88]
36540A:  VLDR            S19, [R6,#0x4C]
36540E:  BLX             rand
365412:  VMOV            S0, R0
365416:  VMUL.F32        S2, S19, S22
36541A:  VCVT.F32.S32    S0, S0
36541E:  VMUL.F32        S0, S0, S18
365422:  VMUL.F32        S0, S2, S0
365426:  VADD.F32        S0, S0, S24
36542A:  VSTR            S0, [SP,#0xA8+var_84]
36542E:  BLX             rand
365432:  VMOV            S0, R0
365436:  LDR             R0, [R7,#arg_0]
365438:  VCVT.F32.S32    S0, S0
36543C:  VMUL.F32        S0, S0, S18
365440:  VMUL.F32        S0, S0, S26
365444:  VADD.F32        S0, S0, S28
365448:  VSTR            S0, [SP,#0xA8+var_80]
36544C:  STRD.W          R5, R9, [SP,#0xA8+var_94]
365450:  STR             R0, [SP,#0xA8+var_8C]
365452:  BLX             rand
365456:  VMOV            S0, R0
36545A:  VCVT.F32.S32    S0, S0
36545E:  VLDR            S2, [SP,#0xA8+var_94]
365462:  VMUL.F32        S0, S0, S18
365466:  VMUL.F32        S0, S0, S30
36546A:  VADD.F32        S0, S0, S17
36546E:  VADD.F32        S0, S2, S0
365472:  VSTR            S0, [SP,#0xA8+var_94]
365476:  BLX             rand
36547A:  VMOV            S0, R0
36547E:  MOV             R1, #0x3F19999A
365486:  MOV             R2, R10; int
365488:  VCVT.F32.S32    S0, S0
36548C:  VLDR            S2, [SP,#0xA8+var_90]
365490:  STR             R1, [SP,#0xA8+var_9C]; float
365492:  MOVS            R1, #0
365494:  STR             R1, [SP,#0xA8+var_98]; int
365496:  ADD             R1, SP, #0xA8+var_7C
365498:  VSTR            S16, [SP,#0xA8+var_A0]
36549C:  MOVS            R3, #0; int
36549E:  STR             R1, [SP,#0xA8+var_A8]; int
3654A0:  MOVS            R1, #0
3654A2:  LDR.W           R0, [R8,#(dword_82055C - 0x820520)]; int
3654A6:  MOVT            R1, #0xBF80
3654AA:  STR             R1, [SP,#0xA8+var_A4]; float
3654AC:  MOV             R1, R4; int
3654AE:  VMUL.F32        S0, S0, S18
3654B2:  VMUL.F32        S0, S0, S30
3654B6:  VADD.F32        S0, S0, S17
3654BA:  VADD.F32        S0, S2, S0
3654BE:  VSTR            S0, [SP,#0xA8+var_90]
3654C2:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
3654C6:  SUBS.W          R11, R11, #1
3654CA:  BNE.W           loc_3653CA
3654CE:  ADD             SP, SP, #0x48 ; 'H'
3654D0:  VPOP            {D8-D15}
3654D4:  ADD             SP, SP, #4
3654D6:  POP.W           {R8-R11}
3654DA:  POP             {R4-R7,PC}
