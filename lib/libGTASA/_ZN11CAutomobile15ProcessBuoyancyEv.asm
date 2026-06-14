; =========================================================
; Game Engine Function: _ZN11CAutomobile15ProcessBuoyancyEv
; Address            : 0x5533C0 - 0x553DAA
; =========================================================

5533C0:  PUSH            {R4-R7,LR}
5533C2:  ADD             R7, SP, #0xC
5533C4:  PUSH.W          {R8-R11}
5533C8:  SUB             SP, SP, #4
5533CA:  VPUSH           {D8-D12}
5533CE:  SUB             SP, SP, #0xB8
5533D0:  MOV             R10, R0
5533D2:  MOVS            R0, #0
5533D4:  STR             R0, [SP,#0x100+var_100]; unsigned __int8
5533D6:  ADD             R0, SP, #0x100+var_64; this
5533D8:  MOVS            R1, #0; unsigned __int8
5533DA:  MOVS            R2, #0; unsigned __int8
5533DC:  MOVS            R3, #0; unsigned __int8
5533DE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5533E2:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5533EA)
5533E6:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr ; this
5533E8:  LDR             R4, [R0]; CTimeCycle::m_CurrentColours ...
5533EA:  BLX             j__ZN10CTimeCycle17GetAmbientRed_ObjEv; CTimeCycle::GetAmbientRed_Obj(void)
5533EE:  MOV             R8, R0
5533F0:  VLDR            S16, [R4,#0xA4]
5533F4:  BLX             j__ZN10CTimeCycle19GetAmbientGreen_ObjEv; CTimeCycle::GetAmbientGreen_Obj(void)
5533F8:  VLDR            S18, =255.0
5533FC:  MOV             R6, R0
5533FE:  VLDR            S20, [R4,#0xA4]
553402:  VMUL.F32        S16, S16, S18
553406:  BLX             j__ZN10CTimeCycle18GetAmbientBlue_ObjEv; CTimeCycle::GetAmbientBlue_Obj(void)
55340A:  VLDR            S0, [R4,#0xA4]
55340E:  VMUL.F32        S2, S20, S18
553412:  VLDR            S4, =0.0039062
553416:  MOV             R5, R0
553418:  VMUL.F32        S0, S0, S18
55341C:  VMOV.F32        S22, #0.5
553420:  VMUL.F32        S16, S16, S4
553424:  VMUL.F32        S18, S2, S4
553428:  VMUL.F32        S20, S0, S4
55342C:  BLX             rand
553430:  UXTH            R0, R0
553432:  VMUL.F32        S2, S16, S22
553436:  VMOV            S0, R0
55343A:  VLDR            S4, =0.000015259
55343E:  VMUL.F32        S6, S18, S22
553442:  VCVT.F32.S32    S0, S0
553446:  VMUL.F32        S8, S20, S22
55344A:  VMOV            S10, R6
55344E:  VMOV            S12, R5
553452:  VMUL.F32        S0, S0, S4
553456:  VMOV            S4, R8
55345A:  VADD.F32        S8, S12, S8
55345E:  VADD.F32        S2, S4, S2
553462:  VADD.F32        S4, S10, S6
553466:  VLDR            S6, =32.0
55346A:  VMUL.F32        S0, S0, S6
55346E:  VLDR            S6, =114.75
553472:  VMUL.F32        S2, S2, S6
553476:  VMUL.F32        S4, S4, S6
55347A:  VMUL.F32        S6, S8, S6
55347E:  VCVT.S32.F32    S0, S0
553482:  VMOV            R0, S0
553486:  VCVT.U32.F32    S0, S2
55348A:  VCVT.U32.F32    S2, S4
55348E:  VCVT.U32.F32    S4, S6
553492:  VMOV            R1, S0; unsigned __int8
553496:  VMOV            R2, S2; unsigned __int8
55349A:  VMOV            R3, S4; unsigned __int8
55349E:  ADDS            R0, #0x80
5534A0:  UXTB            R0, R0
5534A2:  STR             R0, [SP,#0x100+var_100]; unsigned __int8
5534A4:  ADD             R0, SP, #0x100+var_68; this
5534A6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5534AA:  LDR.W           R0, =(mod_Buoyancy_ptr - 0x5534BA)
5534AE:  ADD             R1, SP, #0x100+var_60
5534B0:  LDR.W           R2, [R10,#0xA4]; float
5534B4:  ADD             R3, SP, #0x100+var_54; CVector *
5534B6:  ADD             R0, PC; mod_Buoyancy_ptr
5534B8:  STR             R1, [SP,#0x100+var_100]; CVector *
5534BA:  MOV             R1, R10; CPhysical *
5534BC:  LDR             R0, [R0]; mod_Buoyancy ; this
5534BE:  BLX             j__ZN9cBuoyancy15ProcessBuoyancyEP9CPhysicalfP7CVectorS3_; cBuoyancy::ProcessBuoyancy(CPhysical *,float,CVector *,CVector *)
5534C2:  CMP             R0, #1
5534C4:  BNE.W           loc_553620
5534C8:  LDR.W           R0, [R10,#0x5A4]
5534CC:  CMP             R0, #4
5534CE:  BNE             loc_5534F2
5534D0:  VMOV.F32        S0, #-1.0
5534D4:  VLDR            S2, [R10,#0x50]
5534D8:  VCMPE.F32       S2, S0
5534DC:  VMRS            APSR_nzcv, FPSCR
5534E0:  BGE             loc_5534F2
5534E2:  LDR.W           R0, [R10]
5534E6:  MOV             R1, R10
5534E8:  MOVS            R2, #0
5534EA:  LDR.W           R3, [R0,#0xA8]
5534EE:  MOV             R0, R10
5534F0:  BLX             R3
5534F2:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5534FE)
5534F6:  LDR.W           R0, [R10,#0x44]
5534FA:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5534FC:  VLDR            S18, =0.008
553500:  VLDR            S0, [R10,#0x90]
553504:  ORR.W           R5, R0, #0x8000000
553508:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
55350A:  VLDR            S2, [R10,#0xA4]
55350E:  VMUL.F32        S4, S0, S18
553512:  STR.W           R5, [R10,#0x44]
553516:  VLDR            S6, =0.01
55351A:  VLDR            S0, [R1]
55351E:  VLDR            S24, [SP,#0x100+var_58]
553522:  VMAX.F32        D3, D0, D3
553526:  VCMPE.F32       S2, S4
55352A:  VMRS            APSR_nzcv, FPSCR
55352E:  VMUL.F32        S6, S4, S6
553532:  VDIV.F32        S6, S24, S6
553536:  BGE             loc_553548
553538:  VLDR            S8, =1.05
55353C:  VMUL.F32        S4, S4, S8
553540:  VDIV.F32        S2, S4, S2
553544:  VMUL.F32        S6, S6, S2
553548:  VMOV.F32        S2, #1.5
55354C:  LSLS            R0, R0, #0x1F
55354E:  VMOV.F32        S16, #1.0
553552:  VMOV            R1, S0; y
553556:  VMUL.F32        S20, S6, S2
55355A:  VLDR            S2, =-0.05
55355E:  IT EQ
553560:  VMOVEQ.F32      S20, S6
553564:  VMUL.F32        S2, S20, S2
553568:  VADD.F32        S2, S2, S16
55356C:  VMAX.F32        D1, D1, D11
553570:  VMOV            R0, S2; x
553574:  BLX             powf
553578:  LDRSH.W         R1, [R10,#0x26]
55357C:  VMOV            S22, R0
553580:  MOVW            R0, #0x21B
553584:  CMP             R1, R0
553586:  BNE             loc_5535A6
553588:  LDR.W           R0, [R10,#0x14]
55358C:  VLDR            S0, =0.3
553590:  VLDR            S2, [R0,#0x28]
553594:  VCMPE.F32       S2, S0
553598:  VMRS            APSR_nzcv, FPSCR
55359C:  BLE             loc_5535A6
55359E:  LDRB.W          R0, [R10,#0x42F]
5535A2:  LSLS            R0, R0, #0x19
5535A4:  BPL             loc_5535CE
5535A6:  VLDR            S0, [R10,#0x58]
5535AA:  ADD.W           R0, R10, #0x48 ; 'H'
5535AE:  VLDR            S2, [R10,#0x5C]
5535B2:  VLD1.32         {D16-D17}, [R0]
5535B6:  VMUL.F32        S0, S22, S0
5535BA:  VMUL.F32        S2, S22, S2
5535BE:  VMUL.F32        Q8, Q8, D11[0]
5535C2:  VST1.32         {D16-D17}, [R0]
5535C6:  VSTR            S0, [R10,#0x58]
5535CA:  VSTR            S2, [R10,#0x5C]
5535CE:  VMOV            R3, S24
5535D2:  LDR.W           R0, [R10,#0x388]
5535D6:  LDRB.W          R0, [R0,#0xCF]
5535DA:  LSLS            R0, R0, #0x1E
5535DC:  BPL.W           loc_55372A
5535E0:  ADD.W           R4, R10, #0x860
5535E4:  VLDR            S0, =0.15
5535E8:  VLDR            S2, [R4]
5535EC:  VCMPE.F32       S2, S0
5535F0:  VMRS            APSR_nzcv, FPSCR
5535F4:  BLE.W           loc_55372A
5535F8:  MOVW            R0, #0x1A1
5535FC:  CMP             R1, R0
5535FE:  ITT NE
553600:  MOVWNE          R0, #0x1BF
553604:  CMPNE           R1, R0
553606:  BNE.W           loc_553A9A
55360A:  VMOV.F32        S0, #3.0
55360E:  MOVS            R6, #0
553610:  VCMPE.F32       S20, S0
553614:  VMRS            APSR_nzcv, FPSCR
553618:  BLE.W           loc_55372C
55361C:  STR             R6, [R4]
55361E:  B               loc_553B1E
553620:  LDR.W           R0, [R10,#0x42C]
553624:  MOVS            R3, #0xB9; unsigned __int8
553626:  LDR.W           R1, [R10,#0x388]
55362A:  BIC.W           R0, R0, #0x40000000
55362E:  LDR.W           R2, [R10,#0x44]
553632:  STR.W           R0, [R10,#0x42C]
553636:  MOV             R0, #0xF7FFFEFF
55363E:  ANDS            R0, R2
553640:  STR.W           R0, [R10,#0x44]
553644:  LDR             R0, [R1,#0x24]
553646:  MOVS            R1, #0x9B; unsigned __int8
553648:  STR.W           R0, [R10,#0xA4]
55364C:  MOVS            R0, #0xC4
55364E:  STR             R0, [SP,#0x100+var_100]; unsigned __int8
553650:  ADD             R0, SP, #0x100+var_7C; this
553652:  MOVS            R2, #0x9B; unsigned __int8
553654:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
553658:  MOVS            R0, #0xFF
55365A:  MOVS            R1, #0xFF; unsigned __int8
55365C:  STR             R0, [SP,#0x100+var_100]; unsigned __int8
55365E:  ADD             R0, SP, #0x100+var_C0; this
553660:  MOVS            R2, #0xFF; unsigned __int8
553662:  MOVS            R3, #0xFF; unsigned __int8
553664:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
553668:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x55367C)
55366C:  VMOV.F32        S16, #1.0
553670:  VLDR            S18, =0.3
553674:  ADD.W           R8, SP, #0x100+var_BC
553678:  ADD             R0, PC; g_surfaceInfos_ptr
55367A:  MOV.W           R6, #0x7E8
55367E:  MOVS            R4, #0
553680:  LDR.W           R9, [R0]; g_surfaceInfos
553684:  ADD.W           R0, R10, R6
553688:  VLDR            S0, [R0]
55368C:  VCMPE.F32       S0, S16
553690:  VMRS            APSR_nzcv, FPSCR
553694:  BGE             loc_55371E
553696:  ADD.W           R5, R10, R4
55369A:  MOV             R0, R9; this
55369C:  LDRB.W          R1, [R5,#0x75B]; unsigned int
5536A0:  BLX             j__ZN14SurfaceInfos_c7IsWaterEj; SurfaceInfos_c::IsWater(uint)
5536A4:  CBZ             R0, loc_55371E
5536A6:  LDR.W           R0, [R10,#0x14]
5536AA:  ADD.W           R1, R5, #0x738
5536AE:  VLDR            S6, [R1]
5536B2:  ADDW            R1, R5, #0x73C
5536B6:  VLDR            S0, [R0,#0x20]
5536BA:  CMP             R0, #0
5536BC:  VLDR            S2, [R0,#0x24]
5536C0:  VMUL.F32        S0, S0, S18
5536C4:  VLDR            S8, [R1]
5536C8:  VMUL.F32        S2, S2, S18
5536CC:  ADD.W           R1, R0, #0x30 ; '0'
5536D0:  VLDR            S4, [R0,#0x28]
5536D4:  IT EQ
5536D6:  ADDEQ.W         R1, R10, #4
5536DA:  ADD.W           R0, R5, #0x740
5536DE:  VLDR            S10, [R1,#8]
5536E2:  VMUL.F32        S4, S4, S18
5536E6:  VADD.F32        S0, S0, S6
5536EA:  VLDR            S6, [R1]
5536EE:  VADD.F32        S2, S2, S8
5536F2:  VLDR            S8, [R1,#4]
5536F6:  MOV             R1, R10
5536F8:  VSUB.F32        S0, S0, S6
5536FC:  VSUB.F32        S2, S2, S8
553700:  VMOV            R2, S0
553704:  VLDR            S0, [R0]
553708:  VMOV            R3, S2
55370C:  MOV             R0, R8
55370E:  VADD.F32        S0, S4, S0
553712:  VSUB.F32        S0, S0, S10
553716:  VSTR            S0, [SP,#0x100+var_100]
55371A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
55371E:  ADDS            R6, #4
553720:  ADDS            R4, #0x2C ; ','
553722:  CMP.W           R6, #0x7F8
553726:  BNE             loc_553684
553728:  B               loc_553D9C
55372A:  MOVS            R6, #0
55372C:  ORR.W           R0, R5, #0x8000000
553730:  STR.W           R0, [R10,#0x44]
553734:  LDRD.W          R1, R2, [SP,#0x100+var_60]
553738:  MOV             R0, R10
55373A:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
55373E:  ADD             R3, SP, #0x100+var_60
553740:  LDM             R3, {R1-R3}
553742:  LDRD.W          R0, R5, [SP,#0x100+var_54]
553746:  LDR             R4, [SP,#0x100+var_4C]
553748:  STRD.W          R0, R5, [SP,#0x100+var_100]; float
55374C:  MOV             R0, R10
55374E:  STR             R4, [SP,#0x100+var_F8]; int
553750:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
553754:  VMOV.F32        S0, #3.0
553758:  LDRH.W          R0, [R10,#0x26]
55375C:  MOVW            R1, #0x1BF
553760:  CMP             R0, R1
553762:  VCMPE.F32       S20, S0
553766:  BNE             loc_5537B0
553768:  VMRS            APSR_nzcv, FPSCR
55376C:  BLT             loc_5537BE
55376E:  B               loc_5537E6
553770:  DCFS 255.0
553774:  DCFS 0.0039062
553778:  DCFS 0.000015259
55377C:  DCFS 32.0
553780:  DCFS 114.75
553784:  DCFS 0.008
553788:  DCFS 0.01
55378C:  DCFS 1.05
553790:  DCFS -0.05
553794:  DCFS 0.3
553798:  DCFS 0.15
55379C:  DCFS 0.6
5537A0:  DCFS -0.1
5537A4:  DCFS 100.0
5537A8:  DCFS 125.0
5537AC:  DCFS -0.001
5537B0:  VMRS            APSR_nzcv, FPSCR
5537B4:  BGE             loc_5537E6
5537B6:  MOVW            R1, #0x1A1
5537BA:  CMP             R0, R1
5537BC:  BNE             loc_5537E6
5537BE:  VLDR            S0, =0.6
5537C2:  VCMPE.F32       S20, S0
5537C6:  VMRS            APSR_nzcv, FPSCR
5537CA:  BLT.W           loc_553A64
5537CE:  VMOV.F32        S2, #-0.5
5537D2:  LDR.W           R1, [R10,#0x14]
5537D6:  VLDR            S0, [R1,#0x28]
5537DA:  VCMPE.F32       S0, S2
5537DE:  VMRS            APSR_nzcv, FPSCR
5537E2:  BGT.W           loc_553A64
5537E6:  LDR.W           R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x5537EE)
5537EA:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
5537EC:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
5537EE:  LDRB.W          R1, [R1,#(byte_79681D - 0x7967F4)]
5537F2:  CBNZ            R1, loc_5537FC
5537F4:  MOVW            R1, #0x21B
5537F8:  CMP             R0, R1
5537FA:  BNE             loc_553834
5537FC:  LDRB.W          R0, [R10,#0x3A]
553800:  CMP             R0, #7
553802:  BHI             loc_553834
553804:  LDR.W           R0, [R10,#0x14]
553808:  VLDR            S0, =0.3
55380C:  VLDR            S2, [R0,#0x28]
553810:  VCMPE.F32       S2, S0
553814:  VMRS            APSR_nzcv, FPSCR
553818:  BLE             loc_553834
55381A:  LDRB.W          R0, [R10,#0x42F]
55381E:  LSLS            R0, R0, #0x19
553820:  BMI             loc_553834
553822:  LDR.W           R1, [R10,#0x44]
553826:  ADDW            R0, R10, #0x42C
55382A:  BIC.W           R1, R1, #0x100
55382E:  STR.W           R1, [R10,#0x44]
553832:  B               loc_553A74
553834:  VCMPE.F32       S20, S16
553838:  MOVS            R0, #0
55383A:  VMRS            APSR_nzcv, FPSCR
55383E:  IT GE
553840:  MOVGE           R0, #1
553842:  ORRS            R0, R6
553844:  BNE             loc_5538A0
553846:  VLDR            S0, =0.6
55384A:  VCMPE.F32       S20, S0
55384E:  VMRS            APSR_nzcv, FPSCR
553852:  BLE.W           loc_553A64
553856:  ADD.W           R0, R10, #0x7E8
55385A:  VLDR            S0, [R0]
55385E:  VCMP.F32        S0, S16
553862:  VMRS            APSR_nzcv, FPSCR
553866:  BEQ             loc_5538A0
553868:  ADDW            R0, R10, #0x7EC
55386C:  VLDR            S0, [R0]
553870:  VCMP.F32        S0, S16
553874:  VMRS            APSR_nzcv, FPSCR
553878:  BEQ             loc_5538A0
55387A:  ADD.W           R0, R10, #0x7F0
55387E:  VLDR            S0, [R0]
553882:  VCMP.F32        S0, S16
553886:  VMRS            APSR_nzcv, FPSCR
55388A:  BEQ             loc_5538A0
55388C:  ADDW            R0, R10, #0x7F4
553890:  VLDR            S0, [R0]
553894:  VCMP.F32        S0, S16
553898:  VMRS            APSR_nzcv, FPSCR
55389C:  BNE.W           loc_553A64
5538A0:  VLDR            S0, =-0.1
5538A4:  ADDW            R5, R10, #0x42C
5538A8:  VLDR            S2, [R10,#0x50]
5538AC:  LDR.W           R2, [R10,#0x44]
5538B0:  VCMPE.F32       S2, S0
5538B4:  LDR.W           R1, [R10,#0x42C]
5538B8:  VMRS            APSR_nzcv, FPSCR
5538BC:  ORR.W           R2, R2, #0x100
5538C0:  LDR.W           R0, [R10,#0x430]
5538C4:  ORR.W           R1, R1, #0x40000000
5538C8:  STR.W           R1, [R10,#0x42C]
5538CC:  STR.W           R2, [R10,#0x44]
5538D0:  VLDR            S6, =100.0
5538D4:  VLDR            S8, =125.0
5538D8:  ITTT LT
5538DA:  MOVWLT          R2, #0xCCCD
5538DE:  MOVTLT          R2, #0xBDCC
5538E2:  STRLT.W         R2, [R10,#0x50]
5538E6:  VLDR            S4, [R10,#0x90]
5538EA:  VLDR            S0, [R10,#0xA4]
5538EE:  VMUL.F32        S2, S4, S18
5538F2:  VMUL.F32        S6, S2, S6
5538F6:  VDIV.F32        S6, S6, S8
5538FA:  VCMPE.F32       S0, S6
5538FE:  VMRS            APSR_nzcv, FPSCR
553902:  BLE             loc_553918
553904:  VLDR            S6, =-0.001
553908:  VMUL.F32        S4, S4, S6
55390C:  VMUL.F32        S4, S4, S18
553910:  VADD.F32        S0, S0, S4
553914:  VSTR            S0, [R10,#0xA4]
553918:  VCMPE.F32       S0, S2
55391C:  ADD.W           R2, R10, #0x48 ; 'H'
553920:  VMRS            APSR_nzcv, FPSCR
553924:  STR             R2, [SP,#0x100+var_E0]
553926:  ITT LT
553928:  BICLT.W         R1, R1, #0x10
55392C:  STRDLT.W        R1, R0, [R5]
553930:  LDR.W           R0, [R10,#0x464]
553934:  CMP             R0, #0
553936:  BEQ.W           loc_553B9C
55393A:  LDR             R1, [R0,#0x44]
55393C:  ORR.W           R1, R1, #0x8000000
553940:  STR             R1, [R0,#0x44]
553942:  LDR.W           R0, [R10,#0x464]; this
553946:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
55394A:  CBNZ            R0, loc_553956
55394C:  LDRB.W          R0, [R10,#0x87C]
553950:  LSLS            R0, R0, #0x1D
553952:  BMI.W           loc_553B9C
553956:  LDR.W           R0, [R10,#0x5A4]
55395A:  CMP             R0, #2
55395C:  BNE.W           loc_553A7E
553960:  ADD.W           R0, R10, #0x7E8
553964:  VLDR            S0, [R0]
553968:  VCMP.F32        S0, S16
55396C:  VMRS            APSR_nzcv, FPSCR
553970:  BNE.W           loc_553A7E
553974:  ADDW            R0, R10, #0x7EC
553978:  VLDR            S0, [R0]
55397C:  VCMP.F32        S0, S16
553980:  VMRS            APSR_nzcv, FPSCR
553984:  BNE             loc_553A7E
553986:  ADD.W           R0, R10, #0x7F0
55398A:  VLDR            S0, [R0]
55398E:  VCMP.F32        S0, S16
553992:  VMRS            APSR_nzcv, FPSCR
553996:  BNE             loc_553A7E
553998:  ADDW            R0, R10, #0x7F4
55399C:  VLDR            S0, [R0]
5539A0:  VCMP.F32        S0, S16
5539A4:  VMRS            APSR_nzcv, FPSCR
5539A8:  BNE             loc_553A7E
5539AA:  VLDR            S0, [R10,#0x48]
5539AE:  ADD.W           R8, SP, #0x100+var_7C
5539B2:  VLDR            S2, [R10,#0x4C]
5539B6:  VLDR            S4, [R10,#0x50]
5539BA:  VNEG.F32        S0, S0
5539BE:  VNEG.F32        S2, S2
5539C2:  MOV             R0, R8; this
5539C4:  VNEG.F32        S4, S4
5539C8:  VSTR            S2, [SP,#0x100+var_78]
5539CC:  VSTR            S0, [SP,#0x100+var_7C]
5539D0:  VSTR            S4, [SP,#0x100+var_74]
5539D4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5539D8:  VLDR            S0, [R10,#0x48]
5539DC:  MOVS            R0, #0
5539DE:  VLDR            S2, [R10,#0x4C]
5539E2:  MOVS            R1, #0x35 ; '5'
5539E4:  VMUL.F32        S0, S0, S0
5539E8:  VLDR            S4, [R10,#0x50]
5539EC:  VMUL.F32        S2, S2, S2
5539F0:  VLDR            S6, [R10,#0x90]
5539F4:  VMUL.F32        S4, S4, S4
5539F8:  STRD.W          R0, R1, [SP,#0x100+var_FC]; float
5539FC:  STRD.W          R0, R0, [SP,#0x100+var_F4]; int
553A00:  ADD             R6, SP, #0x100+var_BC
553A02:  STRD.W          R0, R0, [SP,#0x100+var_EC]; int
553A06:  MOV             R1, R10; this
553A08:  LDR             R2, [SP,#0x100+var_E0]; int
553A0A:  MOV             R3, R8; int
553A0C:  STR             R0, [SP,#0x100+var_E4]; int
553A0E:  MOV             R0, R6; int
553A10:  VADD.F32        S0, S0, S2
553A14:  VADD.F32        S0, S0, S4
553A18:  VSQRT.F32       S0, S0
553A1C:  VMUL.F32        S0, S6, S0
553A20:  VSTR            S0, [SP,#0x100+var_100]
553A24:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
553A28:  LDR.W           R0, [R10,#0x464]
553A2C:  MOV             R1, R6; CEvent *
553A2E:  MOVS            R2, #0; bool
553A30:  LDR.W           R0, [R0,#0x440]
553A34:  ADDS            R0, #0x68 ; 'h'; this
553A36:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
553A3A:  LDR.W           R0, [R10,#0x464]; this
553A3E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
553A42:  CMP             R0, #1
553A44:  BNE             loc_553A54
553A46:  LDR.W           R0, [R10,#0x464]; this
553A4A:  MOVS            R1, #1; bool
553A4C:  MOV.W           R2, #0x3F800000; float
553A50:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
553A54:  LDR             R0, [R5]
553A56:  BIC.W           R0, R0, #0x10
553A5A:  STR             R0, [R5]
553A5C:  ADD             R0, SP, #0x100+var_BC; this
553A5E:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
553A62:  B               loc_553B9C
553A64:  LDR.W           R0, [R10,#0x44]
553A68:  BIC.W           R0, R0, #0x100
553A6C:  STR.W           R0, [R10,#0x44]
553A70:  ADDW            R0, R10, #0x42C
553A74:  LDR             R1, [R0]
553A76:  BIC.W           R1, R1, #0x40000000
553A7A:  STR             R1, [R0]
553A7C:  B               loc_553D9C
553A7E:  LDR.W           R0, [R10,#0x464]; this
553A82:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
553A86:  CMP             R0, #1
553A88:  BNE             loc_553B22
553A8A:  LDR.W           R0, [R10,#0x464]; this
553A8E:  MOVS            R1, #1; bool
553A90:  MOV.W           R2, #0x3F800000; float
553A94:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
553A98:  B               loc_553B9C
553A9A:  VMOV.F32        S0, #8.0
553A9E:  VLDR            S4, [SP,#0x100+var_60]
553AA2:  VMOV.F32        S2, #-2.0
553AA6:  VLDR            S6, [SP,#0x100+var_5C]
553AAA:  MOV             R0, R10
553AAC:  VMUL.F32        S0, S20, S0
553AB0:  VMUL.F32        S4, S4, S2
553AB4:  VMUL.F32        S6, S6, S2
553AB8:  VMUL.F32        S2, S24, S2
553ABC:  VMAX.F32        D0, D0, D8
553AC0:  VDIV.F32        S0, S16, S0
553AC4:  VMUL.F32        S4, S0, S4
553AC8:  VMUL.F32        S6, S0, S6
553ACC:  VMUL.F32        S0, S0, S2
553AD0:  VMOV            R1, S4
553AD4:  VMOV            R2, S6
553AD8:  VMOV            R3, S0
553ADC:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
553AE0:  VLDR            S0, [R10,#0x54]
553AE4:  VLDR            S2, [R10,#0x58]
553AE8:  VLDR            S4, [R10,#0x5C]
553AEC:  VMUL.F32        S0, S22, S0
553AF0:  VMUL.F32        S2, S22, S2
553AF4:  VLDR            S6, =0.9
553AF8:  VMUL.F32        S4, S22, S4
553AFC:  VCMPE.F32       S20, S6
553B00:  VMRS            APSR_nzcv, FPSCR
553B04:  VSTR            S0, [R10,#0x54]
553B08:  VSTR            S2, [R10,#0x58]
553B0C:  VSTR            S4, [R10,#0x5C]
553B10:  BLE.W           loc_553D9C
553B14:  MOVS            R0, #0
553B16:  STR             R0, [R4]
553B18:  LDR.W           R5, [R10,#0x44]
553B1C:  LDR             R3, [SP,#0x100+var_58]
553B1E:  MOVS            R6, #1
553B20:  B               loc_55372C
553B22:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x553B2E)
553B24:  MOVS            R5, #0
553B26:  MOVS            R6, #3
553B28:  MOV             R1, R10
553B2A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
553B2C:  MOVS            R3, #0x35 ; '5'
553B2E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
553B30:  LDR             R2, [R0]; CTimer::ms_fTimeStep
553B32:  ADD             R0, SP, #0x100+var_7C
553B34:  STRD.W          R6, R5, [SP,#0x100+var_100]
553B38:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
553B3C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x553B48)
553B3E:  MOVS            R4, #1
553B40:  MOV             R1, R10; this
553B42:  MOVS            R3, #0x35 ; '5'; int
553B44:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
553B46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
553B48:  LDR             R2, [R0]; int
553B4A:  STRD.W          R6, R5, [SP,#0x100+var_100]; float
553B4E:  STRD.W          R5, R4, [SP,#0x100+var_F8]; int
553B52:  ADD             R5, SP, #0x100+var_BC
553B54:  MOV             R0, R5; int
553B56:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
553B5A:  LDR.W           R1, [R10,#0x464]; CPed *
553B5E:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
553B62:  CMP             R0, #1
553B64:  BNE             loc_553B78
553B66:  LDR.W           R1, [R10,#0x464]; this
553B6A:  ADD.W           R2, R5, #0x34 ; '4'
553B6E:  ADD             R0, SP, #0x100+var_7C; int
553B70:  MOVS            R3, #1
553B72:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
553B76:  B               loc_553B7C
553B78:  STRB.W          R4, [SP,#0x100+var_7E]
553B7C:  LDR.W           R0, [R10,#0x464]
553B80:  ADD             R5, SP, #0x100+var_BC
553B82:  MOVS            R2, #0; bool
553B84:  MOV             R1, R5; CEvent *
553B86:  LDR.W           R0, [R0,#0x440]
553B8A:  ADDS            R0, #0x68 ; 'h'; this
553B8C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
553B90:  MOV             R0, R5; this
553B92:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
553B96:  ADD             R0, SP, #0x100+var_7C; this
553B98:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
553B9C:  LDRB.W          R0, [R10,#0x48C]
553BA0:  CMP             R0, #0
553BA2:  BEQ.W           loc_553D9C
553BA6:  ADD.W           R9, SP, #0x100+var_BC
553BAA:  ADD.W           R5, R10, #0x468
553BAE:  ADD.W           R0, R9, #0x34 ; '4'
553BB2:  STR             R0, [SP,#0x100+var_D4]
553BB4:  ADDW            R0, R10, #0x7F4
553BB8:  STR             R0, [SP,#0x100+var_DC]
553BBA:  ADD.W           R0, R10, #0x7F0
553BBE:  STR             R0, [SP,#0x100+var_D8]
553BC0:  ADDW            R0, R10, #0x7EC
553BC4:  STR             R0, [SP,#0x100+var_D0]
553BC6:  ADD.W           R0, R10, #0x7E8
553BCA:  STR             R0, [SP,#0x100+var_C4]
553BCC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x553BDC)
553BCE:  ADD.W           R8, SP, #0x100+var_7C
553BD2:  MOV.W           R11, #0
553BD6:  MOVS            R6, #0
553BD8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
553BDA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
553BDC:  STR             R0, [SP,#0x100+var_C8]
553BDE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x553BE4)
553BE0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
553BE2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
553BE4:  STR             R0, [SP,#0x100+var_CC]
553BE6:  LDR.W           R0, [R5,R11,LSL#2]
553BEA:  CMP             R0, #0
553BEC:  BEQ.W           loc_553D8E
553BF0:  LDR             R1, [R0,#0x44]
553BF2:  ORR.W           R1, R1, #0x8000000
553BF6:  STR             R1, [R0,#0x44]
553BF8:  LDR.W           R0, [R5,R11,LSL#2]; this
553BFC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
553C00:  CBNZ            R0, loc_553C0C
553C02:  LDRB.W          R0, [R10,#0x87C]
553C06:  LSLS            R0, R0, #0x1D
553C08:  BMI.W           loc_553D8E
553C0C:  LDR.W           R0, [R10,#0x5A4]
553C10:  CMP             R0, #2
553C12:  BNE             loc_553D00
553C14:  LDR             R0, [SP,#0x100+var_C4]
553C16:  VLDR            S0, [R0]
553C1A:  VCMP.F32        S0, S16
553C1E:  VMRS            APSR_nzcv, FPSCR
553C22:  BNE             loc_553D00
553C24:  LDR             R0, [SP,#0x100+var_D0]
553C26:  VLDR            S0, [R0]
553C2A:  VCMP.F32        S0, S16
553C2E:  VMRS            APSR_nzcv, FPSCR
553C32:  BNE             loc_553D00
553C34:  LDR             R0, [SP,#0x100+var_D8]
553C36:  VLDR            S0, [R0]
553C3A:  VCMP.F32        S0, S16
553C3E:  VMRS            APSR_nzcv, FPSCR
553C42:  BNE             loc_553D00
553C44:  LDR             R0, [SP,#0x100+var_DC]
553C46:  VLDR            S0, [R0]
553C4A:  VCMP.F32        S0, S16
553C4E:  VMRS            APSR_nzcv, FPSCR
553C52:  BNE             loc_553D00
553C54:  VLDR            S0, [R10,#0x48]
553C58:  MOV             R0, R8; this
553C5A:  VLDR            S2, [R10,#0x4C]
553C5E:  VLDR            S4, [R10,#0x50]
553C62:  VNEG.F32        S0, S0
553C66:  VNEG.F32        S2, S2
553C6A:  VNEG.F32        S4, S4
553C6E:  VSTR            S2, [SP,#0x100+var_78]
553C72:  VSTR            S0, [SP,#0x100+var_7C]
553C76:  VSTR            S4, [SP,#0x100+var_74]
553C7A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
553C7E:  VLDR            S0, [R10,#0x48]
553C82:  MOVS            R1, #0
553C84:  VLDR            S2, [R10,#0x4C]
553C88:  MOVS            R0, #0x35 ; '5'
553C8A:  VMUL.F32        S0, S0, S0
553C8E:  VLDR            S4, [R10,#0x50]
553C92:  VMUL.F32        S2, S2, S2
553C96:  VLDR            S6, [R10,#0x90]
553C9A:  VMUL.F32        S4, S4, S4
553C9E:  STR             R1, [SP,#0x100+var_FC]; float
553CA0:  STRD.W          R0, R1, [SP,#0x100+var_F8]; int
553CA4:  MOV             R0, R9; int
553CA6:  STRD.W          R1, R1, [SP,#0x100+var_F0]; int
553CAA:  MOV             R3, R8; int
553CAC:  STRD.W          R1, R1, [SP,#0x100+var_E8]; int
553CB0:  MOV             R1, R10; this
553CB2:  LDR             R2, [SP,#0x100+var_E0]; int
553CB4:  VADD.F32        S0, S0, S2
553CB8:  VADD.F32        S0, S0, S4
553CBC:  VSQRT.F32       S0, S0
553CC0:  VMUL.F32        S0, S6, S0
553CC4:  VSTR            S0, [SP,#0x100+var_100]
553CC8:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
553CCC:  LDR.W           R0, [R5,R11,LSL#2]
553CD0:  MOV             R1, R9; CEvent *
553CD2:  MOVS            R2, #0; bool
553CD4:  LDR.W           R0, [R0,#0x440]
553CD8:  ADDS            R0, #0x68 ; 'h'; this
553CDA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
553CDE:  LDR.W           R0, [R5,R11,LSL#2]; this
553CE2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
553CE6:  CMP             R0, #1
553CE8:  BNE             loc_553CF8
553CEA:  LDR.W           R0, [R5,R11,LSL#2]; this
553CEE:  MOVS            R1, #1; bool
553CF0:  MOV.W           R2, #0x3F800000; float
553CF4:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
553CF8:  MOV             R0, R9; this
553CFA:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
553CFE:  B               loc_553D8E
553D00:  LDR.W           R0, [R5,R11,LSL#2]; this
553D04:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
553D08:  CMP             R0, #1
553D0A:  BNE             loc_553D1C
553D0C:  LDR.W           R0, [R5,R11,LSL#2]; this
553D10:  MOVS            R1, #1; bool
553D12:  MOV.W           R2, #0x3F800000; float
553D16:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
553D1A:  B               loc_553D8E
553D1C:  LDR             R0, [SP,#0x100+var_C8]
553D1E:  MOVS            R4, #3
553D20:  MOV             R1, R10
553D22:  MOVS            R3, #0x35 ; '5'
553D24:  LDR             R2, [R0]
553D26:  MOV             R0, R8
553D28:  STRD.W          R4, R6, [SP,#0x100+var_100]
553D2C:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
553D30:  LDR             R0, [SP,#0x100+var_CC]
553D32:  MOV             R1, R10; this
553D34:  MOVS            R3, #0x35 ; '5'; int
553D36:  LDR             R2, [R0]; int
553D38:  MOV             R0, R9; int
553D3A:  STRD.W          R4, R6, [SP,#0x100+var_100]; int
553D3E:  MOV             R4, R8
553D40:  MOV.W           R8, #1
553D44:  STR             R6, [SP,#0x100+var_F8]; int
553D46:  STR.W           R8, [SP,#0x100+var_F4]; int
553D4A:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
553D4E:  LDR.W           R1, [R5,R11,LSL#2]; CPed *
553D52:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
553D56:  CMP             R0, #1
553D58:  BNE             loc_553D6A
553D5A:  LDR.W           R1, [R5,R11,LSL#2]; this
553D5E:  MOV             R0, R4; int
553D60:  LDR             R2, [SP,#0x100+var_D4]
553D62:  MOVS            R3, #1
553D64:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
553D68:  B               loc_553D6E
553D6A:  STRB.W          R8, [SP,#0x100+var_7E]
553D6E:  LDR.W           R0, [R5,R11,LSL#2]
553D72:  MOV             R1, R9; CEvent *
553D74:  MOVS            R2, #0; bool
553D76:  MOV             R8, R4
553D78:  LDR.W           R0, [R0,#0x440]
553D7C:  ADDS            R0, #0x68 ; 'h'; this
553D7E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
553D82:  MOV             R0, R9; this
553D84:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
553D88:  MOV             R0, R8; this
553D8A:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
553D8E:  LDRB.W          R0, [R10,#0x48C]
553D92:  ADD.W           R11, R11, #1
553D96:  CMP             R11, R0
553D98:  BLT.W           loc_553BE6
553D9C:  ADD             SP, SP, #0xB8
553D9E:  VPOP            {D8-D12}
553DA2:  ADD             SP, SP, #4
553DA4:  POP.W           {R8-R11}
553DA8:  POP             {R4-R7,PC}
