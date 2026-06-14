; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity18ProcessDummyRCHeliER14cVehicleParams
; Address            : 0x3B8598 - 0x3B8868
; =========================================================

3B8598:  PUSH            {R4-R7,LR}
3B859A:  ADD             R7, SP, #0xC
3B859C:  PUSH.W          {R8-R11}
3B85A0:  SUB             SP, SP, #4
3B85A2:  VPUSH           {D8-D10}
3B85A6:  SUB             SP, SP, #8; float
3B85A8:  MOV             R11, R0
3B85AA:  MOV             R5, R1
3B85AC:  LDRH.W          R0, [R11,#0xE0]
3B85B0:  MOVW            R9, #0xFFFF
3B85B4:  CMP             R0, R9
3B85B6:  BNE             loc_3B85CC
3B85B8:  LDRSH.W         R0, [R11,#0xDC]; this
3B85BC:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3B85C0:  UXTH            R1, R0
3B85C2:  CMP             R1, R9
3B85C4:  STRH.W          R0, [R11,#0xE0]
3B85C8:  BEQ.W           loc_3B885A
3B85CC:  LDR             R2, =(AEAudioHardware_ptr - 0x3B85D6)
3B85CE:  LDRH.W          R1, [R11,#0xDC]; unsigned __int16
3B85D2:  ADD             R2, PC; AEAudioHardware_ptr
3B85D4:  LDR             R3, [R2]; AEAudioHardware
3B85D6:  SXTH            R2, R0; __int16
3B85D8:  MOV             R0, R3; this
3B85DA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B85DE:  CMP             R0, #0
3B85E0:  BEQ             loc_3B868E
3B85E2:  LDRB.W          R0, [R11,#0xA8]
3B85E6:  CMP             R0, #0
3B85E8:  BEQ             loc_3B86C8
3B85EA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3B85FC)
3B85EC:  VMOV.F32        S18, #1.0
3B85F0:  VLDR            S16, =100.0
3B85F4:  MOV.W           R8, #0
3B85F8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3B85FA:  MOVS            R6, #0
3B85FC:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3B8600:  B               loc_3B8608
3B8602:  STRH.W          R0, [R11,#0x14E]
3B8606:  MOVS            R6, #5
3B8608:  ADD.W           R4, R11, R6,LSL#3
3B860C:  MOVW            R5, #0xFFFF
3B8610:  LDR.W           R0, [R4,#0xE8]!; this
3B8614:  CBZ             R0, loc_3B862C
3B8616:  MOVS            R1, #4; unsigned __int16
3B8618:  MOVS            R2, #0; unsigned __int16
3B861A:  LDRH.W          R5, [R0,#0x70]
3B861E:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B8622:  LDR             R0, [R4]; this
3B8624:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B8628:  STR.W           R8, [R4]
3B862C:  CMP             R6, #4
3B862E:  BNE             loc_3B8682
3B8630:  LDRH.W          R0, [R11,#0x148]
3B8634:  STRH.W          R0, [R11,#0x154]
3B8638:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3B863C:  STR.W           R1, [R11,#0x150]
3B8640:  SXTH            R1, R5
3B8642:  CMP             R1, #1
3B8644:  STRH.W          R9, [R11,#0x14A]
3B8648:  STRH.W          R9, [R11,#0x148]
3B864C:  BLT             loc_3B868A
3B864E:  SXTH            R0, R0
3B8650:  VMOV            S0, R1
3B8654:  VMOV            S2, R0
3B8658:  VCVT.F32.S32    S0, S0
3B865C:  VCVT.F32.S32    S2, S2
3B8660:  VDIV.F32        S0, S2, S0
3B8664:  VMIN.F32        D0, D0, D9
3B8668:  VCMPE.F32       S0, #0.0
3B866C:  VMRS            APSR_nzcv, FPSCR
3B8670:  VMUL.F32        S2, S0, S16
3B8674:  VCVT.S32.F32    S2, S2
3B8678:  VMOV            R0, S2
3B867C:  IT LT
3B867E:  MOVLT           R0, #0
3B8680:  B               loc_3B8602
3B8682:  ADDS            R6, #1
3B8684:  CMP             R6, #0xC
3B8686:  BNE             loc_3B8608
3B8688:  B               loc_3B885A
3B868A:  MOVS            R0, #0
3B868C:  B               loc_3B8602
3B868E:  LDRH.W          R1, [R11,#0xE0]
3B8692:  MOVS            R2, #0
3B8694:  LDRH.W          R0, [R11,#0xDC]
3B8698:  MOVT            R2, #0xFFF9
3B869C:  ADD.W           R1, R2, R1,LSL#16
3B86A0:  CMP.W           R1, #0x90000
3B86A4:  BHI             loc_3B86B6
3B86A6:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3B86AE)
3B86A8:  LSRS            R1, R1, #0xE
3B86AA:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3B86AC:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3B86AE:  LDRH            R1, [R2,R1]; __int16
3B86B0:  CMP             R1, R0
3B86B2:  BEQ.W           loc_3B885A
3B86B6:  SXTH            R0, R0; this
3B86B8:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3B86BC:  STRH.W          R0, [R11,#0xE0]
3B86C0:  MOVS            R0, #0
3B86C2:  STRB.W          R0, [R11,#0xA9]
3B86C6:  B               loc_3B885A
3B86C8:  LDR             R0, [R5,#0x10]
3B86CA:  VLDR            S0, =0.22
3B86CE:  ADD.W           R0, R0, #0x860
3B86D2:  VLDR            S2, [R0]
3B86D6:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3B86E0)
3B86D8:  VDIV.F32        S16, S2, S0
3B86DC:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3B86DE:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3B86E0:  LDR             R0, [R0]; this
3B86E2:  CMP             R0, #0
3B86E4:  ITT NE
3B86E6:  LDRBNE.W        R1, [R11,#0xA5]
3B86EA:  CMPNE           R1, #0
3B86EC:  BEQ             loc_3B872E
3B86EE:  LDRB.W          R1, [R11,#0xA7]
3B86F2:  CBNZ            R1, loc_3B872E
3B86F4:  LDR.W           R1, [R0,#0x44C]
3B86F8:  CMP             R1, #0x3F ; '?'
3B86FA:  BEQ             loc_3B872E
3B86FC:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3B8700:  CBZ             R0, loc_3B872E
3B8702:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3B8708)
3B8704:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3B8706:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3B8708:  LDR             R0, [R0]; this
3B870A:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
3B870E:  MOV             R6, R0
3B8710:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3B8714:  STRH            R0, [R5,#0x20]
3B8716:  MOV             R0, R6; this
3B8718:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3B871C:  LDRSH.W         R1, [R5,#0x20]
3B8720:  ADR             R2, dword_3B8888
3B8722:  CMP             R1, #0
3B8724:  IT GT
3B8726:  ADDGT           R2, #4
3B8728:  VLDR            S18, [R2]
3B872C:  B               loc_3B8736
3B872E:  VLDR            S18, =0.0
3B8732:  MOVS            R0, #0
3B8734:  STRH            R0, [R5,#0x20]
3B8736:  LDR             R1, [R5,#0x10]
3B8738:  CMP             R0, #0
3B873A:  STRH            R0, [R5,#0x22]
3B873C:  VMOV.I32        D16, #0
3B8740:  VLDR            S0, =0.0
3B8744:  LDR             R1, [R1,#0x14]; float
3B8746:  VLDR            S20, =0.2
3B874A:  VLDR            S4, [R1,#0x24]
3B874E:  VLDR            S2, [R1,#0x20]
3B8752:  VMUL.F32        S4, S4, S0
3B8756:  VLDR            S6, [R1,#0x28]
3B875A:  VMUL.F32        S0, S2, S0
3B875E:  VMOV.F32        S2, #1.0
3B8762:  VADD.F32        S0, S0, S4
3B8766:  VMOV.F32        S4, #0.5
3B876A:  VADD.F32        S0, S6, S0
3B876E:  VSUB.F32        S0, S2, S0
3B8772:  VMUL.F32        S0, S0, S4
3B8776:  VLDR            S4, =0.07
3B877A:  VDIV.F32        S0, S0, S4
3B877E:  VLDR            S4, =-0.05
3B8782:  VCMPE.F32       S0, S2
3B8786:  VMUL.F32        S6, S0, S20
3B878A:  IT GT
3B878C:  VMOVGT.F32      S18, S4
3B8790:  VMRS            APSR_nzcv, FPSCR
3B8794:  VMIN.F32        D0, D8, D1
3B8798:  VCMPE.F32       S0, S20
3B879C:  IT LT
3B879E:  VMOVLT.F32      S20, S6
3B87A2:  VMRS            APSR_nzcv, FPSCR
3B87A6:  BLT             loc_3B87BC
3B87A8:  VLDR            S2, =-0.2
3B87AC:  VADD.F32        S0, S0, S2
3B87B0:  VLDR            S2, =0.8
3B87B4:  VDIV.F32        S0, S0, S2
3B87B8:  VCVT.F64.F32    D16, S0
3B87BC:  VLDR            D17, =0.2
3B87C0:  VCMPE.F64       D16, D17
3B87C4:  VMRS            APSR_nzcv, FPSCR
3B87C8:  IT GT
3B87CA:  VMOVGT.F64      D17, D16
3B87CE:  VCVT.F32.F64    S16, D17
3B87D2:  VMOV            R0, S16; this
3B87D6:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B87DA:  VLDR            S0, =0.2
3B87DE:  VMOV            S4, R0
3B87E2:  VLDR            S2, =0.8
3B87E6:  VMUL.F32        S0, S16, S0
3B87EA:  VADD.F32        S0, S0, S2
3B87EE:  VMOV.F32        S2, #20.0
3B87F2:  VADD.F32        S8, S20, S0
3B87F6:  VMUL.F32        S6, S4, S2
3B87FA:  VLDR            S4, [R11,#0x22C]
3B87FE:  VMOV.F32        S0, #-6.0
3B8802:  VCMPE.F32       S4, #0.0
3B8806:  VMRS            APSR_nzcv, FPSCR
3B880A:  VADD.F32        S2, S18, S8
3B880E:  VADD.F32        S0, S6, S0
3B8812:  ITT LT
3B8814:  VSTRLT          S2, [R11,#0x22C]
3B8818:  VMOVLT.F32      S4, S2
3B881C:  VCMPE.F32       S2, S4
3B8820:  VMRS            APSR_nzcv, FPSCR
3B8824:  BGE             loc_3B8834
3B8826:  VLDR            S6, =-0.0053333
3B882A:  VADD.F32        S4, S4, S6
3B882E:  VMAX.F32        D1, D1, D2
3B8832:  B               loc_3B8840
3B8834:  VLDR            S6, =0.0053333
3B8838:  VADD.F32        S4, S4, S6
3B883C:  VMIN.F32        D1, D1, D2
3B8840:  LDRSH.W         R2, [R11,#0xE0]; __int16
3B8844:  MOV             R0, R11; this
3B8846:  MOVS            R1, #2; __int16
3B8848:  MOVS            R3, #0; __int16
3B884A:  VSTR            S2, [R11,#0x22C]
3B884E:  VSTR            S0, [SP,#0x40+var_40]
3B8852:  VSTR            S2, [SP,#0x40+var_3C]
3B8856:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B885A:  ADD             SP, SP, #8
3B885C:  VPOP            {D8-D10}
3B8860:  ADD             SP, SP, #4
3B8862:  POP.W           {R8-R11}
3B8866:  POP             {R4-R7,PC}
