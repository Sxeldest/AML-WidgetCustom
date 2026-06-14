; =========================================================
; Game Engine Function: _ZN11CAutomobile13VehicleDamageEftP7CEntityP7CVectorS3_11eWeaponType
; Address            : 0x551490 - 0x55235C
; =========================================================

551490:  PUSH            {R4-R7,LR}
551492:  ADD             R7, SP, #0xC
551494:  PUSH.W          {R8-R11}
551498:  SUB             SP, SP, #4
55149A:  VPUSH           {D8-D15}
55149E:  SUB             SP, SP, #0x40
5514A0:  MOV             R4, R0
5514A2:  STR             R1, [SP,#0xA0+var_64]
5514A4:  LDRB.W          R0, [R4,#0x42E]
5514A8:  MOV             R5, R3
5514AA:  MOV             R8, R2
5514AC:  LSLS            R0, R0, #0x1A
5514AE:  BMI             loc_5514BE
5514B0:  ADD             SP, SP, #0x40 ; '@'
5514B2:  VPOP            {D8-D15}
5514B6:  ADD             SP, SP, #4
5514B8:  POP.W           {R8-R11}
5514BC:  POP             {R4-R7,PC}
5514BE:  VMOV            S0, R1
5514C2:  LDR             R2, [R7,#arg_8]
5514C4:  VCMP.F32        S0, #0.0
5514C8:  VMRS            APSR_nzcv, FPSCR
5514CC:  BEQ             loc_551542
5514CE:  MOVS            R0, #0
5514D0:  ADD             R3, SP, #0xA0+var_80
5514D2:  STRB.W          R0, [SP,#0xA0+var_80]
5514D6:  MOV             R0, R4
5514D8:  MOV             R1, R5
5514DA:  BLX             j__ZN8CVehicle19CanVehicleBeDamagedEP7CEntity11eWeaponTypePh; CVehicle::CanVehicleBeDamaged(CEntity *,eWeaponType,uchar *)
5514DE:  CMP             R0, #0
5514E0:  BEQ             loc_5514B0
5514E2:  VMOV.F32        S16, #25.0
5514E6:  LDRD.W          R11, R6, [R7,#arg_0]
5514EA:  VLDR            S18, =0.333
5514EE:  CMP             R5, #0
5514F0:  BEQ.W           loc_551780
5514F4:  LDRB.W          R0, [R5,#0x3A]
5514F8:  AND.W           R0, R0, #7
5514FC:  CMP             R0, #1
5514FE:  BNE             loc_55153C
551500:  LDR             R0, [R4,#0x14]
551502:  VLDR            S0, [R6]
551506:  VLDR            S2, [R6,#4]
55150A:  VLDR            S6, [R0,#0x20]
55150E:  VLDR            S8, [R0,#0x24]
551512:  VMUL.F32        S0, S0, S6
551516:  VLDR            S4, [R6,#8]
55151A:  VMUL.F32        S2, S2, S8
55151E:  VLDR            S10, [R0,#0x28]
551522:  VMUL.F32        S4, S4, S10
551526:  VADD.F32        S0, S0, S2
55152A:  VLDR            S2, =0.6
55152E:  VADD.F32        S0, S0, S4
551532:  VCMPE.F32       S0, S2
551536:  VMRS            APSR_nzcv, FPSCR
55153A:  BGT             loc_5514B0
55153C:  MOV.W           R10, #1
551540:  B               loc_551786
551542:  LDRD.W          R6, R5, [R4,#0xDC]
551546:  STR             R6, [SP,#0xA0+var_64]
551548:  LDR             R0, [R4,#0x14]
55154A:  LDRH.W          R8, [R4,#0xFC]
55154E:  VLDR            S16, [R4,#0x90]
551552:  VLDR            S0, [R0,#0x28]
551556:  VCMPE.F32       S0, #0.0
55155A:  VMRS            APSR_nzcv, FPSCR
55155E:  BGE             loc_5515BC
551560:  MOV.W           R0, #0xFFFFFFFF; int
551564:  MOVS            R1, #0; bool
551566:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55156A:  CMP             R4, R0
55156C:  BEQ             loc_5515BC
55156E:  LDRB.W          R0, [R4,#0x87C]
551572:  LSLS            R0, R0, #0x1C
551574:  BMI             loc_5514B0
551576:  LDRB.W          R0, [R4,#0x3A]
55157A:  MOVS            R1, #8
55157C:  CMP.W           R1, R0,LSR#3
551580:  BEQ             loc_5514B0
551582:  LDRB.W          R1, [R4,#0x45]
551586:  LSLS            R1, R1, #0x1F
551588:  BNE             loc_5514B0
55158A:  LSRS            R0, R0, #3
55158C:  CMP             R0, #5
55158E:  BEQ             loc_5515BC
551590:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5515A0)
551594:  VMOV.F32        S0, #-4.0
551598:  VLDR            S4, =0.0
55159C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55159E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5515A0:  VLDR            S2, [R0]
5515A4:  ADDW            R0, R4, #0x4CC
5515A8:  VMUL.F32        S0, S2, S0
5515AC:  VLDR            S2, [R0]
5515B0:  VADD.F32        S0, S2, S0
5515B4:  VMAX.F32        D0, D0, D2
5515B8:  VSTR            S0, [R0]
5515BC:  VMOV            S20, R6
5515C0:  VCMP.F32        S20, #0.0
5515C4:  VMRS            APSR_nzcv, FPSCR
5515C8:  BEQ.W           loc_5514B0
5515CC:  LDRB.W          R0, [R4,#0x46]
5515D0:  LSLS            R0, R0, #0x1B
5515D2:  BMI.W           loc_5514B0
5515D6:  LDR.W           R0, [R4,#0x5A4]
5515DA:  ADD.W           R6, R4, #0xE4
5515DE:  ADD.W           R11, R4, #0xF0
5515E2:  CMP             R0, #2
5515E4:  BNE             loc_5515FE
5515E6:  LDRD.W          R1, R3, [R4,#0xDC]; unsigned __int16
5515EA:  MOV             R0, R4; this
5515EC:  LDRH.W          R2, [R4,#0xFC]; float
5515F0:  STRD.W          R11, R6, [SP,#0xA0+var_A0]; CEntity *
5515F4:  BLX             j__ZN5CBike19DamageKnockOffRiderEP8CVehicleftP7CEntityR7CVectorS5_; CBike::DamageKnockOffRider(CVehicle *,float,ushort,CEntity *,CVector &,CVector &)
5515F8:  CMP             R0, #0
5515FA:  BNE.W           loc_5514B0
5515FE:  LDR             R0, [R4,#0x14]
551600:  VMOV.F32        S10, #25.0
551604:  VLDR            S0, =1500.0
551608:  VLDR            S4, [R4,#0xE8]
55160C:  VLDR            S12, [R0,#0x14]
551610:  VDIV.F32        S8, S16, S0
551614:  VLDR            S0, [R4,#0xE4]
551618:  VMUL.F32        S12, S4, S12
55161C:  VLDR            S6, [R0,#0x10]
551620:  VLDR            S14, [R0,#0x18]
551624:  VMUL.F32        S6, S0, S6
551628:  VLDR            S2, [R4,#0xEC]
55162C:  LDRB.W          R0, [R4,#0x3A]
551630:  VMUL.F32        S14, S2, S14
551634:  AND.W           R0, R0, #0xF8
551638:  CMP             R0, #0x18
55163A:  VADD.F32        S6, S6, S12
55163E:  VADD.F32        S6, S6, S14
551642:  BNE             loc_551688
551644:  VLDR            S12, =-0.4
551648:  VCMPE.F32       S6, S12
55164C:  VMRS            APSR_nzcv, FPSCR
551650:  BGE             loc_551688
551652:  LDRB.W          R0, [R4,#0x4A8]
551656:  CMP             R0, #2
551658:  BEQ             loc_551688
55165A:  VLDR            S12, [R4,#0x90]
55165E:  VLDR            S14, =0.1
551662:  VDIV.F32        S12, S20, S12
551666:  VCMPE.F32       S12, S14
55166A:  VMRS            APSR_nzcv, FPSCR
55166E:  BLE             loc_551688
551670:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55167E)
551674:  MOVS            R1, #0x13
551676:  STRB.W          R1, [R4,#0x3BF]
55167A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55167C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
55167E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
551680:  ADD.W           R0, R0, #0xFA0
551684:  STR.W           R0, [R4,#0x3C0]
551688:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x551694)
55168C:  VMUL.F32        S16, S8, S10
551690:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
551692:  LDR             R0, [R0]; CGame::currArea ...
551694:  LDR             R0, [R0]; CGame::currArea
551696:  CMP             R0, #0
551698:  IT NE
55169A:  CMPNE           R5, #0
55169C:  BEQ             loc_5516CA
55169E:  VABS.F32        S6, S6
5516A2:  VLDR            S8, =0.4
5516A6:  VCMPE.F32       S6, S8
5516AA:  VMRS            APSR_nzcv, FPSCR
5516AE:  BLE             loc_5516CA
5516B0:  LDRB.W          R0, [R5,#0x3A]
5516B4:  AND.W           R1, R0, #7
5516B8:  CMP             R1, #2
5516BA:  ITTT EQ
5516BC:  VLDREQ          S6, =0.333
5516C0:  VMULEQ.F32      S20, S20, S6
5516C4:  VSTREQ          S20, [SP,#0xA0+var_64]
5516C8:  B               loc_5516D2
5516CA:  CMP             R5, #0
5516CC:  BEQ             loc_55177C
5516CE:  LDRB.W          R0, [R5,#0x3A]
5516D2:  VMOV.F32        S18, #1.0
5516D6:  AND.W           R1, R0, #7
5516DA:  CMP             R1, #3
5516DC:  BNE.W           loc_5514F8
5516E0:  LDRB.W          R1, [R5,#0x484]
5516E4:  LSLS            R1, R1, #0x1F
5516E6:  BEQ.W           loc_5514F8
5516EA:  LDR             R1, [R5,#0x14]
5516EC:  ADD.W           R2, R5, #0x4E8
5516F0:  VLDR            S6, [R2]
5516F4:  VLDR            S8, [R1,#0x10]
5516F8:  VLDR            S10, [R1,#0x14]
5516FC:  VMUL.F32        S8, S6, S8
551700:  VLDR            S12, [R1,#0x18]
551704:  VMUL.F32        S10, S6, S10
551708:  VMUL.F32        S6, S6, S12
55170C:  VMUL.F32        S0, S8, S0
551710:  VMUL.F32        S4, S10, S4
551714:  VMUL.F32        S2, S6, S2
551718:  VADD.F32        S0, S0, S4
55171C:  VADD.F32        S0, S0, S2
551720:  VCMPE.F32       S0, #0.0
551724:  VMRS            APSR_nzcv, FPSCR
551728:  BGE.W           loc_5514F8
55172C:  VLDR            S2, [R5,#0x90]
551730:  VMUL.F32        S0, S0, S2
551734:  VLDR            S2, =0.0
551738:  VADD.F32        S0, S20, S0
55173C:  VMAX.F32        D0, D0, D1
551740:  VSTR            S0, [SP,#0xA0+var_64]
551744:  B               loc_5514F8
551746:  ALIGN 4
551748:  DCFS 0.333
55174C:  DCFS 0.6
551750:  DCFS 0.0
551754:  DCFS 1500.0
551758:  DCFS -0.4
55175C:  DCFS 0.1
551760:  DCFS 0.4
551764:  DCFS 50.0
551768:  DCFS 250.0
55176C:  DCFS 2000.0
551770:  DCFS 100.0
551774:  DCFS 0.0004
551778:  DCFS 0.3
55177C:  VMOV.F32        S18, #1.0
551780:  MOV.W           R10, #0
551784:  MOVS            R5, #0
551786:  LDRB.W          R0, [R4,#0x3A]
55178A:  CMP             R0, #8
55178C:  BCC             loc_5517BA
55178E:  LDRB.W          R0, [R4,#0x46]
551792:  AND.W           R0, R0, #0x40 ; '@'
551796:  AND.W           R0, R10, R0,LSR#6
55179A:  CMP             R0, #1
55179C:  BNE             loc_5517BA
55179E:  MOV.W           R0, #0xFFFFFFFF; int
5517A2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5517A6:  CMP             R5, R0
5517A8:  BEQ             loc_5517BA
5517AA:  MOV.W           R0, #0xFFFFFFFF; int
5517AE:  MOVS            R1, #0; bool
5517B0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5517B4:  CMP             R5, R0
5517B6:  BNE.W           loc_5514B0
5517BA:  ADD             R1, SP, #0xA0+var_64; float *
5517BC:  MOV             R0, R4; this
5517BE:  BLX             j__ZN8CVehicle19ReduceVehicleDamageERf; CVehicle::ReduceVehicleDamage(float &)
5517C2:  CMP.W           R10, #1
5517C6:  BNE             loc_5517DA
5517C8:  LDR.W           R0, [R4,#0x4D0]
5517CC:  CMP             R5, R0
5517CE:  ITT NE
5517D0:  LDRNE.W         R0, [R4,#0x4D4]
5517D4:  CMPNE           R5, R0
5517D6:  BEQ.W           loc_5514B0
5517DA:  VLDR            S0, [SP,#0xA0+var_64]
5517DE:  VCMPE.F32       S0, S16
5517E2:  VMRS            APSR_nzcv, FPSCR
5517E6:  BLE.W           loc_552262
5517EA:  LDRB.W          R0, [R4,#0x3A]
5517EE:  AND.W           R0, R0, #0xF8
5517F2:  CMP             R0, #0x28 ; '('
5517F4:  BEQ.W           loc_552262
5517F8:  ADDW            R0, R4, #0x42C
5517FC:  STR             R0, [SP,#0xA0+var_8C]
5517FE:  LDRB            R0, [R0]
551800:  LSLS            R0, R0, #0x1F
551802:  BEQ             loc_5518D2
551804:  MOV.W           R0, #0xFFFFFFFF; int
551808:  MOVS            R1, #0; bool
55180A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55180E:  CMP             R0, #0
551810:  BEQ             loc_5518D2
551812:  MOV.W           R0, #0xFFFFFFFF; int
551816:  MOVS            R1, #0; bool
551818:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55181C:  CMP             R5, R0
55181E:  BNE             loc_5518D2
551820:  LDRB.W          R0, [R4,#0x3A]
551824:  AND.W           R0, R0, #0xF8
551828:  CMP             R0, #0x20 ; ' '
55182A:  BEQ             loc_5518D2
55182C:  MOV.W           R0, #0xFFFFFFFF; int
551830:  MOVS            R1, #0; bool
551832:  VLDR            S20, [R4,#0x48]
551836:  VLDR            S22, [R4,#0x4C]
55183A:  VLDR            S24, [R4,#0x50]
55183E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
551842:  VLDR            S4, [R0,#0x48]
551846:  VMUL.F32        S0, S22, S22
55184A:  VLDR            S6, [R0,#0x4C]
55184E:  VMUL.F32        S2, S20, S20
551852:  VMUL.F32        S4, S4, S4
551856:  VLDR            S8, [R0,#0x50]
55185A:  VMUL.F32        S6, S6, S6
55185E:  VMUL.F32        S10, S24, S24
551862:  VADD.F32        S0, S2, S0
551866:  VMUL.F32        S2, S8, S8
55186A:  VADD.F32        S4, S4, S6
55186E:  VADD.F32        S0, S0, S10
551872:  VADD.F32        S2, S4, S2
551876:  VSQRT.F32       S0, S0
55187A:  VSQRT.F32       S2, S2
55187E:  VCMPE.F32       S0, S2
551882:  VMRS            APSR_nzcv, FPSCR
551886:  BGT             loc_5518D2
551888:  MOV.W           R0, #0xFFFFFFFF; int
55188C:  MOVS            R1, #0; bool
55188E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
551892:  VLDR            S0, [R0,#0x48]
551896:  VLDR            S2, [R0,#0x4C]
55189A:  VMUL.F32        S0, S0, S0
55189E:  VLDR            S4, [R0,#0x50]
5518A2:  VMUL.F32        S2, S2, S2
5518A6:  VMUL.F32        S4, S4, S4
5518AA:  VADD.F32        S0, S0, S2
5518AE:  VLDR            S2, =0.1
5518B2:  VADD.F32        S0, S0, S4
5518B6:  VSQRT.F32       S0, S0
5518BA:  VCMPE.F32       S0, S2
5518BE:  VMRS            APSR_nzcv, FPSCR
5518C2:  BLE             loc_5518D2
5518C4:  MOV.W           R0, #0xFFFFFFFF; int
5518C8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5518CC:  MOVS            R1, #1; int
5518CE:  BLX             j__ZN10CPlayerPed20SetWantedLevelNoDropEi; CPlayerPed::SetWantedLevelNoDrop(int)
5518D2:  STR             R6, [SP,#0xA0+var_90]
5518D4:  LDRB.W          R0, [R4,#0x3A]
5518D8:  CMP             R0, #7
5518DA:  BHI             loc_551942
5518DC:  VLDR            S0, [SP,#0xA0+var_64]
5518E0:  VLDR            S2, =50.0
5518E4:  VCMPE.F32       S0, S2
5518E8:  VMRS            APSR_nzcv, FPSCR
5518EC:  BLE             loc_551942
5518EE:  VLDR            S2, =0.4
5518F2:  MOVW            R0, #0x9C40
5518F6:  VLDR            S4, =250.0
5518FA:  MOV             R9, R11
5518FC:  VMUL.F32        S0, S0, S2
551900:  VLDR            S2, =2000.0
551904:  VMUL.F32        S0, S0, S2
551908:  VLDR            S2, [R4,#0x90]
55190C:  VDIV.F32        S0, S0, S2
551910:  VLDR            S2, =100.0
551914:  VADD.F32        S0, S0, S2
551918:  VMIN.F32        D0, D0, D2
55191C:  VCVT.U32.F32    S0, S0
551920:  VMOV            R6, S0
551924:  MOV             R1, R6
551926:  BLX             __aeabi_uidiv
55192A:  SXTH.W          R11, R0
55192E:  MOVS            R0, #0; this
551930:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
551934:  MOV             R1, R11; __int16
551936:  MOV             R2, R6; unsigned __int8
551938:  MOV.W           R3, #0x7D0; unsigned int
55193C:  MOV             R11, R9
55193E:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
551942:  CMP.W           R10, #1
551946:  BNE             loc_551968
551948:  LDRB.W          R0, [R5,#0x3A]
55194C:  AND.W           R0, R0, #7
551950:  CMP             R0, #2
551952:  BNE             loc_551968
551954:  MOVS            R0, #0x31 ; '1'
551956:  ADDW            R1, R4, #0x51C; CEntity **
55195A:  STR.W           R5, [R4,#0x51C]
55195E:  STRB.W          R0, [R4,#0x518]
551962:  MOV             R0, R5; this
551964:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
551968:  ADDW            R10, R4, #0x5B4
55196C:  MOVS            R1, #0
55196E:  MOV             R0, R10
551970:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
551974:  MOV             R9, R0
551976:  MOV             R0, R10
551978:  MOVS            R1, #1
55197A:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
55197E:  STR             R0, [SP,#0xA0+var_84]
551980:  MOV             R0, R10
551982:  MOVS            R1, #2
551984:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
551988:  STR             R0, [SP,#0xA0+var_88]
55198A:  MOV             R0, R10
55198C:  MOVS            R1, #3
55198E:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
551992:  MOV             R5, R0
551994:  LDRB.W          R0, [R4,#0x3A]
551998:  CMP             R0, #7
55199A:  BHI             loc_5519C4
55199C:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5519AC)
5519A0:  MOV.W           R3, #0x194
5519A4:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x5519B2)
5519A8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5519AA:  LDR.W           R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5519B6)
5519AE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5519B0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5519B2:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5519B4:  LDR             R1, [R1]; CWorld::Players ...
5519B6:  LDR             R0, [R0]; CWorld::PlayerInFocus
5519B8:  SMLABB.W        R0, R0, R3, R1
5519BC:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
5519BE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5519C0:  STR.W           R1, [R0,#0xD0]
5519C4:  VLDR            S0, [R4,#0x48]
5519C8:  VLDR            S2, [R4,#0x4C]
5519CC:  VMUL.F32        S0, S0, S0
5519D0:  VLDR            S4, [R4,#0x50]
5519D4:  VMUL.F32        S2, S2, S2
5519D8:  VMUL.F32        S4, S4, S4
5519DC:  VADD.F32        S0, S0, S2
5519E0:  VADD.F32        S20, S0, S4
5519E4:  VLDR            S0, =0.0004
5519E8:  VCMPE.F32       S20, S0
5519EC:  VMRS            APSR_nzcv, FPSCR
5519F0:  BLE             loc_551A08
5519F2:  VLDR            S0, [SP,#0xA0+var_64]
5519F6:  MOV             R0, R4
5519F8:  LDR             R3, [R7,#arg_8]
5519FA:  MOV             R1, R11
5519FC:  VMUL.F32        S0, S18, S0
551A00:  VMOV            R2, S0
551A04:  BLX             j__ZN11CAutomobile28dmgDrawCarCollidingParticlesERK7CVectorf11eWeaponType; CAutomobile::dmgDrawCarCollidingParticles(CVector const&,float,eWeaponType)
551A08:  VLDR            S0, =0.3
551A0C:  MOV             R6, R11
551A0E:  VCMPE.F32       S20, S0
551A12:  VMRS            APSR_nzcv, FPSCR
551A16:  ITTTT LE
551A18:  LDRLE           R0, [R4,#0x14]
551A1A:  VLDRLE          S0, [R0,#0x28]
551A1E:  VCMPELE.F32     S0, #0.0
551A22:  VMRSLE          APSR_nzcv, FPSCR
551A26:  BLE.W           def_551A3C; jumptable 00551A3C default case, cases 11-18
551A2A:  SUB.W           R0, R8, #1; switch 19 cases
551A2E:  CMP             R0, #0x12
551A30:  BHI.W           def_551A3C; jumptable 00551A3C default case, cases 11-18
551A34:  MOV.W           R8, #0
551A38:  MOV.W           R11, #1
551A3C:  TBH.W           [PC,R0,LSL#1]; switch jump
551A40:  DCW 0x13; jump table for switch statement
551A42:  DCW 0x2D
551A44:  DCW 0x31
551A46:  DCW 0x85
551A48:  DCW 0xDD
551A4A:  DCW 0xE6
551A4C:  DCW 0x143
551A4E:  DCW 0x161
551A50:  DCW 0x1FA
551A52:  DCW 0x22A
551A54:  DCW 0x259
551A56:  DCW 0x259
551A58:  DCW 0x259
551A5A:  DCW 0x259
551A5C:  DCW 0x259
551A5E:  DCW 0x259
551A60:  DCW 0x259
551A62:  DCW 0x259
551A64:  DCW 0x246
551A66:  MOV.W           R8, #0; jumptable 00551A3C case 1
551A6A:  MOVS            R6, #1
551A6C:  VMOV.F32        S0, #4.0
551A70:  VLDR            S2, [SP,#0xA0+var_64]
551A74:  LDR.W           R0, [R4,#0x388]
551A78:  MOV             R1, R4
551A7A:  MOVS            R2, #5
551A7C:  VMUL.F32        S0, S2, S0
551A80:  VMOV            R3, S0
551A84:  VLDR            S0, [R0,#0xC8]
551A88:  MOV             R0, R10
551A8A:  VSTR            S0, [SP,#0xA0+var_A0]
551A8E:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551A92:  CMP             R6, #0
551A94:  BEQ.W           loc_551E16
551A98:  B               def_551A3C; jumptable 00551A3C default case, cases 11-18
551A9A:  MOV.W           R8, #0; jumptable 00551A3C case 2
551A9E:  MOVS            R6, #1
551AA0:  B               loc_551C7C
551AA2:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 3
551AA6:  VLDR            S2, [SP,#0xA0+var_64]
551AAA:  LDR.W           R0, [R4,#0x388]
551AAE:  MOV             R1, R4
551AB0:  MOVS            R2, #0x10
551AB2:  VMUL.F32        S0, S2, S0
551AB6:  VMOV            R3, S0
551ABA:  VLDR            S0, [R0,#0xC8]
551ABE:  MOV             R0, R10
551AC0:  VSTR            S0, [SP,#0xA0+var_A0]
551AC4:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551AC8:  LDR             R0, [R4,#0x14]
551ACA:  VLDR            S0, [R6]
551ACE:  ADD.W           R1, R0, #0x30 ; '0'
551AD2:  CMP             R0, #0
551AD4:  VLDR            S2, [R6,#4]
551AD8:  VLDR            S4, [R6,#8]
551ADC:  IT EQ
551ADE:  ADDEQ           R1, R4, #4
551AE0:  VLDR            S6, [R1]
551AE4:  VLDR            S8, [R1,#4]
551AE8:  VSUB.F32        S0, S0, S6
551AEC:  VLDR            S10, [R1,#8]
551AF0:  VSUB.F32        S2, S2, S8
551AF4:  VLDR            S20, [R0]
551AF8:  VLDR            S24, [R0,#4]
551AFC:  VSUB.F32        S4, S4, S10
551B00:  VLDR            S22, [R0,#8]
551B04:  LDR             R0, [SP,#0xA0+var_90]
551B06:  VMUL.F32        S0, S20, S0
551B0A:  VLDR            S26, [R0]
551B0E:  VMUL.F32        S2, S24, S2
551B12:  VLDR            S30, [R0,#4]
551B16:  VMUL.F32        S4, S22, S4
551B1A:  VLDR            S28, [R0,#8]
551B1E:  MOV             R0, R4; this
551B20:  VADD.F32        S0, S0, S2
551B24:  VADD.F32        S17, S0, S4
551B28:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
551B2C:  VLDR            S0, [R0,#0xC]
551B30:  VLDR            S2, =0.7
551B34:  VDIV.F32        S0, S17, S0
551B38:  VCMPE.F32       S0, S2
551B3C:  VMRS            APSR_nzcv, FPSCR
551B40:  BLE.W           loc_551D14
551B44:  MOV.W           R8, #8
551B48:  B               loc_551D7C
551B4A:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 4
551B4E:  VLDR            S2, [SP,#0xA0+var_64]
551B52:  LDR.W           R0, [R4,#0x388]
551B56:  MOV             R1, R4
551B58:  MOVS            R2, #0x11
551B5A:  VMUL.F32        S0, S2, S0
551B5E:  VMOV            R3, S0
551B62:  VLDR            S0, [R0,#0xC8]
551B66:  MOV             R0, R10
551B68:  VSTR            S0, [SP,#0xA0+var_A0]
551B6C:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551B70:  LDR             R0, [R4,#0x14]
551B72:  VLDR            S0, [R6]
551B76:  ADD.W           R1, R0, #0x30 ; '0'
551B7A:  CMP             R0, #0
551B7C:  IT EQ
551B7E:  ADDEQ           R1, R4, #4
551B80:  VLDR            D16, [R6,#4]
551B84:  VLDR            S2, [R1]
551B88:  VLDR            D17, [R1,#4]
551B8C:  VSUB.F32        S0, S0, S2
551B90:  VLDR            S2, [R0]
551B94:  VSUB.F32        D16, D16, D17
551B98:  VLDR            D17, [R0,#4]
551B9C:  MOV             R0, R4; this
551B9E:  VMUL.F32        S0, S2, S0
551BA2:  VMUL.F32        D1, D17, D16
551BA6:  VADD.F32        S0, S0, S2
551BAA:  VADD.F32        S20, S0, S3
551BAE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
551BB2:  VLDR            S0, [R0,#0xC]
551BB6:  LDR             R0, [SP,#0xA0+var_8C]
551BB8:  VDIV.F32        S0, S20, S0
551BBC:  LDR             R0, [R0]
551BBE:  ANDS.W          R0, R0, #0x100
551BC2:  BEQ             loc_551C1E
551BC4:  VLDR            S2, =0.1
551BC8:  VCMPE.F32       S0, S2
551BCC:  VMRS            APSR_nzcv, FPSCR
551BD0:  BLE             loc_551C1E
551BD2:  LDR.W           R1, =(FRONT_DAMAGE_MAG_MIN_WING_ptr - 0x551BDE)
551BD6:  VLDR            S2, [R4,#0x90]
551BDA:  ADD             R1, PC; FRONT_DAMAGE_MAG_MIN_WING_ptr
551BDC:  LDR             R1, [R1]; FRONT_DAMAGE_MAG_MIN_WING
551BDE:  VLDR            S4, [R1]
551BE2:  VMUL.F32        S2, S4, S2
551BE6:  VLDR            S4, [SP,#0xA0+var_64]
551BEA:  VCMPE.F32       S4, S2
551BEE:  VMRS            APSR_nzcv, FPSCR
551BF2:  BLE             loc_551C1E
551BF4:  MOV.W           R8, #0x40 ; '@'
551BF8:  B               loc_551C5C
551BFA:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 5
551BFE:  VLDR            S2, [SP,#0xA0+var_64]
551C02:  LDR.W           R0, [R4,#0x388]
551C06:  MOV             R1, R4
551C08:  MOVS            R2, #7
551C0A:  B               loc_551EDC
551C0C:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 6
551C10:  VLDR            S2, [SP,#0xA0+var_64]
551C14:  LDR.W           R0, [R4,#0x388]
551C18:  MOV             R1, R4
551C1A:  MOVS            R2, #8
551C1C:  B               loc_551EDC
551C1E:  VLDR            S2, =-0.1
551C22:  MOV.W           R8, #0
551C26:  VCMPE.F32       S0, S2
551C2A:  VMRS            APSR_nzcv, FPSCR
551C2E:  BGE             loc_551C5C
551C30:  CBZ             R0, loc_551C5C
551C32:  LDR.W           R0, =(FRONT_DAMAGE_MAG_MIN_WING_ptr - 0x551C3E)
551C36:  VLDR            S0, [R4,#0x90]
551C3A:  ADD             R0, PC; FRONT_DAMAGE_MAG_MIN_WING_ptr
551C3C:  LDR             R0, [R0]; FRONT_DAMAGE_MAG_MIN_WING
551C3E:  VLDR            S2, [R0]
551C42:  VMUL.F32        S0, S2, S0
551C46:  VLDR            S2, [SP,#0xA0+var_64]
551C4A:  VCMPE.F32       S2, S0
551C4E:  VMRS            APSR_nzcv, FPSCR
551C52:  ITE GT
551C54:  MOVGT.W         R8, #0x20 ; ' '
551C58:  MOVLE.W         R8, #0
551C5C:  MOV             R0, R10; this
551C5E:  MOVS            R1, #6; int
551C60:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
551C64:  CMP             R0, #2
551C66:  IT CC
551C68:  ORRCC.W         R8, R8, #0x10
551C6C:  CMP.W           R8, #0
551C70:  BEQ.W           def_551A3C; jumptable 00551A3C default case, cases 11-18
551C74:  MOVS.W          R0, R8,LSL#27
551C78:  BPL             loc_551CA8
551C7A:  MOVS            R6, #0
551C7C:  VMOV.F32        S0, #4.0
551C80:  VLDR            S2, [SP,#0xA0+var_64]
551C84:  LDR.W           R0, [R4,#0x388]
551C88:  MOV             R1, R4
551C8A:  MOVS            R2, #6
551C8C:  VMUL.F32        S0, S2, S0
551C90:  VMOV            R3, S0
551C94:  VLDR            S0, [R0,#0xC8]
551C98:  MOV             R0, R10
551C9A:  VSTR            S0, [SP,#0xA0+var_A0]
551C9E:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551CA2:  CMP             R6, #0
551CA4:  BNE.W           def_551A3C; jumptable 00551A3C default case, cases 11-18
551CA8:  MOV.W           R11, #0
551CAC:  CMP.W           R8, #0
551CB0:  IT EQ
551CB2:  MOVEQ.W         R11, #1
551CB6:  TST.W           R8, #0x20
551CBA:  BNE             loc_551CC6; jumptable 00551A3C case 7
551CBC:  CMP.W           R8, #0
551CC0:  BEQ             loc_551CC6; jumptable 00551A3C case 7
551CC2:  BNE             loc_551CF4
551CC4:  B               def_551A3C; jumptable 00551A3C default case, cases 11-18
551CC6:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 7
551CCA:  VLDR            S2, [SP,#0xA0+var_64]
551CCE:  LDR.W           R0, [R4,#0x388]
551CD2:  MOV             R1, R4
551CD4:  MOVS            R2, #9
551CD6:  VMUL.F32        S0, S2, S0
551CDA:  VMOV            R3, S0
551CDE:  VLDR            S0, [R0,#0xC8]
551CE2:  MOV             R0, R10
551CE4:  VSTR            S0, [SP,#0xA0+var_A0]
551CE8:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551CEC:  CMP.W           R11, #0
551CF0:  BNE.W           def_551A3C; jumptable 00551A3C default case, cases 11-18
551CF4:  CMP.W           R8, #0
551CF8:  BEQ             loc_551D02; jumptable 00551A3C case 8
551CFA:  ANDS.W          R0, R8, #0x40 ; '@'
551CFE:  BEQ.W           def_551A3C; jumptable 00551A3C default case, cases 11-18
551D02:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 8
551D06:  VLDR            S2, [SP,#0xA0+var_64]
551D0A:  LDR.W           R0, [R4,#0x388]
551D0E:  MOV             R1, R4
551D10:  MOVS            R2, #0xA
551D12:  B               loc_551EDC
551D14:  VMUL.F32        S2, S30, S24
551D18:  VMUL.F32        S4, S26, S20
551D1C:  VMUL.F32        S6, S28, S22
551D20:  VADD.F32        S2, S4, S2
551D24:  VADD.F32        S4, S2, S6
551D28:  VMOV.F32        S2, #-0.5
551D2C:  VCMPE.F32       S4, S2
551D30:  VMRS            APSR_nzcv, FPSCR
551D34:  BGE             loc_551D68
551D36:  VMOV.F32        S6, #0.5
551D3A:  VCMPE.F32       S0, S6
551D3E:  VMRS            APSR_nzcv, FPSCR
551D42:  BLE             loc_551D68
551D44:  LDR.W           R0, =(FRONT_DAMAGE_MAG_MIN_WING_ptr - 0x551D50)
551D48:  VLDR            S6, [R4,#0x90]
551D4C:  ADD             R0, PC; FRONT_DAMAGE_MAG_MIN_WING_ptr
551D4E:  LDR             R0, [R0]; FRONT_DAMAGE_MAG_MIN_WING
551D50:  VLDR            S8, [R0]
551D54:  VMUL.F32        S6, S8, S6
551D58:  VLDR            S8, [SP,#0xA0+var_64]
551D5C:  VCMPE.F32       S8, S6
551D60:  VMRS            APSR_nzcv, FPSCR
551D64:  BGT.W           loc_551B44
551D68:  VLDR            S6, =-0.7
551D6C:  VCMPE.F32       S0, S6
551D70:  VMRS            APSR_nzcv, FPSCR
551D74:  BGE.W           loc_552314
551D78:  MOV.W           R8, #4
551D7C:  MOV             R0, R10; this
551D7E:  MOVS            R1, #5; int
551D80:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
551D84:  CBZ             R0, loc_551DC2
551D86:  LDR.W           R0, =(FRONT_DAMAGE_MAG_MIN_BONNET_ptr - 0x551D92)
551D8A:  VLDR            S0, [R4,#0x90]
551D8E:  ADD             R0, PC; FRONT_DAMAGE_MAG_MIN_BONNET_ptr
551D90:  LDR             R0, [R0]; FRONT_DAMAGE_MAG_MIN_BONNET
551D92:  VLDR            S2, [R0]
551D96:  VMUL.F32        S0, S2, S0
551D9A:  VLDR            S2, [SP,#0xA0+var_64]
551D9E:  VCMPE.F32       S2, S0
551DA2:  VMRS            APSR_nzcv, FPSCR
551DA6:  BLE             loc_551DAE
551DA8:  ORR.W           R8, R8, #1
551DAC:  B               loc_551DC2
551DAE:  LDR             R0, [R7,#arg_8]
551DB0:  CMP             R0, #0x2E ; '.'
551DB2:  BGT             loc_551DC2
551DB4:  BLX             rand
551DB8:  TST.W           R0, #3
551DBC:  IT EQ
551DBE:  ORREQ.W         R8, R8, #1
551DC2:  MOV             R0, R10; this
551DC4:  MOVS            R1, #5; int
551DC6:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
551DCA:  CMP             R0, #2
551DCC:  BCC             loc_551DF6
551DCE:  LDR.W           R0, =(FRONT_DAMAGE_MAG_MIN_WSCREEN_ptr - 0x551DDA)
551DD2:  VLDR            S0, [R4,#0x90]
551DD6:  ADD             R0, PC; FRONT_DAMAGE_MAG_MIN_WSCREEN_ptr
551DD8:  LDR             R0, [R0]; FRONT_DAMAGE_MAG_MIN_WSCREEN
551DDA:  VLDR            S2, [R0]
551DDE:  VMUL.F32        S0, S2, S0
551DE2:  VLDR            S2, [SP,#0xA0+var_64]
551DE6:  VCMPE.F32       S2, S0
551DEA:  VMRS            APSR_nzcv, FPSCR
551DEE:  BLE             loc_551DF6
551DF0:  ORR.W           R8, R8, #2
551DF4:  B               loc_551DFC
551DF6:  CMP.W           R8, #0
551DFA:  BEQ             def_551A3C; jumptable 00551A3C default case, cases 11-18
551DFC:  MOVS            R6, #0
551DFE:  CMP.W           R8, #0
551E02:  IT EQ
551E04:  MOVEQ           R6, #1
551E06:  TST.W           R8, #1
551E0A:  BNE.W           loc_551A6C
551E0E:  CMP.W           R8, #0
551E12:  BEQ.W           loc_551A6C
551E16:  MOV.W           R11, #0
551E1A:  CMP.W           R8, #0
551E1E:  IT EQ
551E20:  MOVEQ.W         R11, #1
551E24:  TST.W           R8, #4
551E28:  BNE             loc_551E34; jumptable 00551A3C case 9
551E2A:  CMP.W           R8, #0
551E2E:  BEQ             loc_551E34; jumptable 00551A3C case 9
551E30:  BNE             loc_551E60
551E32:  B               def_551A3C; jumptable 00551A3C default case, cases 11-18
551E34:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 9
551E38:  VLDR            S2, [SP,#0xA0+var_64]
551E3C:  LDR.W           R0, [R4,#0x388]
551E40:  MOV             R1, R4
551E42:  MOVS            R2, #0xB
551E44:  VMUL.F32        S0, S2, S0
551E48:  VMOV            R3, S0
551E4C:  VLDR            S0, [R0,#0xC8]
551E50:  MOV             R0, R10
551E52:  VSTR            S0, [SP,#0xA0+var_A0]
551E56:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551E5A:  CMP.W           R11, #0
551E5E:  BNE             def_551A3C; jumptable 00551A3C default case, cases 11-18
551E60:  MOV.W           R11, #0
551E64:  CMP.W           R8, #0
551E68:  IT EQ
551E6A:  MOVEQ.W         R11, #1
551E6E:  TST.W           R8, #8
551E72:  BNE             loc_551E94; jumptable 00551A3C case 10
551E74:  CMP.W           R8, #0
551E78:  BEQ             loc_551E94; jumptable 00551A3C case 10
551E7A:  BNE             loc_551EC0
551E7C:  B               def_551A3C; jumptable 00551A3C default case, cases 11-18
551E7E:  ALIGN 0x10
551E80:  DCFS 0.7
551E84:  DCFS 0.1
551E88:  DCFS -0.1
551E8C:  DCFS -0.7
551E90:  DCFS 0.6
551E94:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 10
551E98:  VLDR            S2, [SP,#0xA0+var_64]
551E9C:  LDR.W           R0, [R4,#0x388]
551EA0:  MOV             R1, R4
551EA2:  MOVS            R2, #0xC
551EA4:  VMUL.F32        S0, S2, S0
551EA8:  VMOV            R3, S0
551EAC:  VLDR            S0, [R0,#0xC8]
551EB0:  MOV             R0, R10
551EB2:  VSTR            S0, [SP,#0xA0+var_A0]
551EB6:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551EBA:  CMP.W           R11, #0
551EBE:  BNE             def_551A3C; jumptable 00551A3C default case, cases 11-18
551EC0:  CMP.W           R8, #0
551EC4:  BEQ             loc_551ECC; jumptable 00551A3C case 19
551EC6:  ANDS.W          R0, R8, #2
551ECA:  BEQ             def_551A3C; jumptable 00551A3C default case, cases 11-18
551ECC:  VMOV.F32        S0, #4.0; jumptable 00551A3C case 19
551ED0:  VLDR            S2, [SP,#0xA0+var_64]
551ED4:  LDR.W           R0, [R4,#0x388]
551ED8:  MOV             R1, R4
551EDA:  MOVS            R2, #0xF
551EDC:  VMUL.F32        S0, S2, S0
551EE0:  VMOV            R3, S0
551EE4:  VLDR            S0, [R0,#0xC8]
551EE8:  MOV             R0, R10
551EEA:  VSTR            S0, [SP,#0xA0+var_A0]
551EEE:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
551EF2:  VLDR            S0, [SP,#0xA0+var_64]; jumptable 00551A3C default case, cases 11-18
551EF6:  LDR.W           R0, [R4,#0x388]
551EFA:  VSUB.F32        S0, S0, S16
551EFE:  VLDR            S2, [R0,#0xC8]
551F02:  VMUL.F32        S0, S0, S2
551F06:  VLDR            S2, =0.6
551F0A:  VMUL.F32        S0, S0, S2
551F0E:  VMUL.F32        S0, S18, S0
551F12:  VSTR            S0, [SP,#0xA0+var_64]
551F16:  LDRH            R0, [R4,#0x26]
551F18:  CMP.W           R0, #0x1F4
551F1C:  BGT             loc_551F30
551F1E:  CMP.W           R0, #0x1AC
551F22:  BEQ.W           loc_552094
551F26:  MOVW            R1, #0x1D1
551F2A:  CMP             R0, R1
551F2C:  BEQ             loc_551F3E
551F2E:  B               loc_551F4A
551F30:  MOVW            R1, #0x1F5
551F34:  CMP             R0, R1
551F36:  IT NE
551F38:  CMPNE.W         R0, #0x234
551F3C:  BNE             loc_551F4A
551F3E:  VMOV.F32        S2, #30.0
551F42:  VMUL.F32        S0, S0, S2
551F46:  VSTR            S0, [SP,#0xA0+var_64]
551F4A:  LDR.W           R2, [R4,#0xE0]
551F4E:  CBZ             R2, loc_551F64
551F50:  LDRH            R0, [R2,#0x26]
551F52:  CMP.W           R0, #0x1B0
551F56:  ITTT EQ
551F58:  VMOVEQ.F32      S2, #15.0
551F5C:  VMULEQ.F32      S0, S0, S2
551F60:  VSTREQ          S0, [SP,#0xA0+var_64]
551F64:  VCMPE.F32       S0, #0.0
551F68:  VMRS            APSR_nzcv, FPSCR
551F6C:  BLE.W           loc_552210
551F70:  CMP             R2, #0
551F72:  BEQ             loc_552022
551F74:  LDRB.W          R0, [R2,#0x3A]
551F78:  AND.W           R0, R0, #7
551F7C:  CMP             R0, #2
551F7E:  BNE             loc_552022
551F80:  LDR.W           R0, [R2,#0x464]
551F84:  CMP             R0, #0
551F86:  BEQ             loc_552022
551F88:  VMOV.F32        S2, #5.0
551F8C:  VCMPE.F32       S0, S2
551F90:  VMRS            APSR_nzcv, FPSCR
551F94:  BLE             loc_552022
551F96:  LDR.W           R0, [R4,#0x464]
551F9A:  CMP             R0, #0
551F9C:  BEQ             loc_552022
551F9E:  VLDR            S0, [R4,#0x48]
551FA2:  ADD.W           R0, R4, #0x4C ; 'L'
551FA6:  VLDR            S4, [R2,#0x48]
551FAA:  MOV             R6, R2
551FAC:  VLDR            D16, [R0]
551FB0:  ADD.W           R8, SP, #0xA0+var_80
551FB4:  VSUB.F32        S0, S4, S0
551FB8:  VLDR            D17, [R2,#0x4C]
551FBC:  VLDR            S2, [R4,#0xE4]
551FC0:  VSUB.F32        D16, D17, D16
551FC4:  VLDR            D17, [R4,#0xE8]
551FC8:  MOV             R0, R8; int
551FCA:  MOVS            R3, #0x31 ; '1'
551FCC:  VMUL.F32        S0, S0, S2
551FD0:  VMUL.F32        D1, D16, D17
551FD4:  VADD.F32        S0, S0, S2
551FD8:  VADD.F32        S0, S0, S3
551FDC:  VCMPE.F32       S0, #0.0
551FE0:  VMRS            APSR_nzcv, FPSCR
551FE4:  ITE LT
551FE6:  MOVLT           R6, R4
551FE8:  MOVGE           R2, R4; CEntity *
551FEA:  MOV             R1, R6; this
551FEC:  BLX             j__ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType; CEventVehicleDamage::CEventVehicleDamage(CVehicle *,CEntity *,eWeaponType)
551FF0:  LDR.W           R0, =(_ZTV28CEventVehicleDamageCollision_ptr - 0x551FFC)
551FF4:  MOV             R1, R8; CEvent *
551FF6:  MOVS            R2, #0; bool
551FF8:  ADD             R0, PC; _ZTV28CEventVehicleDamageCollision_ptr
551FFA:  LDR             R0, [R0]; `vtable for'CEventVehicleDamageCollision ...
551FFC:  ADDS            R0, #8
551FFE:  STR             R0, [SP,#0xA0+var_80]
552000:  LDR.W           R0, [R6,#0x464]
552004:  LDR.W           R0, [R0,#0x440]
552008:  ADDS            R0, #0x68 ; 'h'; this
55200A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
55200E:  LDR.W           R1, [R6,#0x464]; CPed *
552012:  MOV             R0, R4; this
552014:  BLX             j__ZN8CVehicle20ReactToVehicleDamageEP4CPed; CVehicle::ReactToVehicleDamage(CPed *)
552018:  MOV             R0, R8; this
55201A:  BLX             j__ZN19CEventVehicleDamageD2Ev; CEventVehicleDamage::~CEventVehicleDamage()
55201E:  VLDR            S0, [SP,#0xA0+var_64]
552022:  VMOV.F32        S2, #5.0
552026:  VCMPE.F32       S0, S2
55202A:  VMRS            APSR_nzcv, FPSCR
55202E:  BLE             loc_552114
552030:  LDR.W           R6, [R4,#0xE0]
552034:  CMP             R6, #0
552036:  ITT NE
552038:  LDRNE.W         R0, [R4,#0x464]
55203C:  CMPNE           R0, #0
55203E:  BEQ             loc_5520CA
552040:  LDRB.W          R0, [R6,#0x3A]
552044:  AND.W           R0, R0, #7
552048:  CMP             R0, #2
55204A:  BNE             loc_5520CA
55204C:  MOV.W           R0, #0xFFFFFFFF; int
552050:  MOVS            R1, #0; bool
552052:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
552056:  CMP             R0, R4
552058:  ITT EQ
55205A:  LDRBEQ.W        R0, [R6,#0x4A8]
55205E:  CMPEQ           R0, #2
552060:  BEQ             loc_5520CA
552062:  LDR.W           R0, [R6,#0x464]
552066:  CBZ             R0, loc_5520CA
552068:  ADD.W           R0, R4, #0x13C; this
55206C:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
552070:  CMP             R0, #1
552072:  BEQ             loc_5520AE
552074:  MOVW            R3, #0xF5C3
552078:  CMP             R0, #0
55207A:  MOV.W           R1, #0
55207E:  LDR.W           R0, [R4,#0x464]
552082:  STRD.W          R1, R1, [SP,#0xA0+var_A0]
552086:  MOVT            R3, #0x3F28
55208A:  STR             R1, [SP,#0xA0+var_98]
55208C:  ITE NE
55208E:  MOVNE           R1, #0x44 ; 'D'
552090:  MOVEQ           R1, #0x43 ; 'C'
552092:  B               loc_5520C4
552094:  LDR.W           R0, [R4,#0xE0]
552098:  CMP             R0, #0
55209A:  BEQ.W           loc_551F4A
55209E:  LDRB.W          R0, [R0,#0x3A]
5520A2:  CMP             R0, #7
5520A4:  BHI.W           loc_551F4A
5520A8:  VMOV.F32        S2, #7.0
5520AC:  B               loc_551F42
5520AE:  LDR.W           R0, [R4,#0x464]; this
5520B2:  MOVW            R3, #0xF5C3
5520B6:  MOVS            R1, #0
5520B8:  MOVT            R3, #0x3F28; float
5520BC:  STRD.W          R1, R1, [SP,#0xA0+var_A0]; unsigned __int8
5520C0:  STR             R1, [SP,#0xA0+var_98]; unsigned __int8
5520C2:  MOVS            R1, #0x42 ; 'B'; unsigned __int16
5520C4:  MOVS            R2, #0; unsigned int
5520C6:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5520CA:  MOV.W           R0, #0xFFFFFFFF; int
5520CE:  MOVS            R1, #0; bool
5520D0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5520D4:  CBZ             R6, loc_552106
5520D6:  CMP             R4, R0
5520D8:  BNE             loc_552106
5520DA:  MOV             R0, R4; this
5520DC:  BLX             j__ZN8CVehicle19PickRandomPassengerEv; CVehicle::PickRandomPassenger(void)
5520E0:  CBZ             R0, loc_552106
5520E2:  LDRB.W          R1, [R6,#0x3A]
5520E6:  MOVS            R2, #0; unsigned int
5520E8:  MOV.W           R3, #0x3F800000; float
5520EC:  AND.W           R1, R1, #7
5520F0:  CMP             R1, #3
5520F2:  MOV.W           R1, #0
5520F6:  STRD.W          R1, R1, [SP,#0xA0+var_A0]; unsigned __int8
5520FA:  STR             R1, [SP,#0xA0+var_98]; unsigned __int8
5520FC:  ITE NE
5520FE:  MOVNE           R1, #0x1D
552100:  MOVEQ           R1, #0x24 ; '$'; unsigned __int16
552102:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
552106:  LDR             R0, =(g_InterestingEvents_ptr - 0x552110)
552108:  MOVS            R1, #0x11
55210A:  MOV             R2, R4
55210C:  ADD             R0, PC; g_InterestingEvents_ptr
55210E:  LDR             R0, [R0]; g_InterestingEvents
552110:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
552114:  ADDW            R6, R4, #0x4CC
552118:  MOV.W           R0, #0xFFFFFFFF; int
55211C:  MOVS            R1, #0; bool
55211E:  VLDR            S16, [R6]
552122:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
552126:  LDR             R1, [SP,#0xA0+var_8C]
552128:  CMP             R4, R0
55212A:  MOV             R8, R5
55212C:  LDR             R1, [R1]
55212E:  VCVT.S32.F32    S16, S16
552132:  AND.W           R1, R1, #0x8000
552136:  BEQ             loc_552140
552138:  CBZ             R1, loc_55215A
55213A:  VMOV.F32        S0, #12.0
55213E:  B               loc_552150
552140:  VMOV.F32        S2, #6.0
552144:  CMP             R1, #0
552146:  VMOV.F32        S0, #2.0
55214A:  IT NE
55214C:  VMOVNE.F32      S0, S2
552150:  VLDR            S2, [SP,#0xA0+var_64]
552154:  VDIV.F32        S0, S2, S0
552158:  B               loc_55217C
55215A:  LDR.W           R5, [R4,#0xE0]
55215E:  CBZ             R5, loc_552170
552160:  MOV.W           R0, #0xFFFFFFFF; int
552164:  MOVS            R1, #0; bool
552166:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55216A:  CMP             R5, R0
55216C:  BEQ.W           loc_55230E
552170:  VMOV.F32        S0, #0.25
552174:  VLDR            S2, [SP,#0xA0+var_64]
552178:  VMUL.F32        S0, S2, S0
55217C:  VLDR            S2, [R6]
552180:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x55218A)
552182:  VSUB.F32        S0, S2, S0
552186:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
552188:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
55218A:  VSTR            S0, [R6]
55218E:  LDRB.W          R0, [R0,#(byte_796830 - 0x7967F4)]
552192:  CMP             R0, #0
552194:  ITT NE
552196:  LDRNE.W         R5, [R4,#0xE0]
55219A:  CMPNE           R5, #0
55219C:  BEQ             loc_5521B0
55219E:  MOV.W           R0, #0xFFFFFFFF; int
5521A2:  MOVS            R1, #0; bool
5521A4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5521A8:  CMP             R5, R0
5521AA:  BEQ             loc_5521FE
5521AC:  VLDR            S0, [R6]
5521B0:  VMOV            R0, S16
5521B4:  MOV             R5, R8
5521B6:  CMP             R0, #1
5521B8:  BLT             loc_552210
5521BA:  VCMPE.F32       S0, #0.0
5521BE:  VMRS            APSR_nzcv, FPSCR
5521C2:  BGT             loc_552210
5521C4:  MOV.W           R0, #0x3F800000
5521C8:  STR             R0, [R6]
5521CA:  LDR.W           R0, [R4,#0xE0]
5521CE:  CBZ             R0, loc_552210
5521D0:  LDRH            R0, [R0,#0x26]
5521D2:  CMP.W           R0, #0x1B0
5521D6:  BNE             loc_552210
5521D8:  MOV.W           R0, #0xFFFFFFFF; int
5521DC:  MOVS            R1, #0; bool
5521DE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5521E2:  CMP             R0, R4
5521E4:  BEQ             loc_552210
5521E6:  LDR             R0, [R4]
5521E8:  MOVS            R2, #0
5521EA:  LDR.W           R1, [R4,#0xE0]
5521EE:  LDR.W           R3, [R0,#0xA8]
5521F2:  MOV             R0, R4
5521F4:  BLX             R3
5521F6:  CMP.W           R9, #1
5521FA:  BNE             loc_552216
5521FC:  B               loc_552222
5521FE:  LDR             R0, [R4]
552200:  MOVS            R2, #0
552202:  LDR.W           R1, [R4,#0xE0]
552206:  LDR.W           R3, [R0,#0xA8]
55220A:  MOV             R0, R4
55220C:  BLX             R3
55220E:  MOV             R5, R8
552210:  CMP.W           R9, #1
552214:  BEQ             loc_552222
552216:  MOV             R0, R10
552218:  MOVS            R1, #0
55221A:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
55221E:  CMP             R0, #1
552220:  BEQ             loc_552256
552222:  LDR             R0, [SP,#0xA0+var_84]
552224:  CMP             R0, #1
552226:  BEQ             loc_552234
552228:  MOV             R0, R10
55222A:  MOVS            R1, #1
55222C:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
552230:  CMP             R0, #1
552232:  BEQ             loc_552256
552234:  LDR             R0, [SP,#0xA0+var_88]
552236:  CMP             R0, #1
552238:  BEQ             loc_552246
55223A:  MOV             R0, R10
55223C:  MOVS            R1, #2
55223E:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
552242:  CMP             R0, #1
552244:  BEQ             loc_552256
552246:  CMP             R5, #1
552248:  BEQ             loc_552262
55224A:  MOV             R0, R10
55224C:  MOVS            R1, #3
55224E:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
552252:  CMP             R0, #1
552254:  BNE             loc_552262
552256:  ADD.W           R0, R4, #0x13C; this
55225A:  MOVS            R1, #0x5C ; '\'; int
55225C:  MOVS            R2, #0; float
55225E:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
552262:  ADDW            R0, R4, #0x4CC
552266:  VLDR            S2, =250.0
55226A:  VLDR            S0, [R0]
55226E:  VCMPE.F32       S0, S2
552272:  VMRS            APSR_nzcv, FPSCR
552276:  BGE             loc_5522D0
552278:  ADDW            R5, R4, #0x5B4
55227C:  MOV             R0, R5; this
55227E:  BLX             j__ZNK14CDamageManager15GetEngineStatusEv; CDamageManager::GetEngineStatus(void)
552282:  CMP             R0, #0xE0
552284:  BHI.W           loc_5514B0
552288:  MOV             R0, R5; this
55228A:  MOVS            R1, #0xE1; unsigned int
55228C:  BLX             j__ZN14CDamageManager15SetEngineStatusEj; CDamageManager::SetEngineStatus(uint)
552290:  MOVS            R0, #0
552292:  STR.W           R0, [R4,#0x8F8]
552296:  LDR.W           R0, [R4,#0xE0]; this
55229A:  STR.W           R0, [R4,#0x93C]
55229E:  CMP             R0, #0
5522A0:  ITT NE
5522A2:  ADDWNE          R1, R4, #0x93C; CEntity **
5522A6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5522AA:  MOV             R0, R4; this
5522AC:  BLX             j__ZN8CVehicle19PickRandomPassengerEv; CVehicle::PickRandomPassenger(void)
5522B0:  CMP             R0, #0
5522B2:  BEQ.W           loc_5514B0
5522B6:  MOVS            R1, #0
5522B8:  MOVW            R2, #0x5DC; unsigned int
5522BC:  STRD.W          R1, R1, [SP,#0xA0+var_A0]; unsigned __int8
5522C0:  MOV.W           R3, #0x3F800000; float
5522C4:  STR             R1, [SP,#0xA0+var_98]; unsigned __int8
5522C6:  MOVS            R1, #0x21 ; '!'; unsigned __int16
5522C8:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5522CC:  B.W             loc_5514B0
5522D0:  LDRH            R0, [R4,#0x26]
5522D2:  CMP.W           R0, #0x1A8
5522D6:  BNE.W           loc_5514B0
5522DA:  VLDR            S2, =400.0
5522DE:  VCMPE.F32       S0, S2
5522E2:  VMRS            APSR_nzcv, FPSCR
5522E6:  BGE             loc_5522F0
5522E8:  ADDW            R0, R4, #0x5B4
5522EC:  MOVS            R1, #0xC8
5522EE:  B               loc_552306
5522F0:  VLDR            S2, =600.0
5522F4:  VCMPE.F32       S0, S2
5522F8:  VMRS            APSR_nzcv, FPSCR
5522FC:  BGE.W           loc_5514B0
552300:  ADDW            R0, R4, #0x5B4; this
552304:  MOVS            R1, #0x64 ; 'd'; unsigned int
552306:  BLX             j__ZN14CDamageManager15SetEngineStatusEj; CDamageManager::SetEngineStatus(uint)
55230A:  B.W             loc_5514B0
55230E:  VMOV.F32        S0, #1.5
552312:  B               loc_552150
552314:  VMOV.F32        S6, #0.5
552318:  MOV.W           R8, #0
55231C:  VCMPE.F32       S4, S6
552320:  VMRS            APSR_nzcv, FPSCR
552324:  BLE.W           loc_551D7C
552328:  VCMPE.F32       S0, S2
55232C:  VMRS            APSR_nzcv, FPSCR
552330:  BGE.W           loc_551D7C
552334:  LDR             R0, =(FRONT_DAMAGE_MAG_MIN_WING_ptr - 0x55233E)
552336:  VLDR            S0, [R4,#0x90]
55233A:  ADD             R0, PC; FRONT_DAMAGE_MAG_MIN_WING_ptr
55233C:  LDR             R0, [R0]; FRONT_DAMAGE_MAG_MIN_WING
55233E:  VLDR            S2, [R0]
552342:  VMUL.F32        S0, S2, S0
552346:  VLDR            S2, [SP,#0xA0+var_64]
55234A:  VCMPE.F32       S2, S0
55234E:  VMRS            APSR_nzcv, FPSCR
552352:  BGT.W           loc_551D78
552356:  MOV.W           R8, #0
55235A:  B               loc_551D7C
