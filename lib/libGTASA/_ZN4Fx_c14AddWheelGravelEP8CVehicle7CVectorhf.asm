; =========================================================
; Game Engine Function: _ZN4Fx_c14AddWheelGravelEP8CVehicle7CVectorhf
; Address            : 0x36550C - 0x36575A
; =========================================================

36550C:  PUSH            {R4-R7,LR}
36550E:  ADD             R7, SP, #0xC
365510:  PUSH.W          {R8-R11}
365514:  SUB             SP, SP, #4
365516:  VPUSH           {D8-D15}
36551A:  SUB             SP, SP, #0x48
36551C:  MOV             R6, R1
36551E:  MOVS            R0, #0; int
365520:  MOV             R9, R3
365522:  MOV             R5, R2
365524:  LDR.W           R4, [R6,#0x464]
365528:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
36552C:  CMP             R4, R0
36552E:  BEQ             loc_365540
365530:  MOVS            R0, #1; int
365532:  LDR.W           R4, [R6,#0x464]
365536:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
36553A:  CMP             R4, R0
36553C:  BNE.W           loc_36574C
365540:  MOV.W           R0, #0xFFFFFFFF; int
365544:  MOVS            R1, #0; bool
365546:  LDR             R4, [R7,#arg_0]
365548:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
36554C:  LDR             R1, =(TheCamera_ptr - 0x36555A)
36554E:  VMOV            S0, R9
365552:  VMOV            S8, R5
365556:  ADD             R1, PC; TheCamera_ptr
365558:  LDR             R1, [R1]; TheCamera
36555A:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
36555C:  ADD.W           R3, R2, #0x30 ; '0'
365560:  CMP             R2, #0
365562:  IT EQ
365564:  ADDEQ           R3, R1, #4
365566:  VLDR            S2, [R3]
36556A:  VLDR            S4, [R3,#4]
36556E:  VSUB.F32        S2, S2, S8
365572:  VLDR            S6, [R3,#8]
365576:  VSUB.F32        S0, S4, S0
36557A:  VMOV            S4, R4
36557E:  VSUB.F32        S4, S6, S4
365582:  VMUL.F32        S2, S2, S2
365586:  VMUL.F32        S0, S0, S0
36558A:  VMUL.F32        S4, S4, S4
36558E:  VADD.F32        S0, S2, S0
365592:  VLDR            S2, =625.0
365596:  VADD.F32        S0, S0, S4
36559A:  VCMPE.F32       S0, S2
36559E:  VMRS            APSR_nzcv, FPSCR
3655A2:  BGT.W           loc_36574C
3655A6:  VLDR            S2, =400.0
3655AA:  VCMPE.F32       S0, S2
3655AE:  VMRS            APSR_nzcv, FPSCR
3655B2:  BLE             loc_3655C8
3655B4:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3655BC)
3655B6:  LDRH            R1, [R6,#0x26]
3655B8:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3655BA:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3655BC:  LDR             R0, [R0]; CTimer::m_FrameCounter
3655BE:  ADD             R0, R1
3655C0:  LSLS            R0, R0, #0x1E
3655C2:  BNE.W           loc_36574C
3655C6:  B               loc_3655EA
3655C8:  CBZ             R0, loc_3655D8
3655CA:  VLDR            S2, =64.0
3655CE:  VCMPE.F32       S0, S2
3655D2:  VMRS            APSR_nzcv, FPSCR
3655D6:  BLE             loc_3655EA
3655D8:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3655E0)
3655DA:  LDRH            R1, [R6,#0x26]
3655DC:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3655DE:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3655E0:  LDR             R0, [R0]; CTimer::m_FrameCounter
3655E2:  ADD             R0, R1
3655E4:  LSLS            R0, R0, #0x1F
3655E6:  BNE.W           loc_36574C
3655EA:  MOVW            R0, #0xCCCD
3655EE:  MOVS            R2, #0
3655F0:  MOV.W           R1, #0x3F800000
3655F4:  MOVT            R0, #0x3D4C
3655F8:  STRD.W          R1, R2, [SP,#0xA8+var_A8]; float
3655FC:  MOV.W           R1, #0x3E800000; float
365600:  STRD.W          R2, R0, [SP,#0xA8+var_A0]; float
365604:  ADD             R0, SP, #0xA8+var_7C; this
365606:  MOV.W           R2, #0x3E800000; float
36560A:  MOV.W           R3, #0x3E800000; float
36560E:  VLDR            S16, [R7,#arg_8]
365612:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
365616:  LDR             R0, =(g_fx_ptr - 0x36562C)
365618:  VMOV.F32        S22, #-1.5
36561C:  VMOV.F32        S26, #1.5
365620:  VLDR            S18, =4.6566e-10
365624:  VMOV.F32        S28, #2.0
365628:  ADD             R0, PC; g_fx_ptr
36562A:  VLDR            S20, =0.03
36562E:  ADD             R4, SP, #0xA8+var_94
365630:  LDR.W           R8, [R0]; g_fx
365634:  ADD.W           R10, SP, #0xA8+var_88
365638:  VLDR            S24, =0.0
36563C:  MOV.W           R11, #3
365640:  VLDR            S30, =0.4
365644:  VLDR            S17, =-0.2
365648:  BLX             rand
36564C:  VMOV            S0, R0
365650:  VCVT.F32.S32    S0, S0
365654:  VMUL.F32        S0, S0, S18
365658:  VMUL.F32        S0, S0, S20
36565C:  VADD.F32        S0, S0, S20
365660:  VSTR            S0, [SP,#0xA8+var_6C]
365664:  VLDR            S19, [R6,#0x48]
365668:  BLX             rand
36566C:  VMOV            S0, R0
365670:  VMUL.F32        S2, S19, S22
365674:  VCVT.F32.S32    S0, S0
365678:  VMUL.F32        S0, S0, S18
36567C:  VMUL.F32        S0, S2, S0
365680:  VADD.F32        S0, S0, S24
365684:  VSTR            S0, [SP,#0xA8+var_88]
365688:  VLDR            S19, [R6,#0x4C]
36568C:  BLX             rand
365690:  VMOV            S0, R0
365694:  VMUL.F32        S2, S19, S22
365698:  VCVT.F32.S32    S0, S0
36569C:  VMUL.F32        S0, S0, S18
3656A0:  VMUL.F32        S0, S2, S0
3656A4:  VADD.F32        S0, S0, S24
3656A8:  VSTR            S0, [SP,#0xA8+var_84]
3656AC:  BLX             rand
3656B0:  VMOV            S0, R0
3656B4:  LDR             R0, [R7,#arg_0]
3656B6:  VCVT.F32.S32    S0, S0
3656BA:  VMUL.F32        S0, S0, S18
3656BE:  VMUL.F32        S0, S0, S26
3656C2:  VADD.F32        S0, S0, S28
3656C6:  VSTR            S0, [SP,#0xA8+var_80]
3656CA:  STRD.W          R5, R9, [SP,#0xA8+var_94]
3656CE:  STR             R0, [SP,#0xA8+var_8C]
3656D0:  BLX             rand
3656D4:  VMOV            S0, R0
3656D8:  VCVT.F32.S32    S0, S0
3656DC:  VLDR            S2, [SP,#0xA8+var_94]
3656E0:  VMUL.F32        S0, S0, S18
3656E4:  VMUL.F32        S0, S0, S30
3656E8:  VADD.F32        S0, S0, S17
3656EC:  VADD.F32        S0, S2, S0
3656F0:  VSTR            S0, [SP,#0xA8+var_94]
3656F4:  BLX             rand
3656F8:  VMOV            S0, R0
3656FC:  MOV             R1, #0x3F19999A
365704:  MOV             R2, R10; int
365706:  VCVT.F32.S32    S0, S0
36570A:  VLDR            S2, [SP,#0xA8+var_90]
36570E:  STR             R1, [SP,#0xA8+var_9C]; float
365710:  MOVS            R1, #0
365712:  STR             R1, [SP,#0xA8+var_98]; int
365714:  ADD             R1, SP, #0xA8+var_7C
365716:  VSTR            S16, [SP,#0xA8+var_A0]
36571A:  MOVS            R3, #0; int
36571C:  STR             R1, [SP,#0xA8+var_A8]; int
36571E:  MOVS            R1, #0
365720:  LDR.W           R0, [R8,#(dword_82055C - 0x820520)]; int
365724:  MOVT            R1, #0xBF80
365728:  STR             R1, [SP,#0xA8+var_A4]; float
36572A:  MOV             R1, R4; int
36572C:  VMUL.F32        S0, S0, S18
365730:  VMUL.F32        S0, S0, S30
365734:  VADD.F32        S0, S0, S17
365738:  VADD.F32        S0, S2, S0
36573C:  VSTR            S0, [SP,#0xA8+var_90]
365740:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
365744:  SUBS.W          R11, R11, #1
365748:  BNE.W           loc_365648
36574C:  ADD             SP, SP, #0x48 ; 'H'
36574E:  VPOP            {D8-D15}
365752:  ADD             SP, SP, #4
365754:  POP.W           {R8-R11}
365758:  POP             {R4-R7,PC}
