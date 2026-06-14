; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity23ReportObjectDestructionEP7CEntity
; Address            : 0x394648 - 0x394850
; =========================================================

394648:  PUSH            {R4-R7,LR}
39464A:  ADD             R7, SP, #0xC
39464C:  PUSH.W          {R8-R11}
394650:  SUB             SP, SP, #0x2C
394652:  MOV             R5, R1
394654:  MOV             R10, R0
394656:  CMP             R5, #0
394658:  BEQ.W           loc_394848
39465C:  LDRSH.W         R0, [R5,#0x26]
394660:  CMP.W           R0, #0x158
394664:  BNE             loc_3946D2
394666:  MOVS            R2, #0xB
394668:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x394678)
39466A:  MOVW            R12, #0xD845
39466E:  LDR             R1, [R5,#0x14]
394670:  MOVT            R12, #0x3D70
394674:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
394676:  MOV.W           R4, #0x3F800000
39467A:  ADD.W           R3, R1, #0x30 ; '0'
39467E:  CMP             R1, #0
394680:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
394682:  MOV.W           R1, #0
394686:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
394688:  IT EQ
39468A:  ADDEQ           R3, R5, #4
39468C:  LDRSB.W         R0, [R0,#0x74]
394690:  LDRD.W          R6, R5, [R3]
394694:  LDR             R3, [R3,#8]
394696:  VMOV            S0, R0
39469A:  MOV.W           R0, #0x40000000
39469E:  VCVT.F32.S32    S0, S0
3946A2:  STRD.W          R0, R4, [SP,#0x48+var_38]
3946A6:  STRD.W          R4, R1, [SP,#0x48+var_30]
3946AA:  STRD.W          R1, R12, [SP,#0x48+var_28]
3946AE:  STR             R1, [SP,#0x48+var_20]
3946B0:  MOVS            R1, #2
3946B2:  STRD.W          R6, R5, [SP,#0x48+var_48]
3946B6:  ADD.W           R5, R10, #8
3946BA:  STR             R3, [SP,#0x48+var_40]
3946BC:  MOV             R3, R10
3946BE:  MOV             R0, R5
3946C0:  VSTR            S0, [SP,#0x48+var_3C]
3946C4:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3946C8:  LDR             R0, =(AESoundManager_ptr - 0x3946D0)
3946CA:  MOV             R1, R5
3946CC:  ADD             R0, PC; AESoundManager_ptr
3946CE:  LDR             R0, [R0]; AESoundManager
3946D0:  B               loc_3947D6
3946D2:  LDR             R1, =(MI_GRASSHOUSE_ptr - 0x3946D8)
3946D4:  ADD             R1, PC; MI_GRASSHOUSE_ptr
3946D6:  LDR             R1, [R1]; MI_GRASSHOUSE
3946D8:  LDRH            R1, [R1]
3946DA:  CMP             R0, R1
3946DC:  BNE.W           loc_3947E4
3946E0:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3946EE)
3946E2:  ADDS            R6, R5, #4
3946E4:  LDR             R1, [R5,#0x14]
3946E6:  MOV.W           R12, #0x3F400000
3946EA:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3946EC:  MOV             R2, R6
3946EE:  CMP             R1, #0
3946F0:  MOV.W           R9, #0
3946F4:  LDR             R4, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3946F6:  ADD.W           R11, R10, #8
3946FA:  LDR             R0, [R4]; CAEAudioEntity::m_pAudioEventVolumes
3946FC:  IT NE
3946FE:  ADDNE.W         R2, R1, #0x30 ; '0'
394702:  LDRD.W          R1, R3, [R2]
394706:  LDR             R2, [R2,#8]
394708:  LDRSB.W         R0, [R0,#0x7D]
39470C:  STR.W           R12, [SP,#0x48+var_34]
394710:  VMOV            S0, R0
394714:  MOV.W           R0, #0x3F800000
394718:  VCVT.F32.S32    S0, S0
39471C:  STRD.W          R9, R9, [SP,#0x48+var_24]
394720:  STRD.W          R9, R9, [SP,#0x48+var_2C]
394724:  STR             R2, [SP,#0x48+var_40]
394726:  MOVS            R2, #0x38 ; '8'
394728:  STR             R0, [SP,#0x48+var_30]
39472A:  MOV.W           R0, #0x3FC00000
39472E:  STR             R3, [SP,#0x48+var_44]
394730:  MOV             R3, R10
394732:  STR             R0, [SP,#0x48+var_38]
394734:  MOV             R0, R11
394736:  STR             R1, [SP,#0x48+var_48]
394738:  MOVS            R1, #2
39473A:  VSTR            S0, [SP,#0x48+var_3C]
39473E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394742:  LDR             R0, =(AESoundManager_ptr - 0x39474A)
394744:  MOV             R1, R11; CAESound *
394746:  ADD             R0, PC; AESoundManager_ptr
394748:  LDR.W           R8, [R0]; AESoundManager
39474C:  MOV             R0, R8; this
39474E:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
394752:  LDR             R0, [R5,#0x14]
394754:  MOVS            R1, #0x12; int
394756:  CMP             R0, #0
394758:  IT NE
39475A:  ADDNE.W         R6, R0, #0x30 ; '0'
39475E:  MOVS            R0, #(byte_9+6); this
394760:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
394764:  LDM.W           R6, {R1-R3}
394768:  MOV.W           R5, #0x3F800000
39476C:  LDR             R6, [R4]; CAEAudioEntity::m_pAudioEventVolumes
39476E:  LDRSB.W         R6, [R6,#0x80]
394772:  STR             R5, [SP,#0x48+var_30]
394774:  MOV             R5, #0x3F0F5C29
39477C:  VMOV            S0, R6
394780:  STR             R5, [SP,#0x48+var_34]
394782:  MOV.W           R5, #0x3FC00000
394786:  STR             R5, [SP,#0x48+var_38]
394788:  STRD.W          R2, R3, [SP,#0x48+var_44]
39478C:  VCVT.F32.S32    S0, S0
394790:  STRD.W          R9, R9, [SP,#0x48+var_24]
394794:  SXTH            R2, R0
394796:  STRD.W          R9, R9, [SP,#0x48+var_2C]
39479A:  MOV             R0, R11
39479C:  STR             R1, [SP,#0x48+var_48]
39479E:  MOVS            R1, #2
3947A0:  MOV             R3, R10
3947A2:  VSTR            S0, [SP,#0x48+var_3C]
3947A6:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3947AA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3947B6)
3947AC:  MOV             R1, R11; CAESound *
3947AE:  STR.W           R9, [R10,#0x24]
3947B2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3947B4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3947B6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3947B8:  ADD.W           R0, R0, #0x258
3947BC:  VMOV            S0, R0
3947C0:  MOVS            R0, #0x80
3947C2:  VCVT.F32.U32    S0, S0
3947C6:  STR.W           R0, [R10,#0x14]
3947CA:  MOVS            R0, #4
3947CC:  STRH.W          R0, [R10,#0x5E]
3947D0:  MOV             R0, R8; this
3947D2:  VSTR            S0, [R10,#0x18]
3947D6:  ADD             SP, SP, #0x2C ; ','
3947D8:  POP.W           {R8-R11}
3947DC:  POP.W           {R4-R7,LR}
3947E0:  B.W             sub_19F824
3947E4:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3947EA)
3947E6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3947E8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3947EA:  LDR.W           R0, [R1,R0,LSL#2]
3947EE:  LDR             R0, [R0,#0x2C]
3947F0:  LDR             R0, [R0,#0x2C]
3947F2:  CBZ             R0, loc_394848
3947F4:  LDRSH.W         R1, [R0]
3947F8:  CMP             R1, #1
3947FA:  BLT             loc_394802
3947FC:  LDR             R0, [R0,#8]
3947FE:  ADDS            R0, #0x10
394800:  B               loc_39481C
394802:  LDRSH.W         R1, [R0,#2]
394806:  CMP             R1, #1
394808:  BLT             loc_394810
39480A:  LDR             R0, [R0,#0xC]
39480C:  ADDS            R0, #0x18
39480E:  B               loc_39481C
394810:  LDRSH.W         R1, [R0,#4]
394814:  CMP             R1, #1
394816:  BLT             loc_394848
394818:  LDR             R0, [R0,#0x18]
39481A:  ADDS            R0, #0xC
39481C:  LDRB            R0, [R0]
39481E:  CMP             R0, #0xAB
394820:  BGT             loc_394832
394822:  CMP             R0, #0x2A ; '*'
394824:  BEQ             loc_394838
394826:  CMP             R0, #0x2D ; '-'
394828:  BEQ.W           loc_394666
39482C:  CMP             R0, #0x46 ; 'F'
39482E:  BEQ             loc_394838
394830:  B               loc_394848
394832:  SUBS            R0, #0xAC
394834:  CMP             R0, #2
394836:  BHI             loc_394848
394838:  MOVS            R0, #(word_28+1); this
39483A:  MOVS            R1, #0x2C ; ','; int
39483C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
394840:  SXTH            R2, R0
394842:  CMP             R2, #0
394844:  BGE.W           loc_394668
394848:  ADD             SP, SP, #0x2C ; ','
39484A:  POP.W           {R8-R11}
39484E:  POP             {R4-R7,PC}
