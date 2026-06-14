; =========================================================
; Game Engine Function: _ZN17CVehicleRecording30SaveOrRetrieveDataForThisFrameEv
; Address            : 0x323754 - 0x323AB8
; =========================================================

323754:  PUSH            {R4-R7,LR}
323756:  ADD             R7, SP, #0xC
323758:  PUSH.W          {R8-R11}
32375C:  SUB             SP, SP, #4
32375E:  VPUSH           {D8}
323762:  SUB             SP, SP, #0x78
323764:  LDR             R0, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323776)
323766:  VMOV.F32        S16, #0.25
32376A:  LDR.W           R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x323780)
32376E:  MOV.W           R9, #0
323772:  ADD             R0, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
323774:  LDR.W           R2, =(_ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr - 0x323786)
323778:  LDR.W           R3, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x32378A)
32377C:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32377E:  LDR.W           R11, [R0]; CVehicleRecording::bPlaybackGoingOn ...
323782:  ADD             R2, PC; _ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr
323784:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323794)
323786:  ADD             R3, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
323788:  LDR.W           R6, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x32379C)
32378C:  MOV.W           R10, #0
323790:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323792:  LDR.W           LR, [R1]; CVehicleRecording::bPlaybackGoingOn ...
323796:  LDR             R1, [R2]; CVehicleRecording::PlayBackStreamingIndex ...
323798:  ADD             R6, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
32379A:  LDR             R4, [R0]; CVehicleRecording::pVehicleForPlayback ...
32379C:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x3237A4)
32379E:  STR             R1, [SP,#0xA0+var_30]
3237A0:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
3237A2:  LDR             R1, [R3]; CVehicleRecording::PlaybackBufferSize ...
3237A4:  STR             R1, [SP,#0xA0+var_34]
3237A6:  LDR.W           R12, [R0]; CVehicleRecording::pVehicleForPlayback ...
3237AA:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x3237B2)
3237AC:  LDR             R1, [R6]; CVehicleRecording::pPlaybackBuffer ...
3237AE:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
3237B0:  STR             R1, [SP,#0xA0+var_38]
3237B2:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3237BC)
3237B4:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
3237B6:  STR             R0, [SP,#0xA0+var_3C]
3237B8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3237BA:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x3237C2)
3237BC:  STR             R4, [SP,#0xA0+var_40]
3237BE:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
3237C0:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
3237C2:  STR             R0, [SP,#0xA0+var_54]
3237C4:  LDR             R0, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x3237CA)
3237C6:  ADD             R0, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
3237C8:  LDR             R0, [R0]; CVehicleRecording::bUseCarAI ...
3237CA:  STR             R0, [SP,#0xA0+var_4C]
3237CC:  LDR             R0, =(_ZN17CVehicleRecording15bPlaybackPausedE_ptr - 0x3237D2)
3237CE:  ADD             R0, PC; _ZN17CVehicleRecording15bPlaybackPausedE_ptr
3237D0:  LDR             R0, [R0]; CVehicleRecording::bPlaybackPaused ...
3237D2:  STR             R0, [SP,#0xA0+var_5C]
3237D4:  LDR             R0, =(_ZN6CTimer33m_snPPPPreviousTimeInMillisecondsE_ptr - 0x3237DA)
3237D6:  ADD             R0, PC; _ZN6CTimer33m_snPPPPreviousTimeInMillisecondsE_ptr
3237D8:  LDR             R0, [R0]; CTimer::m_snPPPPreviousTimeInMilliseconds ...
3237DA:  STR             R0, [SP,#0xA0+var_84]
3237DC:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds ...
3237DE:  STR             R0, [SP,#0xA0+var_88]
3237E0:  LDR             R0, =(_ZN17CVehicleRecording13PlaybackSpeedE_ptr - 0x3237E8)
3237E2:  LDR             R1, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x3237EA)
3237E4:  ADD             R0, PC; _ZN17CVehicleRecording13PlaybackSpeedE_ptr
3237E6:  ADD             R1, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
3237E8:  LDR             R0, [R0]; CVehicleRecording::PlaybackSpeed ...
3237EA:  STR             R0, [SP,#0xA0+var_8C]
3237EC:  LDR             R0, =(_ZN17CVehicleRecording19PlaybackRunningTimeE_ptr - 0x3237F2)
3237EE:  ADD             R0, PC; _ZN17CVehicleRecording19PlaybackRunningTimeE_ptr
3237F0:  LDR             R0, [R0]; CVehicleRecording::PlaybackRunningTime ...
3237F2:  STR             R0, [SP,#0xA0+var_90]
3237F4:  LDR             R0, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x3237FA)
3237F6:  ADD             R0, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
3237F8:  LDR             R0, [R0]; CVehicleRecording::PlaybackIndex ...
3237FA:  STR             R0, [SP,#0xA0+var_60]
3237FC:  LDR             R0, [R1]; CVehicleRecording::pPlaybackBuffer ...
3237FE:  STR             R0, [SP,#0xA0+var_64]
323800:  LDR             R0, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x323806)
323802:  ADD             R0, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
323804:  LDR             R0, [R0]; CVehicleRecording::PlaybackBufferSize ...
323806:  STR             R0, [SP,#0xA0+var_70]
323808:  LDR             R0, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x32380E)
32380A:  ADD             R0, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
32380C:  LDR             R0, [R0]; CVehicleRecording::PlaybackIndex ...
32380E:  STR             R0, [SP,#0xA0+var_2C]
323810:  LDR             R0, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x323816)
323812:  ADD             R0, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
323814:  LDR.W           R8, [R0]; CVehicleRecording::PlaybackIndex ...
323818:  LDR             R0, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x32381E)
32381A:  ADD             R0, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
32381C:  LDR             R0, [R0]; CVehicleRecording::PlaybackBufferSize ...
32381E:  STR             R0, [SP,#0xA0+var_68]
323820:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323826)
323822:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323824:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
323826:  STR             R0, [SP,#0xA0+var_74]
323828:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32382E)
32382A:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32382C:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
32382E:  STR             R0, [SP,#0xA0+var_98]
323830:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x323836)
323832:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
323834:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
323836:  STR             R0, [SP,#0xA0+var_78]
323838:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32383E)
32383A:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32383C:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
32383E:  STR             R0, [SP,#0xA0+var_7C]
323840:  LDR             R0, =(_ZN17CVehicleRecording15bPlaybackLoopedE_ptr - 0x323846)
323842:  ADD             R0, PC; _ZN17CVehicleRecording15bPlaybackLoopedE_ptr
323844:  LDR             R0, [R0]; CVehicleRecording::bPlaybackLooped ...
323846:  STR             R0, [SP,#0xA0+var_80]
323848:  LDR             R0, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x32384E)
32384A:  ADD             R0, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
32384C:  LDR             R0, [R0]; CVehicleRecording::PlaybackIndex ...
32384E:  STR             R0, [SP,#0xA0+var_94]
323850:  LDR             R0, =(_ZN17CVehicleRecording19PlaybackRunningTimeE_ptr - 0x323856)
323852:  ADD             R0, PC; _ZN17CVehicleRecording19PlaybackRunningTimeE_ptr
323854:  LDR             R0, [R0]; CVehicleRecording::PlaybackRunningTime ...
323856:  STR             R0, [SP,#0xA0+var_6C]
323858:  LDR             R0, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32385E)
32385A:  ADD             R0, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
32385C:  LDR             R0, [R0]; CVehicleRecording::pVehicleForPlayback ...
32385E:  STR             R0, [SP,#0xA0+var_50]
323860:  STRD.W          LR, R12, [SP,#0xA0+var_48]
323864:  B               loc_323A08
323866:  LDR             R1, [SP,#0xA0+var_84]
323868:  LDR             R2, [SP,#0xA0+var_88]
32386A:  LDR             R1, [R1]
32386C:  LDR             R2, [R2]
32386E:  SUBS            R1, R2, R1
323870:  VMOV            S0, R1
323874:  VCVT.F32.U32    S0, S0
323878:  LDR             R1, [SP,#0xA0+var_8C]
32387A:  ADD.W           R1, R1, R10,LSL#2
32387E:  VLDR            S2, [R1]
323882:  LDR             R1, [SP,#0xA0+var_90]
323884:  VMUL.F32        S0, S2, S0
323888:  ADD.W           R1, R1, R10,LSL#2
32388C:  STR             R1, [SP,#0xA0+var_58]
32388E:  VLDR            S2, [R1]
323892:  VMUL.F32        S0, S0, S16
323896:  VADD.F32        S0, S2, S0
32389A:  VSTR            S0, [R1]
32389E:  LDR             R1, [SP,#0xA0+var_60]
3238A0:  LDR.W           R2, [R1,R10,LSL#2]
3238A4:  LDR             R1, [SP,#0xA0+var_64]
3238A6:  LDR.W           R1, [R1,R10,LSL#2]
3238AA:  ADDS            R6, R1, R2
3238AC:  MOV             R5, R6
3238AE:  LDR.W           R3, [R5,#0x20]!
3238B2:  VMOV            S2, R3
3238B6:  VCVT.F32.U32    S2, S2
3238BA:  VCMPE.F32       S0, S2
3238BE:  VMRS            APSR_nzcv, FPSCR
3238C2:  BLE             loc_3238F6
3238C4:  LDR             R3, [SP,#0xA0+var_70]
3238C6:  LDR.W           R3, [R3,R10,LSL#2]
3238CA:  ADD             R3, R1
3238CC:  ADDS            R6, R1, R2
3238CE:  ADD.W           R5, R6, #0x20 ; ' '
3238D2:  CMP             R5, R3
3238D4:  BCS             loc_3238F6
3238D6:  LDR             R5, [SP,#0xA0+var_2C]
3238D8:  ADDS            R2, #0x20 ; ' '
3238DA:  STR.W           R2, [R5,R10,LSL#2]
3238DE:  VLDR            S2, [R6,#0x40]
3238E2:  VCVT.F32.U32    S2, S2
3238E6:  VCMPE.F32       S0, S2
3238EA:  VMRS            APSR_nzcv, FPSCR
3238EE:  BGT             loc_3238CC
3238F0:  ADDS            R6, R1, R2
3238F2:  ADD.W           R5, R6, #0x20 ; ' '
3238F6:  VLDR            S2, [R6]
3238FA:  VCVT.F32.U32    S2, S2
3238FE:  VCMPE.F32       S0, S2
323902:  VMRS            APSR_nzcv, FPSCR
323906:  BGE             loc_32392C
323908:  SUBS            R2, #0x20 ; ' '
32390A:  CMP             R6, R1
32390C:  BLS             loc_32392C
32390E:  STR.W           R2, [R8,R10,LSL#2]
323912:  SUBS            R2, #0x20 ; ' '
323914:  SUBS            R5, #0x20 ; ' '
323916:  LDR.W           R3, [R6,#-0x20]!
32391A:  VMOV            S2, R3
32391E:  VCVT.F32.U32    S2, S2
323922:  VCMPE.F32       S0, S2
323926:  VMRS            APSR_nzcv, FPSCR
32392A:  BLT             loc_32390A
32392C:  LDR             R2, [SP,#0xA0+var_68]
32392E:  LDR.W           R2, [R2,R10,LSL#2]
323932:  ADD             R1, R2
323934:  CMP             R5, R1
323936:  BCS             loc_3239B2
323938:  MOV             R1, R6
32393A:  MOVS            R2, #0
32393C:  BLX             j__ZN17CVehicleRecording17RestoreInfoForCarEP8CVehicleP22CVehicleStateEachFrameb; CVehicleRecording::RestoreInfoForCar(CVehicle *,CVehicleStateEachFrame *,bool)
323940:  LDR             R0, [R6]
323942:  VMOV            S0, R0
323946:  VCVT.F32.U32    S0, S0
32394A:  LDR             R1, [R5]
32394C:  LDR             R2, [SP,#0xA0+var_58]
32394E:  SUBS            R0, R1, R0
323950:  MOV             R1, R5
323952:  VLDR            S2, [R2]
323956:  VMOV            S4, R0
32395A:  VCVT.F32.U32    S4, S4
32395E:  LDR             R4, [SP,#0xA0+var_74]
323960:  VSUB.F32        S0, S2, S0
323964:  LDR.W           R0, [R4,R10,LSL#2]
323968:  VDIV.F32        S0, S0, S4
32396C:  VMOV            R2, S0
323970:  BLX             j__ZN17CVehicleRecording21InterpolateInfoForCarEP8CVehicleP22CVehicleStateEachFramef; CVehicleRecording::InterpolateInfoForCar(CVehicle *,CVehicleStateEachFrame *,float)
323974:  LDR.W           R0, [R4,R10,LSL#2]; this
323978:  LDR.W           R1, [R0,#0x5A4]
32397C:  CMP             R1, #6
32397E:  BNE             loc_32398A
323980:  BLX             j__ZN6CTrain28FindPositionOnTrackFromCoorsEv; CTrain::FindPositionOnTrackFromCoors(void)
323984:  LDR             R0, [SP,#0xA0+var_98]
323986:  LDR.W           R0, [R0,R10,LSL#2]
32398A:  LDR             R1, [R0]
32398C:  LDR             R2, [R1,#0x60]
32398E:  MOVS            R1, #0
323990:  BLX             R2
323992:  LDR             R4, [SP,#0xA0+var_78]
323994:  LDR.W           R0, [R4,R10,LSL#2]; this
323998:  BLX             j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
32399C:  LDR.W           R2, [R4,R10,LSL#2]
3239A0:  LDR             R0, [R2,#0x18]
3239A2:  CBZ             R0, loc_3239D4
3239A4:  LDR             R1, [R0,#4]
3239A6:  LDR             R0, [R2,#0x14]
3239A8:  ADDS            R1, #0x10
3239AA:  CBZ             R0, loc_3239CE
3239AC:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3239B0:  B               loc_3239D4
3239B2:  LDR             R1, [SP,#0xA0+var_80]
3239B4:  LDRB.W          R1, [R1,R10]; CVehicle *
3239B8:  CBZ             R1, loc_3239C8
3239BA:  LDR             R0, [SP,#0xA0+var_58]
3239BC:  STR.W           R9, [R0]
3239C0:  LDR             R0, [SP,#0xA0+var_94]
3239C2:  STR.W           R9, [R0,R10,LSL#2]
3239C6:  B               loc_323AA0
3239C8:  BLX             j__ZN17CVehicleRecording23StopPlaybackRecordedCarEP8CVehicle; CVehicleRecording::StopPlaybackRecordedCar(CVehicle *)
3239CC:  B               loc_323A9A
3239CE:  ADDS            R0, R2, #4
3239D0:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3239D4:  LDR             R4, [SP,#0xA0+var_7C]
3239D6:  LDR.W           R0, [R4,R10,LSL#2]; this
3239DA:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
3239DE:  LDR.W           R3, [R4,R10,LSL#2]
3239E2:  LDR             R0, [R3,#0x14]
3239E4:  ADD.W           R2, R0, #0x30 ; '0'
3239E8:  CMP             R0, #0
3239EA:  IT EQ
3239EC:  ADDEQ           R2, R3, #4
3239EE:  LDM             R2, {R0-R2}
3239F0:  STR             R3, [SP,#0xA0+var_A0]
3239F2:  MOVS            R3, #1
3239F4:  STR             R3, [SP,#0xA0+var_9C]
3239F6:  MOVS            R3, #0x40A00000
3239FC:  BLX             j__Z44MarkSurroundingEntitiesForCollisionWithTrain7CVectorfP7CEntityb; MarkSurroundingEntitiesForCollisionWithTrain(CVector,float,CEntity *,bool)
323A00:  LDR             R4, [SP,#0xA0+var_40]
323A02:  LDRD.W          LR, R12, [SP,#0xA0+var_48]
323A06:  B               loc_323AA0
323A08:  LDRB.W          R0, [R11,R10]
323A0C:  CMP             R0, #0
323A0E:  BEQ             loc_323AA0
323A10:  LDR.W           R0, [R4,R10,LSL#2]; this
323A14:  CBZ             R0, loc_323A54
323A16:  LDRB.W          R1, [R0,#0x47]
323A1A:  LSLS            R1, R1, #0x1A
323A1C:  BMI             loc_323A40
323A1E:  LDR             R1, [SP,#0xA0+var_4C]
323A20:  LDRB.W          R1, [R1,R10]
323A24:  CBNZ            R1, loc_323AA0
323A26:  LDR             R1, [SP,#0xA0+var_5C]
323A28:  LDRB.W          R1, [R1,R10]
323A2C:  CMP             R1, #0
323A2E:  BEQ.W           loc_323866
323A32:  LDR             R1, [SP,#0xA0+var_6C]
323A34:  ADD.W           R1, R1, R10,LSL#2
323A38:  STR             R1, [SP,#0xA0+var_58]
323A3A:  VLDR            S0, [R1]
323A3E:  B               loc_32389E
323A40:  MOVS            R1, #0xFF
323A42:  STRB.W          R1, [R0,#0x428]
323A46:  LDR             R0, [SP,#0xA0+var_50]
323A48:  LDR.W           R0, [R0,R10,LSL#2]
323A4C:  LDR             R1, [R0,#0x44]
323A4E:  BIC.W           R1, R1, #4
323A52:  STR             R1, [R0,#0x44]
323A54:  LDR             R0, [SP,#0xA0+var_38]
323A56:  STR.W           R9, [R12,R10,LSL#2]
323A5A:  STR.W           R9, [R0,R10,LSL#2]
323A5E:  LDR             R0, [SP,#0xA0+var_34]
323A60:  STRB.W          R9, [LR,R10]
323A64:  STR.W           R9, [R0,R10,LSL#2]
323A68:  LDR             R0, [SP,#0xA0+var_30]
323A6A:  LDR.W           R5, [R0,R10,LSL#2]
323A6E:  LDR             R0, [SP,#0xA0+var_3C]
323A70:  ADD.W           R0, R0, R5,LSL#4
323A74:  LDRB            R1, [R0,#0xC]
323A76:  SUBS            R1, #1; void *
323A78:  STRB            R1, [R0,#0xC]
323A7A:  TST.W           R1, #0xFF
323A7E:  BNE             loc_323AA0
323A80:  LDR             R0, [SP,#0xA0+var_54]
323A82:  ADD.W           R6, R0, R5,LSL#4
323A86:  LDR             R0, [R6,#4]; this
323A88:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
323A8C:  MOVW            R0, #0x649B
323A90:  STR.W           R9, [R6,#4]
323A94:  ADD             R0, R5; this
323A96:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
323A9A:  LDRD.W          LR, R12, [SP,#0xA0+var_48]
323A9E:  LDR             R4, [SP,#0xA0+var_40]
323AA0:  ADD.W           R10, R10, #1
323AA4:  CMP.W           R10, #0x10
323AA8:  BNE             loc_323A08
323AAA:  ADD             SP, SP, #0x78 ; 'x'
323AAC:  VPOP            {D8}
323AB0:  ADD             SP, SP, #4
323AB2:  POP.W           {R8-R11}
323AB6:  POP             {R4-R7,PC}
