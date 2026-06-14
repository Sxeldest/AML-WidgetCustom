; =========================================================
; Game Engine Function: _ZN8CCarCtrl21PossiblyRemoveVehicleEP8CVehicle
; Address            : 0x2EC5B0 - 0x2EC9A0
; =========================================================

2EC5B0:  PUSH            {R4-R7,LR}
2EC5B2:  ADD             R7, SP, #0xC
2EC5B4:  PUSH.W          {R11}
2EC5B8:  VPUSH           {D8-D11}
2EC5BC:  SUB             SP, SP, #0x10
2EC5BE:  MOV             R4, R0
2EC5C0:  LDRB.W          R0, [R4,#0x489]
2EC5C4:  CBZ             R0, loc_2EC5D2
2EC5C6:  ADD             SP, SP, #0x10
2EC5C8:  VPOP            {D8-D11}
2EC5CC:  POP.W           {R11}
2EC5D0:  POP             {R4-R7,PC}
2EC5D2:  LDR.W           R0, [R4,#0x42C]
2EC5D6:  TST.W           R0, #0x8000000
2EC5DA:  ITT NE
2EC5DC:  LDRNE.W         R1, [R4,#0x420]
2EC5E0:  CMPNE           R1, #0
2EC5E2:  BNE             loc_2EC5C6
2EC5E4:  ADDW            R5, R4, #0x42C
2EC5E8:  LSLS            R0, R0, #0x1C
2EC5EA:  BMI.W           loc_2EC7B6
2EC5EE:  MOV             R0, R4; this
2EC5F0:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
2EC5F4:  CMP             R0, #0
2EC5F6:  BEQ.W           loc_2EC7B6
2EC5FA:  MOV             R0, R4; this
2EC5FC:  BLX             j__ZN7CCranes33IsThisCarBeingTargettedByAnyCraneEP8CVehicle; CCranes::IsThisCarBeingTargettedByAnyCrane(CVehicle *)
2EC600:  CMP             R0, #0
2EC602:  BNE.W           loc_2EC7B6
2EC606:  LDRB            R0, [R5,#2]
2EC608:  LSLS            R0, R0, #0x1D
2EC60A:  BPL             loc_2EC618
2EC60C:  LDR             R0, [R4,#0x18]
2EC60E:  BLX             j__ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump; CVisibilityPlugins::GetClumpAlpha(RpClump *)
2EC612:  CMP             R0, #0
2EC614:  BEQ.W           loc_2EC970
2EC618:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2EC61E)
2EC61A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2EC61C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2EC61E:  LDR             R0, [R0]; int
2EC620:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
2EC624:  LDR             R1, [R4,#0x14]
2EC626:  ADDS            R6, R4, #4
2EC628:  VLDR            S16, [R0]
2EC62C:  VLDR            S18, [R0,#4]
2EC630:  CMP             R1, #0
2EC632:  VLDR            S20, [R0,#8]
2EC636:  MOV             R0, R6
2EC638:  IT NE
2EC63A:  ADDNE.W         R0, R1, #0x30 ; '0'
2EC63E:  VLDR            S0, [R0]
2EC642:  VLDR            S2, [R0,#4]
2EC646:  MOV             R0, R4; this
2EC648:  VSUB.F32        S0, S0, S16
2EC64C:  VSUB.F32        S2, S2, S18
2EC650:  VMUL.F32        S0, S0, S0
2EC654:  VMUL.F32        S2, S2, S2
2EC658:  VADD.F32        S0, S0, S2
2EC65C:  VSQRT.F32       S22, S0
2EC660:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
2EC664:  CMP             R0, #0
2EC666:  BNE             loc_2EC6D6
2EC668:  LDR             R0, =(TheCamera_ptr - 0x2EC66E)
2EC66A:  ADD             R0, PC; TheCamera_ptr
2EC66C:  LDR             R1, [R0]; TheCamera
2EC66E:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
2EC672:  ADD.W           R0, R0, R0,LSL#5
2EC676:  ADD.W           R1, R1, R0,LSL#4
2EC67A:  LDRB.W          R1, [R1,#0x178]
2EC67E:  CBNZ            R1, loc_2EC6D6
2EC680:  LDR             R1, =(TheCamera_ptr - 0x2EC686)
2EC682:  ADD             R1, PC; TheCamera_ptr
2EC684:  LDR             R1, [R1]; TheCamera
2EC686:  ADD.W           R1, R1, R0,LSL#4
2EC68A:  LDRB.W          R1, [R1,#0x179]
2EC68E:  CBNZ            R1, loc_2EC6D6
2EC690:  LDR             R1, =(TheCamera_ptr - 0x2EC696)
2EC692:  ADD             R1, PC; TheCamera_ptr
2EC694:  LDR             R1, [R1]; TheCamera
2EC696:  ADD.W           R0, R1, R0,LSL#4
2EC69A:  LDRB.W          R0, [R0,#0x177]
2EC69E:  CBNZ            R0, loc_2EC6D6
2EC6A0:  LDR             R0, =(TheCamera_ptr - 0x2EC6A6)
2EC6A2:  ADD             R0, PC; TheCamera_ptr
2EC6A4:  LDR             R0, [R0]; TheCamera ; this
2EC6A6:  BLX             j__ZN7CCamera16GetLookDirectionEv; CCamera::GetLookDirection(void)
2EC6AA:  CMP             R0, #0
2EC6AC:  ITT NE
2EC6AE:  LDRBNE.W        R0, [R4,#0x4A8]
2EC6B2:  CMPNE           R0, #3
2EC6B4:  BEQ             loc_2EC6D6
2EC6B6:  LDRSH.W         R0, [R4,#0x26]
2EC6BA:  MOVW            R1, #0x197
2EC6BE:  CMP             R0, R1
2EC6C0:  IT NE
2EC6C2:  CMPNE.W         R0, #0x1A0
2EC6C6:  BEQ             loc_2EC6D6
2EC6C8:  LDR             R0, [R5]
2EC6CA:  MOVS            R1, #0x2000001; CVector *
2EC6D0:  TST             R0, R1
2EC6D2:  BEQ.W           loc_2EC980
2EC6D6:  LDR             R0, =(TheCamera_ptr - 0x2EC6E0)
2EC6D8:  VLDR            S0, =170.0
2EC6DC:  ADD             R0, PC; TheCamera_ptr
2EC6DE:  LDR             R0, [R0]; TheCamera
2EC6E0:  VLDR            S2, [R0,#0xF0]
2EC6E4:  VMUL.F32        S0, S2, S0
2EC6E8:  LDRSH.W         R0, [R4,#0x4B0]
2EC6EC:  VLDR            S2, =170.0
2EC6F0:  VLDR            S8, =70.0
2EC6F4:  VMOV            S4, R0
2EC6F8:  LDR             R0, =(TheCamera_ptr - 0x2EC702)
2EC6FA:  VCVT.F32.S32    S4, S4
2EC6FE:  ADD             R0, PC; TheCamera_ptr
2EC700:  LDR             R0, [R0]; TheCamera
2EC702:  ADDW            R0, R0, #0x914
2EC706:  VMAX.F32        D2, D2, D1
2EC70A:  VLDR            S6, [R0]
2EC70E:  VDIV.F32        S2, S4, S2
2EC712:  VLDR            S4, =-0.9
2EC716:  VCMPE.F32       S6, S4
2EC71A:  VMRS            APSR_nzcv, FPSCR
2EC71E:  IT LT
2EC720:  VMOVLT.F32      S0, S8
2EC724:  VMUL.F32        S0, S0, S2
2EC728:  VCMPE.F32       S22, S0
2EC72C:  VMRS            APSR_nzcv, FPSCR
2EC730:  BLE             loc_2EC75C
2EC732:  LDRB.W          R0, [R4,#0x3BE]
2EC736:  CMP             R0, #0x3B ; ';'
2EC738:  BEQ             loc_2EC75C
2EC73A:  LDR             R0, [R4,#0x14]
2EC73C:  CMP             R0, #0
2EC73E:  IT NE
2EC740:  ADDNE.W         R6, R0, #0x30 ; '0'
2EC744:  VLDR            D16, [R6]
2EC748:  LDR             R0, [R6,#8]
2EC74A:  STR             R0, [SP,#0x40+var_38]
2EC74C:  MOV             R0, SP; this
2EC74E:  VSTR            D16, [SP,#0x40+var_40]
2EC752:  BLX             j__ZN8CGarages26IsPointWithinHideOutGarageER7CVector; CGarages::IsPointWithinHideOutGarage(CVector &)
2EC756:  CMP             R0, #0
2EC758:  BEQ.W           loc_2EC942
2EC75C:  LDRB.W          R0, [R4,#0x3A]
2EC760:  AND.W           R1, R0, #0xF8
2EC764:  CMP             R1, #0x10
2EC766:  BNE             loc_2EC782
2EC768:  LDR             R1, [R4,#0x14]
2EC76A:  VLDR            S2, =0.74
2EC76E:  VLDR            S0, [R1,#0x28]
2EC772:  VABS.F32        S0, S0
2EC776:  VCMPE.F32       S0, S2
2EC77A:  VMRS            APSR_nzcv, FPSCR
2EC77E:  BLT.W           loc_2EC970
2EC782:  MOVS            R1, #byte_5; CEntity *
2EC784:  CMP.W           R1, R0,LSR#3
2EC788:  ITT NE
2EC78A:  LSRNE           R0, R0, #3
2EC78C:  CMPNE           R0, #3
2EC78E:  BNE             loc_2EC7B6
2EC790:  LDR.W           R0, [R4,#0x5A4]
2EC794:  SUBS            R0, #3
2EC796:  CMP             R0, #1
2EC798:  BHI             loc_2EC7B6
2EC79A:  LDRB            R0, [R4,#0x1C]
2EC79C:  LSLS            R0, R0, #0x1B
2EC79E:  BPL             loc_2EC7B6
2EC7A0:  MOV             R0, R4; this
2EC7A2:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
2EC7A6:  LDR             R0, [R4]
2EC7A8:  LDR             R1, [R0,#4]
2EC7AA:  MOV             R0, R4
2EC7AC:  BLX             R1
2EC7AE:  ADR             R0, aRemovedRandomP; "Removed random plane/heli that was stuc"...
2EC7B0:  BLX             j__ZN6CDebug8DebugLogEPKcz; CDebug::DebugLog(char const*,...)
2EC7B4:  B               loc_2EC5C6
2EC7B6:  LDR.W           R0, [R4,#0x5A4]
2EC7BA:  SUBS            R0, #3
2EC7BC:  CMP             R0, #2
2EC7BE:  BCC             loc_2EC8A0
2EC7C0:  LDRB.W          R0, [R4,#0x3BF]
2EC7C4:  CMP             R0, #0xC
2EC7C6:  BEQ             loc_2EC8A0
2EC7C8:  LDRB.W          R0, [R4,#0x3A]
2EC7CC:  MOVS            R1, #2
2EC7CE:  CMP.W           R1, R0,LSR#3
2EC7D2:  BEQ             loc_2EC7E6
2EC7D4:  LSRS            R0, R0, #3
2EC7D6:  CMP             R0, #3
2EC7D8:  BNE             loc_2EC8A0
2EC7DA:  LDRB.W          R0, [R4,#0x3BD]
2EC7DE:  ORR.W           R0, R0, #4
2EC7E2:  CMP             R0, #4
2EC7E4:  BNE             loc_2EC8A0
2EC7E6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EC7F4)
2EC7E8:  MOVW            R2, #0x1389
2EC7EC:  LDR.W           R1, [R4,#0x3B4]
2EC7F0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EC7F2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EC7F4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EC7F6:  SUBS            R1, R0, R1
2EC7F8:  CMP             R1, R2
2EC7FA:  BCC             loc_2EC8A0
2EC7FC:  LDR.W           R1, [R4,#0x4E0]
2EC800:  CMP             R1, #0
2EC802:  BNE             loc_2EC8A0
2EC804:  CMP             R0, R1
2EC806:  BLS             loc_2EC8A0
2EC808:  MOV             R0, R4; this
2EC80A:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
2EC80E:  CMP             R0, #0
2EC810:  BNE             loc_2EC8A0
2EC812:  LDR             R0, [R4,#0x14]
2EC814:  ADDS            R6, R4, #4
2EC816:  CMP             R0, #0
2EC818:  MOV             R1, R6
2EC81A:  IT NE
2EC81C:  ADDNE.W         R1, R0, #0x30 ; '0'
2EC820:  VLDR            S0, [R1]
2EC824:  VLDR            S2, [R1,#4]
2EC828:  VSUB.F32        S0, S0, S16
2EC82C:  VSUB.F32        S2, S2, S18
2EC830:  VMUL.F32        S0, S0, S0
2EC834:  VMUL.F32        S2, S2, S2
2EC838:  VADD.F32        S0, S0, S2
2EC83C:  VMOV.F32        S2, #22.0
2EC840:  VSQRT.F32       S0, S0
2EC844:  VCMPE.F32       S0, S2
2EC848:  VMRS            APSR_nzcv, FPSCR
2EC84C:  BLE             loc_2EC8A0
2EC84E:  LDR             R0, =(apCarsToKeep_ptr - 0x2EC854)
2EC850:  ADD             R0, PC; apCarsToKeep_ptr
2EC852:  LDR             R0, [R0]; apCarsToKeep
2EC854:  LDR             R1, [R0]
2EC856:  CMP             R1, R4
2EC858:  ITT NE
2EC85A:  LDRNE           R0, [R0,#(dword_7967A8 - 0x7967A4)]
2EC85C:  CMPNE           R0, R4
2EC85E:  BEQ             loc_2EC8A0
2EC860:  LDRB            R0, [R5]
2EC862:  LSLS            R0, R0, #0x1C
2EC864:  BMI             loc_2EC8A0
2EC866:  MOV             R0, R4; this
2EC868:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
2EC86C:  CBZ             R0, loc_2EC8A0
2EC86E:  MOV             R0, R4; this
2EC870:  MOVS            R1, #(stderr+1); CVehicle *
2EC872:  BLX             j__ZN14CTrafficLights21ShouldCarStopForLightEP8CVehicleb; CTrafficLights::ShouldCarStopForLight(CVehicle *,bool)
2EC876:  CBNZ            R0, loc_2EC8A0
2EC878:  MOV             R0, R4; this
2EC87A:  BLX             j__ZN14CTrafficLights22ShouldCarStopForBridgeEP8CVehicle; CTrafficLights::ShouldCarStopForBridge(CVehicle *)
2EC87E:  CBNZ            R0, loc_2EC8A0
2EC880:  LDR             R0, [R4,#0x14]
2EC882:  CMP             R0, #0
2EC884:  IT NE
2EC886:  ADDNE.W         R6, R0, #0x30 ; '0'
2EC88A:  VLDR            D16, [R6]
2EC88E:  LDR             R0, [R6,#8]
2EC890:  STR             R0, [SP,#0x40+var_38]
2EC892:  MOV             R0, SP; this
2EC894:  VSTR            D16, [SP,#0x40+var_40]
2EC898:  BLX             j__ZN8CGarages26IsPointWithinHideOutGarageER7CVector; CGarages::IsPointWithinHideOutGarage(CVector &)
2EC89C:  CMP             R0, #0
2EC89E:  BEQ             loc_2EC970
2EC8A0:  LDRB.W          R0, [R4,#0x3A]
2EC8A4:  AND.W           R0, R0, #0xF8
2EC8A8:  CMP             R0, #0x28 ; '('
2EC8AA:  BNE.W           loc_2EC5C6
2EC8AE:  LDR.W           R0, [R4,#0x4E8]
2EC8B2:  CMP             R0, #0
2EC8B4:  BEQ.W           loc_2EC5C6
2EC8B8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EC8C4)
2EC8BA:  MOVW            R2, #0xEA60
2EC8BE:  ADD             R0, R2
2EC8C0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EC8C2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2EC8C4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2EC8C6:  CMP             R1, R0
2EC8C8:  ITT HI
2EC8CA:  LDRHI.W         R0, [R4,#0x4E0]
2EC8CE:  CMPHI           R1, R0
2EC8D0:  BLS.W           loc_2EC5C6
2EC8D4:  MOV             R0, R4; this
2EC8D6:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
2EC8DA:  CMP             R0, #0
2EC8DC:  BNE.W           loc_2EC5C6
2EC8E0:  LDR             R1, [R4,#0x14]; CVector *
2EC8E2:  ADD.W           R0, R1, #0x30 ; '0'
2EC8E6:  CMP             R1, #0
2EC8E8:  IT EQ
2EC8EA:  ADDEQ           R0, R4, #4
2EC8EC:  VLDR            S0, [R0]
2EC8F0:  VLDR            S2, [R0,#4]
2EC8F4:  VSUB.F32        S0, S0, S16
2EC8F8:  VLDR            S4, [R0,#8]
2EC8FC:  VSUB.F32        S2, S2, S18
2EC900:  VSUB.F32        S4, S4, S20
2EC904:  VMUL.F32        S0, S0, S0
2EC908:  VMUL.F32        S2, S2, S2
2EC90C:  VMUL.F32        S4, S4, S4
2EC910:  VADD.F32        S0, S0, S2
2EC914:  VLDR            S2, =42.25
2EC918:  VADD.F32        S0, S0, S4
2EC91C:  VCMPE.F32       S0, S2
2EC920:  VMRS            APSR_nzcv, FPSCR
2EC924:  BLE.W           loc_2EC5C6
2EC928:  VLDR            D16, [R0]
2EC92C:  LDR             R0, [R0,#8]
2EC92E:  STR             R0, [SP,#0x40+var_38]
2EC930:  MOV             R0, SP; this
2EC932:  VSTR            D16, [SP,#0x40+var_40]
2EC936:  BLX             j__ZN8CGarages26IsPointWithinHideOutGarageER7CVector; CGarages::IsPointWithinHideOutGarage(CVector &)
2EC93A:  CMP             R0, #0
2EC93C:  BNE.W           loc_2EC5C6
2EC940:  B               loc_2EC970
2EC942:  LDR             R0, =(apCarsToKeep_ptr - 0x2EC948)
2EC944:  ADD             R0, PC; apCarsToKeep_ptr
2EC946:  LDR             R0, [R0]; apCarsToKeep
2EC948:  LDR             R1, [R0]
2EC94A:  CMP             R1, R4
2EC94C:  ITT NE
2EC94E:  LDRNE           R0, [R0,#(dword_7967A8 - 0x7967A4)]
2EC950:  CMPNE           R0, R4
2EC952:  BNE             loc_2EC95C
2EC954:  MOVS            R0, #0xA
2EC956:  STRB.W          R0, [R4,#0xBC]
2EC95A:  B               loc_2EC5C6
2EC95C:  MOV             R0, R4; this
2EC95E:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
2EC962:  CMP             R0, #1
2EC964:  BNE             loc_2EC970
2EC966:  LDR             R0, [R5]
2EC968:  ORR.W           R0, R0, #0x40000
2EC96C:  STR             R0, [R5]
2EC96E:  B               loc_2EC5C6
2EC970:  MOV             R0, R4; this
2EC972:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
2EC976:  LDR             R0, [R4]
2EC978:  LDR             R1, [R0,#4]
2EC97A:  MOV             R0, R4
2EC97C:  BLX             R1
2EC97E:  B               loc_2EC5C6
2EC980:  LDR             R0, [R5,#4]
2EC982:  LSLS            R0, R0, #0x19
2EC984:  BMI.W           loc_2EC6D6
2EC988:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EC992)
2EC98A:  LDR.W           R1, [R4,#0x4E0]
2EC98E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EC990:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EC992:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EC994:  CMP             R0, R1
2EC996:  BCC.W           loc_2EC6D6
2EC99A:  VLDR            S0, =45.0
2EC99E:  B               loc_2EC6E8
