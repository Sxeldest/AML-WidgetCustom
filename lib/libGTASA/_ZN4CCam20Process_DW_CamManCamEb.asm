; =========================================================
; Game Engine Function: _ZN4CCam20Process_DW_CamManCamEb
; Address            : 0x3CE560 - 0x3CEC4A
; =========================================================

3CE560:  PUSH            {R4-R7,LR}
3CE562:  ADD             R7, SP, #0xC
3CE564:  PUSH.W          {R8-R11}
3CE568:  SUB             SP, SP, #4
3CE56A:  VPUSH           {D8-D15}
3CE56E:  SUB             SP, SP, #0x128; CVector *
3CE570:  MOV             R11, R0
3CE572:  LDR.W           R0, =(TheCamera_ptr - 0x3CE57A)
3CE576:  ADD             R0, PC; TheCamera_ptr
3CE578:  LDR             R1, [R0]; TheCamera
3CE57A:  MOVS            R0, #0
3CE57C:  STRB.W          R0, [R1,#(byte_951FD7 - 0x951FA8)]
3CE580:  LDR.W           R1, [R11,#0x1F4]
3CE584:  CMP             R1, #0
3CE586:  BEQ.W           loc_3CEC3C
3CE58A:  LDRB.W          R0, [R1,#0x3A]
3CE58E:  AND.W           R0, R0, #7
3CE592:  CMP             R0, #2
3CE594:  BNE.W           loc_3CE9A6
3CE598:  ADD             R0, SP, #0x188+var_E0
3CE59A:  ADD.W           R12, SP, #0x188+var_CC
3CE59E:  ADD             R2, SP, #0x188+var_C8
3CE5A0:  STR             R0, [SP,#0x188+var_168]; CColSphere *
3CE5A2:  ADD             R1, SP, #0x188+var_C4
3CE5A4:  ADD             R3, SP, #0x188+var_B8
3CE5A6:  ADD             R6, SP, #0x188+var_AC
3CE5A8:  ADD             R5, SP, #0x188+var_A0
3CE5AA:  ADD             R4, SP, #0x188+var_94
3CE5AC:  ADD             R0, SP, #0x188+var_88
3CE5AE:  STMEA.W         SP, {R0,R4-R6}
3CE5B2:  MOV             R0, R11; this
3CE5B4:  STRD.W          R3, R2, [SP,#0x188+var_178]; CVector *
3CE5B8:  ADD             R2, SP, #0x188+var_68; CVehicle **
3CE5BA:  STRD.W          R1, R12, [SP,#0x188+var_170]; CVector *
3CE5BE:  ADD             R1, SP, #0x188+var_64; CEntity **
3CE5C0:  ADD             R3, SP, #0x188+var_78; CVector *
3CE5C2:  BLX             j__ZN4CCam28GetCoreDataForDWCineyCamModeEPP7CEntityPP8CVehicleP7CVectorS7_S7_S7_S7_S7_PfS7_S8_P10CColSphere; CCam::GetCoreDataForDWCineyCamMode(CEntity **,CVehicle **,CVector *,CVector *,CVector *,CVector *,CVector *,CVector *,float *,CVector *,float *,CColSphere *)
3CE5C6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CE5D2)
3CE5CA:  LDR.W           R1, =(byte_9530BC - 0x3CE5D4)
3CE5CE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CE5D0:  ADD             R1, PC; byte_9530BC
3CE5D2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CE5D4:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds
3CE5D8:  LDRB            R0, [R1]
3CE5DA:  DMB.W           ISH
3CE5DE:  TST.W           R0, #1
3CE5E2:  BNE             loc_3CE5FA
3CE5E4:  LDR.W           R0, =(byte_9530BC - 0x3CE5EC)
3CE5E8:  ADD             R0, PC; byte_9530BC ; __guard *
3CE5EA:  BLX             j___cxa_guard_acquire
3CE5EE:  CBZ             R0, loc_3CE5FA
3CE5F0:  LDR.W           R0, =(byte_9530BC - 0x3CE5F8)
3CE5F4:  ADD             R0, PC; byte_9530BC ; __guard *
3CE5F6:  BLX             j___cxa_guard_release
3CE5FA:  LDR.W           R0, =(byte_9530C4 - 0x3CE602)
3CE5FE:  ADD             R0, PC; byte_9530C4
3CE600:  LDRB            R0, [R0]
3CE602:  DMB.W           ISH
3CE606:  TST.W           R0, #1
3CE60A:  BNE             loc_3CE62C
3CE60C:  LDR.W           R0, =(byte_9530C4 - 0x3CE614)
3CE610:  ADD             R0, PC; byte_9530C4 ; __guard *
3CE612:  BLX             j___cxa_guard_acquire
3CE616:  CBZ             R0, loc_3CE62C
3CE618:  LDR.W           R1, =(dword_9530C0 - 0x3CE626)
3CE61C:  MOVS            R2, #0x64 ; 'd'
3CE61E:  LDR.W           R0, =(byte_9530C4 - 0x3CE628)
3CE622:  ADD             R1, PC; dword_9530C0
3CE624:  ADD             R0, PC; byte_9530C4 ; __guard *
3CE626:  STR             R2, [R1]
3CE628:  BLX             j___cxa_guard_release
3CE62C:  LDR.W           R0, =(gDWLastModeForCineyCam_ptr - 0x3CE634)
3CE630:  ADD             R0, PC; gDWLastModeForCineyCam_ptr
3CE632:  LDR             R0, [R0]; gDWLastModeForCineyCam
3CE634:  LDR             R0, [R0]
3CE636:  CMP             R0, #0x39 ; '9'
3CE638:  BNE             loc_3CE656
3CE63A:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3CE646)
3CE63E:  LDR.W           R1, =(gLastFrameProcessedDWCineyCam_ptr - 0x3CE648)
3CE642:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3CE644:  ADD             R1, PC; gLastFrameProcessedDWCineyCam_ptr
3CE646:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3CE648:  LDR             R1, [R1]; gLastFrameProcessedDWCineyCam
3CE64A:  LDR             R0, [R0]; CTimer::m_FrameCounter
3CE64C:  LDR             R1, [R1]
3CE64E:  SUBS            R0, #1
3CE650:  CMP             R1, R0
3CE652:  BCS.W           loc_3CE964
3CE656:  LDR.W           R0, =(gHandShaker_ptr - 0x3CE666)
3CE65A:  LDR.W           R1, =(gDWCineyCamEndTime_ptr - 0x3CE66C)
3CE65E:  LDR.W           R2, =(gDWCineyCamStartTime_ptr - 0x3CE672)
3CE662:  ADD             R0, PC; gHandShaker_ptr
3CE664:  LDR.W           R3, =(gDWLastModeForCineyCam_ptr - 0x3CE678)
3CE668:  ADD             R1, PC; gDWCineyCamEndTime_ptr
3CE66A:  LDR.W           R5, =(dword_9530C0 - 0x3CE67E)
3CE66E:  ADD             R2, PC; gDWCineyCamStartTime_ptr
3CE670:  LDR.W           R4, =(gbExitCam_ptr - 0x3CE680)
3CE674:  ADD             R3, PC; gDWLastModeForCineyCam_ptr
3CE676:  LDR.W           R12, =(gDWCamMaxDurationMs_ptr - 0x3CE684)
3CE67A:  ADD             R5, PC; dword_9530C0
3CE67C:  ADD             R4, PC; gbExitCam_ptr
3CE67E:  LDR             R6, [R0]; gHandShaker
3CE680:  ADD             R12, PC; gDWCamMaxDurationMs_ptr
3CE682:  LDR             R0, [R1]; gDWCineyCamEndTime
3CE684:  LDR             R1, [R2]; gDWCineyCamStartTime
3CE686:  LDR             R2, [R3]; gDWLastModeForCineyCam
3CE688:  MOVS            R3, #0x64 ; 'd'
3CE68A:  STR             R3, [R5]
3CE68C:  MOVS            R5, #0x39 ; '9'
3CE68E:  LDR             R3, [R4]; gbExitCam
3CE690:  LDR.W           R4, [R12]; gDWCamMaxDurationMs
3CE694:  STR             R5, [R2]
3CE696:  MOVS            R5, #0
3CE698:  STRB            R5, [R3,#(byte_952FF5 - 0x952FF4)]
3CE69A:  LDR             R2, [R4,#(dword_6AA64C - 0x6AA648)]
3CE69C:  STR.W           R10, [R1]
3CE6A0:  STRD.W          R5, R5, [R6]
3CE6A4:  ADD.W           R1, R2, R10
3CE6A8:  STR             R5, [R6,#(dword_951C24 - 0x951C1C)]
3CE6AA:  VLDR            S16, [R6,#0x18]
3CE6AE:  STR             R1, [R0]
3CE6B0:  BLX             rand
3CE6B4:  VMOV            S0, R0
3CE6B8:  VLDR            S18, [R6,#0x1C]
3CE6BC:  VCVT.F32.S32    S20, S0
3CE6C0:  BLX             rand
3CE6C4:  VMOV            S0, R0
3CE6C8:  VLDR            S22, [R6,#0x20]
3CE6CC:  VCVT.F32.S32    S24, S0
3CE6D0:  BLX             rand
3CE6D4:  VMOV            S0, R0
3CE6D8:  VLDR            S2, =4.6566e-10
3CE6DC:  ADD.W           R9, SP, #0x188+var_120
3CE6E0:  MOVS            R1, #1
3CE6E2:  VCVT.F32.S32    S0, S0
3CE6E6:  VLDR            S8, [SP,#0x188+var_78+4]
3CE6EA:  VMUL.F32        S4, S20, S2
3CE6EE:  VLDR            S10, [SP,#0x188+var_70]
3CE6F2:  VMUL.F32        S6, S24, S2
3CE6F6:  MOVS            R0, #(byte_9+6)
3CE6F8:  ADD.W           R3, SP, #0x188+var_122; bool
3CE6FC:  MOVS            R2, #1; float
3CE6FE:  MOV.W           R8, #1
3CE702:  VMUL.F32        S0, S0, S2
3CE706:  VMUL.F32        S2, S16, S4
3CE70A:  VMUL.F32        S4, S18, S6
3CE70E:  VLDR            S6, =0.0
3CE712:  VMUL.F32        S0, S22, S0
3CE716:  VADD.F32        S2, S2, S6
3CE71A:  VADD.F32        S4, S4, S6
3CE71E:  VADD.F32        S0, S0, S6
3CE722:  VLDR            S6, =50.0
3CE726:  VSTR            S2, [R6,#0x24]
3CE72A:  VSTR            S4, [R6,#0x28]
3CE72E:  VLDR            S2, [SP,#0x188+var_A8]
3CE732:  VLDR            S4, [SP,#0x188+var_A4]
3CE736:  VMUL.F32        S2, S2, S6
3CE73A:  VMUL.F32        S4, S4, S6
3CE73E:  VSTR            S0, [R6,#0x2C]
3CE742:  VLDR            S0, [SP,#0x188+var_AC]
3CE746:  VMUL.F32        S0, S0, S6
3CE74A:  VLDR            S6, [SP,#0x188+var_78]
3CE74E:  VADD.F32        S2, S2, S8
3CE752:  VADD.F32        S4, S4, S10
3CE756:  VADD.F32        S0, S0, S6
3CE75A:  VSTR            S0, [SP,#0x188+var_14C]
3CE75E:  VSTR            S2, [SP,#0x188+var_148]
3CE762:  VSTR            S4, [SP,#0x188+var_144]
3CE766:  STRD.W          R0, R9, [SP,#0x188+var_188]; __int16 *
3CE76A:  ADD             R0, SP, #0x188+var_14C; this
3CE76C:  STRD.W          R5, R5, [SP,#0x188+var_180]; CEntity **
3CE770:  STRD.W          R5, R1, [SP,#0x188+var_178]; bool
3CE774:  STR             R1, [SP,#0x188+var_170]; bool
3CE776:  MOVS            R1, #0x42480000; CVector *
3CE77C:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
3CE780:  LDRSH.W         R0, [SP,#0x188+var_122]
3CE784:  CMP             R0, #1
3CE786:  BLT.W           loc_3CE9AA
3CE78A:  VMOV.F32        S18, #5.0
3CE78E:  VLDR            S22, =10000.0
3CE792:  VMOV.F32        S20, #0.5
3CE796:  VLDR            S16, =0.9
3CE79A:  STRD.W          R11, R10, [SP,#0x188+var_164]
3CE79E:  MOVS            R0, #0
3CE7A0:  MOV.W           R10, #0
3CE7A4:  STR             R0, [SP,#0x188+var_15C]
3CE7A6:  SXTH.W          R11, R10
3CE7AA:  LDR.W           R6, [R9,R11,LSL#2]
3CE7AE:  LDR             R0, [R6,#0x1C]
3CE7B0:  TST.W           R0, #0x40004
3CE7B4:  BEQ.W           loc_3CE94A
3CE7B8:  LDR             R0, [R6,#0x14]
3CE7BA:  CBNZ            R0, loc_3CE7CC
3CE7BC:  MOV             R0, R6; this
3CE7BE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CE7C2:  LDR             R1, [R6,#0x14]; CMatrix *
3CE7C4:  ADDS            R0, R6, #4; this
3CE7C6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CE7CA:  LDR             R0, [R6,#0x14]
3CE7CC:  VLDR            S0, [R0,#0x28]
3CE7D0:  VCMPE.F32       S0, S16
3CE7D4:  VMRS            APSR_nzcv, FPSCR
3CE7D8:  BLE.W           loc_3CE94A
3CE7DC:  LDR.W           R6, [R9,R11,LSL#2]
3CE7E0:  LDRSH.W         R0, [R6,#0x26]; int
3CE7E4:  BLX             j__Z11bIsLampPosti; bIsLampPost(int)
3CE7E8:  CMP             R0, #1
3CE7EA:  BNE.W           loc_3CE94A
3CE7EE:  LDR             R0, [R6,#0x14]
3CE7F0:  VLDR            D16, [SP,#0x188+var_78]
3CE7F4:  ADD.W           R1, R0, #0x30 ; '0'
3CE7F8:  CMP             R0, #0
3CE7FA:  IT EQ
3CE7FC:  ADDEQ           R1, R6, #4
3CE7FE:  VLDR            D17, [R1]
3CE802:  VSUB.F32        D16, D17, D16
3CE806:  VMUL.F32        D0, D16, D16
3CE80A:  VADD.F32        S0, S0, S1
3CE80E:  VSQRT.F32       S24, S0
3CE812:  VCMPE.F32       S24, S22
3CE816:  VMRS            APSR_nzcv, FPSCR
3CE81A:  BGE.W           loc_3CE94A
3CE81E:  VCMPE.F32       S24, S18
3CE822:  VMRS            APSR_nzcv, FPSCR
3CE826:  BLE.W           loc_3CE94A
3CE82A:  MOV             R0, R6; this
3CE82C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CE830:  VLDR            D16, [R0,#0xC]
3CE834:  LDR.W           R6, [R9,R11,LSL#2]
3CE838:  LDR             R0, [R0,#0x14]
3CE83A:  STR             R0, [SP,#0x188+var_138]
3CE83C:  VSTR            D16, [SP,#0x188+var_140]
3CE840:  LDR             R1, [R6,#0x14]
3CE842:  CBNZ            R1, loc_3CE854
3CE844:  MOV             R0, R6; this
3CE846:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CE84A:  LDR             R1, [R6,#0x14]; CMatrix *
3CE84C:  ADDS            R0, R6, #4; this
3CE84E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CE852:  LDR             R1, [R6,#0x14]
3CE854:  ADD             R6, SP, #0x188+var_140
3CE856:  ADD             R0, SP, #0x188+var_158
3CE858:  MOV             R2, R6
3CE85A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3CE85E:  LDR             R0, [SP,#0x188+var_150]
3CE860:  STR             R0, [SP,#0x188+var_138]
3CE862:  LDR.W           R0, [R9,R11,LSL#2]; this
3CE866:  VLDR            D16, [SP,#0x188+var_158]
3CE86A:  VSTR            D16, [SP,#0x188+var_140]
3CE86E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CE872:  VLDR            S0, [R0,#0x14]
3CE876:  VLDR            S2, [SP,#0x188+var_138]
3CE87A:  LDR.W           R0, [R9,R11,LSL#2]; this
3CE87E:  VSUB.F32        S0, S2, S0
3CE882:  VSTR            S0, [SP,#0x188+var_138]
3CE886:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CE88A:  VLDR            S0, [R0,#8]
3CE88E:  ADD             R4, SP, #0x188+var_130
3CE890:  VLDR            S6, [SP,#0x188+var_138]
3CE894:  VMUL.F32        S0, S0, S20
3CE898:  VLDR            S4, [SP,#0x188+var_140+4]
3CE89C:  VLDR            S8, [SP,#0x188+var_78+4]
3CE8A0:  MOV             R0, R4; this
3CE8A2:  VLDR            S2, [SP,#0x188+var_140]
3CE8A6:  VSUB.F32        S4, S4, S8
3CE8AA:  VLDR            S8, [SP,#0x188+var_70]
3CE8AE:  VADD.F32        S0, S6, S0
3CE8B2:  VLDR            S6, [SP,#0x188+var_78]
3CE8B6:  VSUB.F32        S2, S2, S6
3CE8BA:  VSTR            S4, [SP,#0x188+var_12C]
3CE8BE:  VSTR            S0, [SP,#0x188+var_138]
3CE8C2:  VSUB.F32        S0, S0, S8
3CE8C6:  VSTR            S2, [SP,#0x188+var_130]
3CE8CA:  VSTR            S0, [SP,#0x188+var_128]
3CE8CE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CE8D2:  VLDR            S0, [SP,#0x188+var_130]
3CE8D6:  MOVS            R0, #(stderr+1)
3CE8D8:  VLDR            S6, [SP,#0x188+var_78]
3CE8DC:  MOV             R1, R4; CVector *
3CE8DE:  VLDR            S2, [SP,#0x188+var_12C]
3CE8E2:  MOVS            R2, #(stderr+1); CVector *
3CE8E4:  VLDR            S8, [SP,#0x188+var_78+4]
3CE8E8:  VADD.F32        S0, S6, S0
3CE8EC:  VLDR            S4, [SP,#0x188+var_128]
3CE8F0:  MOVS            R3, #0; bool
3CE8F2:  VLDR            S10, [SP,#0x188+var_70]
3CE8F6:  VADD.F32        S2, S8, S2
3CE8FA:  MOV.W           R8, #1
3CE8FE:  VADD.F32        S4, S10, S4
3CE902:  VSTR            S0, [SP,#0x188+var_130]
3CE906:  VSTR            S2, [SP,#0x188+var_12C]
3CE90A:  VSTR            S4, [SP,#0x188+var_128]
3CE90E:  STRD.W          R5, R5, [SP,#0x188+var_188]; bool
3CE912:  STR             R5, [SP,#0x188+var_180]; bool
3CE914:  STR             R0, [SP,#0x188+var_17C]; CColLine *
3CE916:  STR             R0, [SP,#0x188+var_178]; bool
3CE918:  MOV             R0, R6; this
3CE91A:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3CE91E:  CMP             R0, #1
3CE920:  BNE             loc_3CE94A
3CE922:  VMOV.F32        S22, S24
3CE926:  LDR.W           R1, =(unk_9530B0 - 0x3CE936)
3CE92A:  VLDR            D16, [SP,#0x188+var_140]
3CE92E:  LDR.W           R0, [R9,R11,LSL#2]
3CE932:  ADD             R1, PC; unk_9530B0
3CE934:  STR             R0, [SP,#0x188+var_15C]
3CE936:  VSTR            D16, [SP,#0x188+var_88]
3CE93A:  LDR             R0, [SP,#0x188+var_138]
3CE93C:  VLDR            D16, [SP,#0x188+var_140]
3CE940:  STR             R0, [SP,#0x188+var_80]
3CE942:  LDR             R0, [SP,#0x188+var_138]
3CE944:  STR             R0, [R1,#(dword_9530B8 - 0x9530B0)]
3CE946:  VSTR            D16, [R1]
3CE94A:  ADD.W           R1, R10, #1
3CE94E:  LDRSH.W         R0, [SP,#0x188+var_122]
3CE952:  SXTH.W          R10, R1
3CE956:  CMP             R10, R0
3CE958:  BLT.W           loc_3CE7A6
3CE95C:  LDR             R0, [SP,#0x188+var_15C]
3CE95E:  LDRD.W          R11, R10, [SP,#0x188+var_164]
3CE962:  CBZ             R0, loc_3CE9AA
3CE964:  LDR             R0, =(gDWCineyCamStartTime_ptr - 0x3CE96C)
3CE966:  LDR             R1, =(gDWCineyCamEndTime_ptr - 0x3CE96E)
3CE968:  ADD             R0, PC; gDWCineyCamStartTime_ptr
3CE96A:  ADD             R1, PC; gDWCineyCamEndTime_ptr
3CE96C:  LDR             R0, [R0]; gDWCineyCamStartTime
3CE96E:  LDR             R1, [R1]; gDWCineyCamEndTime
3CE970:  LDR             R0, [R0]
3CE972:  LDR             R1, [R1]
3CE974:  SUBS            R1, R1, R0
3CE976:  SUB.W           R0, R10, R0
3CE97A:  VMOV            S0, R1
3CE97E:  VMOV            S2, R0
3CE982:  LDR             R0, =(gbExitCam_ptr - 0x3CE990)
3CE984:  VCVT.F32.S32    S0, S0
3CE988:  VCVT.F32.S32    S2, S2
3CE98C:  ADD             R0, PC; gbExitCam_ptr
3CE98E:  LDR             R0, [R0]; gbExitCam
3CE990:  LDRB            R0, [R0,#(byte_952FF5 - 0x952FF4)]
3CE992:  VDIV.F32        S20, S2, S0
3CE996:  CBZ             R0, loc_3CE9CC
3CE998:  VLDR            S0, [SP,#0x188+var_88]
3CE99C:  VLDR            S4, [SP,#0x188+var_88+4]
3CE9A0:  VLDR            S2, [SP,#0x188+var_80]
3CE9A4:  B               loc_3CEA42
3CE9A6:  MOVS            R0, #0
3CE9A8:  B               loc_3CEC3C
3CE9AA:  LDR             R0, =(gbExitCam_ptr - 0x3CE9B0)
3CE9AC:  ADD             R0, PC; gbExitCam_ptr
3CE9AE:  LDR             R0, [R0]; gbExitCam
3CE9B0:  STRB.W          R8, [R0,#(byte_952FF5 - 0x952FF4)]
3CE9B4:  MOVS            R0, #0
3CE9B6:  B               loc_3CEC3C
3CE9B8:  DCFS 4.6566e-10
3CE9BC:  DCFS 0.0
3CE9C0:  DCFS 50.0
3CE9C4:  DCFS 10000.0
3CE9C8:  DCFS 0.9
3CE9CC:  LDR             R0, =(unk_9530B0 - 0x3CE9D6)
3CE9CE:  VLDR            S6, [SP,#0x188+var_78]
3CE9D2:  ADD             R0, PC; unk_9530B0
3CE9D4:  VLDR            S8, [SP,#0x188+var_78+4]
3CE9D8:  VLDR            S10, [SP,#0x188+var_70]
3CE9DC:  VLDR            D16, [R0]
3CE9E0:  LDR             R0, [R0,#(dword_9530B8 - 0x9530B0)]
3CE9E2:  STR             R0, [SP,#0x188+var_80]
3CE9E4:  ADD             R0, SP, #0x188+var_120; this
3CE9E6:  VSTR            D16, [SP,#0x188+var_88]
3CE9EA:  VLDR            S0, [SP,#0x188+var_88]
3CE9EE:  VLDR            S2, [SP,#0x188+var_88+4]
3CE9F2:  VLDR            S4, [SP,#0x188+var_80]
3CE9F6:  VSUB.F32        S0, S6, S0
3CE9FA:  VSUB.F32        S2, S8, S2
3CE9FE:  VSUB.F32        S4, S10, S4
3CEA02:  VSTR            S0, [SP,#0x188+var_120]
3CEA06:  VSTR            S2, [SP,#0x188+var_11C]
3CEA0A:  VSTR            S4, [SP,#0x188+var_118]
3CEA0E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CEA12:  VLDR            S0, [SP,#0x188+var_88]
3CEA16:  VLDR            S4, [SP,#0x188+var_120]
3CEA1A:  VLDR            S2, [SP,#0x188+var_88+4]
3CEA1E:  VLDR            S6, [SP,#0x188+var_80]
3CEA22:  VADD.F32        S0, S4, S0
3CEA26:  VLDR            S8, [SP,#0x188+var_11C]
3CEA2A:  VLDR            S10, [SP,#0x188+var_118]
3CEA2E:  VADD.F32        S4, S8, S2
3CEA32:  VADD.F32        S2, S10, S6
3CEA36:  VSTR            S0, [SP,#0x188+var_88]
3CEA3A:  VSTR            S4, [SP,#0x188+var_88+4]
3CEA3E:  VSTR            S2, [SP,#0x188+var_80]
3CEA42:  VLDR            S6, [SP,#0x188+var_78]
3CEA46:  VMOV.F32        S16, #1.0
3CEA4A:  VLDR            S8, [SP,#0x188+var_78+4]
3CEA4E:  VSUB.F32        S0, S6, S0
3CEA52:  VLDR            S10, [SP,#0x188+var_70]
3CEA56:  VSUB.F32        S4, S8, S4
3CEA5A:  VLDR            S24, =180.0
3CEA5E:  VSUB.F32        S2, S10, S2
3CEA62:  VLDR            S26, =270.0
3CEA66:  VLDR            S28, =3.1416
3CEA6A:  VMUL.F32        S0, S0, S0
3CEA6E:  VMUL.F32        S4, S4, S4
3CEA72:  VMUL.F32        S2, S2, S2
3CEA76:  VADD.F32        S0, S0, S4
3CEA7A:  VLDR            S4, =1.5708
3CEA7E:  VADD.F32        S0, S0, S2
3CEA82:  VSQRT.F32       S22, S0
3CEA86:  VMOV.F32        S0, #30.0
3CEA8A:  VDIV.F32        S0, S22, S0
3CEA8E:  VMUL.F32        S2, S0, S24
3CEA92:  VCMPE.F32       S0, S16
3CEA96:  VMRS            APSR_nzcv, FPSCR
3CEA9A:  VSUB.F32        S2, S26, S2
3CEA9E:  VMUL.F32        S2, S2, S28
3CEAA2:  VDIV.F32        S2, S2, S24
3CEAA6:  IT GT
3CEAA8:  VMOVGT.F32      S2, S4
3CEAAC:  VMOV            R0, S2; x
3CEAB0:  BLX             sinf
3CEAB4:  VMOV            S0, R0
3CEAB8:  VLDR            S30, =70.0
3CEABC:  VMOV.F32        S2, #-0.5
3CEAC0:  VADD.F32        S0, S0, S16
3CEAC4:  VMUL.F32        S0, S0, S2
3CEAC8:  VLDR            S2, =55.0
3CEACC:  VMUL.F32        S0, S0, S2
3CEAD0:  VADD.F32        S18, S0, S30
3CEAD4:  VLDR            S0, =0.1
3CEAD8:  VCMPE.F32       S20, S0
3CEADC:  VMRS            APSR_nzcv, FPSCR
3CEAE0:  BGE             loc_3CEB40
3CEAE2:  VDIV.F32        S0, S20, S0
3CEAE6:  VCMPE.F32       S0, #0.0
3CEAEA:  VMRS            APSR_nzcv, FPSCR
3CEAEE:  BGE             loc_3CEAF6
3CEAF0:  VLDR            S2, =0.0
3CEAF4:  B               loc_3CEB0C
3CEAF6:  VCMPE.F32       S0, S16
3CEAFA:  VMRS            APSR_nzcv, FPSCR
3CEAFE:  VMOV.F32        S2, S24
3CEB02:  ITT LE
3CEB04:  VLDRLE          S2, =180.0
3CEB08:  VMULLE.F32      S2, S0, S2
3CEB0C:  VSUB.F32        S0, S26, S2
3CEB10:  VMUL.F32        S0, S0, S28
3CEB14:  VDIV.F32        S0, S0, S24
3CEB18:  VMOV            R0, S0; x
3CEB1C:  BLX             sinf
3CEB20:  VMOV            S0, R0
3CEB24:  VLDR            S4, =-70.0
3CEB28:  VMOV.F32        S2, #0.5
3CEB2C:  VADD.F32        S0, S0, S16
3CEB30:  VADD.F32        S4, S18, S4
3CEB34:  VMUL.F32        S0, S0, S2
3CEB38:  VMUL.F32        S0, S4, S0
3CEB3C:  VADD.F32        S18, S0, S30
3CEB40:  LDR             R0, =(gbExitCam_ptr - 0x3CEB46)
3CEB42:  ADD             R0, PC; gbExitCam_ptr
3CEB44:  LDR             R0, [R0]; gbExitCam
3CEB46:  LDRB            R0, [R0,#(byte_952FF5 - 0x952FF4)]
3CEB48:  CMP             R0, #0
3CEB4A:  BNE             loc_3CEBD2
3CEB4C:  LDR             R0, =(gMovieCamMinDist_ptr - 0x3CEB52)
3CEB4E:  ADD             R0, PC; gMovieCamMinDist_ptr
3CEB50:  LDR             R0, [R0]; gMovieCamMinDist
3CEB52:  VLDR            S0, [R0,#4]
3CEB56:  VCMPE.F32       S22, S0
3CEB5A:  VMRS            APSR_nzcv, FPSCR
3CEB5E:  BLT             loc_3CEBD2
3CEB60:  LDR             R0, =(gMovieCamMaxDist_ptr - 0x3CEB66)
3CEB62:  ADD             R0, PC; gMovieCamMaxDist_ptr
3CEB64:  LDR             R0, [R0]; gMovieCamMaxDist
3CEB66:  VLDR            S0, [R0,#4]
3CEB6A:  VCMPE.F32       S22, S0
3CEB6E:  VMRS            APSR_nzcv, FPSCR
3CEB72:  BGT             loc_3CEBD2
3CEB74:  LDR             R0, =(gDWCineyCamEndTime_ptr - 0x3CEB7C)
3CEB76:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CEB7E)
3CEB78:  ADD             R0, PC; gDWCineyCamEndTime_ptr
3CEB7A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CEB7C:  LDR             R0, [R0]; gDWCineyCamEndTime
3CEB7E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3CEB80:  LDR             R0, [R0]
3CEB82:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3CEB84:  CMP             R1, R0
3CEB86:  BHI             loc_3CEBD2
3CEB88:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3CEB94)
3CEB8A:  ADD             R1, SP, #0x188+var_88
3CEB8C:  ADD             R2, SP, #0x188+var_120
3CEB8E:  ADD             R3, SP, #0x188+var_130
3CEB90:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3CEB92:  MOVS            R5, #0
3CEB94:  LDR             R4, [R0]; CWorld::pIgnoreEntity ...
3CEB96:  LDR             R0, [SP,#0x188+var_64]
3CEB98:  STR             R0, [R4]; CWorld::pIgnoreEntity
3CEB9A:  MOVS            R0, #1
3CEB9C:  STRD.W          R0, R0, [SP,#0x188+var_188]; float
3CEBA0:  ADD             R0, SP, #0x188+var_78
3CEBA2:  STRD.W          R5, R5, [SP,#0x188+var_180]; float
3CEBA6:  STRD.W          R5, R5, [SP,#0x188+var_178]
3CEBAA:  STRD.W          R5, R5, [SP,#0x188+var_170]
3CEBAE:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3CEBB2:  LDR             R1, =(dword_9530C0 - 0x3CEBBC)
3CEBB4:  CMP             R0, #1
3CEBB6:  STR             R5, [R4]; CWorld::pIgnoreEntity
3CEBB8:  ADD             R1, PC; dword_9530C0
3CEBBA:  LDR             R1, [R1]
3CEBBC:  BNE             loc_3CEBE0
3CEBBE:  LDR             R0, =(dword_9530C0 - 0x3CEBCA)
3CEBC0:  CMP             R1, #0
3CEBC2:  SUB.W           R2, R1, #1
3CEBC6:  ADD             R0, PC; dword_9530C0
3CEBC8:  STR             R2, [R0]
3CEBCA:  BNE             loc_3CEBEE
3CEBCC:  LDR             R0, =(gbExitCam_ptr - 0x3CEBD2)
3CEBCE:  ADD             R0, PC; gbExitCam_ptr
3CEBD0:  B               loc_3CEBD6
3CEBD2:  LDR             R0, =(gbExitCam_ptr - 0x3CEBD8)
3CEBD4:  ADD             R0, PC; gbExitCam_ptr
3CEBD6:  LDR             R0, [R0]; gbExitCam
3CEBD8:  MOVS            R1, #1
3CEBDA:  STRB            R1, [R0,#(byte_952FF5 - 0x952FF4)]
3CEBDC:  MOVS            R0, #0
3CEBDE:  B               loc_3CEC3C
3CEBE0:  LDR             R0, =(dword_9530C0 - 0x3CEBEA)
3CEBE2:  ADDS            R2, R1, #1
3CEBE4:  CMP             R1, #0x64 ; 'd'
3CEBE6:  ADD             R0, PC; dword_9530C0
3CEBE8:  IT GT
3CEBEA:  MOVGT           R2, #0x64 ; 'd'
3CEBEC:  STR             R2, [R0]
3CEBEE:  VLDR            S0, [SP,#0x188+var_B8]
3CEBF2:  ADD             R1, SP, #0x188+var_88; CVector *
3CEBF4:  VLDR            S2, [SP,#0x188+var_B4]
3CEBF8:  ADD             R2, SP, #0x188+var_78; CVector *
3CEBFA:  VMUL.F32        S0, S0, S0
3CEBFE:  VLDR            S4, [SP,#0x188+var_B0]
3CEC02:  VMUL.F32        S2, S2, S2
3CEC06:  MOV             R0, R11; this
3CEC08:  VMUL.F32        S4, S4, S4
3CEC0C:  MOVS            R3, #0; float
3CEC0E:  VSTR            S18, [SP,#0x188+var_188]
3CEC12:  VADD.F32        S0, S0, S2
3CEC16:  VMOV.F32        S2, #8.0
3CEC1A:  VADD.F32        S0, S0, S4
3CEC1E:  VLDR            S4, =0.2
3CEC22:  VSQRT.F32       S0, S0
3CEC26:  VMUL.F32        S0, S0, S2
3CEC2A:  VMAX.F32        D16, D0, D2
3CEC2E:  VMIN.F32        D0, D16, D8
3CEC32:  VSTR            S0, [SP,#0x188+var_180]
3CEC36:  BLX             j__ZN4CCam21Finalise_DW_CineyCamsEP7CVectorS1_ffff; CCam::Finalise_DW_CineyCams(CVector *,CVector *,float,float,float,float)
3CEC3A:  MOVS            R0, #1
3CEC3C:  ADD             SP, SP, #0x128
3CEC3E:  VPOP            {D8-D15}
3CEC42:  ADD             SP, SP, #4
3CEC44:  POP.W           {R8-R11}
3CEC48:  POP             {R4-R7,PC}
