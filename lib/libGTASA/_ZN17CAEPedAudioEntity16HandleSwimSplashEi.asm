; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity16HandleSwimSplashEi
; Address            : 0x3996C0 - 0x39978A
; =========================================================

3996C0:  PUSH            {R4,R5,R7,LR}
3996C2:  ADD             R7, SP, #8
3996C4:  SUB             SP, SP, #0x30
3996C6:  MOV             R4, R0
3996C8:  LDR             R0, =(AEAudioHardware_ptr - 0x3996D2)
3996CA:  MOV             R5, R1
3996CC:  MOVS            R1, #0x80; unsigned __int16
3996CE:  ADD             R0, PC; AEAudioHardware_ptr
3996D0:  MOVS            R2, #0x20 ; ' '; __int16
3996D2:  LDR             R0, [R0]; AEAudioHardware ; this
3996D4:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3996D8:  CMP             R0, #0
3996DA:  BEQ             loc_399776
3996DC:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3996E6)
3996DE:  LDRH.W          R1, [R4,#0x7E]
3996E2:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3996E4:  LDR.W           R2, [R4,#0x94]
3996E8:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3996EA:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3996EC:  LDRSB           R3, [R0,R5]
3996EE:  ADDS            R0, R1, #1
3996F0:  MOVS            R5, #0
3996F2:  LSLS            R1, R0, #0x10
3996F4:  CMP.W           R1, #0x40000
3996F8:  IT GT
3996FA:  MOVGT           R0, #0
3996FC:  STRH.W          R0, [R4,#0x7E]
399700:  VMOV            S0, R3
399704:  LDR             R1, [R2,#0x14]
399706:  ADD.W           R3, R1, #0x30 ; '0'
39970A:  CMP             R1, #0
39970C:  IT EQ
39970E:  ADDEQ           R3, R2, #4
399710:  MOV.W           R1, #0x3F800000
399714:  LDRD.W          R12, R2, [R3]
399718:  LDR             R3, [R3,#8]
39971A:  VCVT.F32.S32    S0, S0
39971E:  STRD.W          R1, R1, [SP,#0x38+var_28]
399722:  STRD.W          R1, R5, [SP,#0x38+var_20]
399726:  MOVS            R1, #0x20 ; ' '
399728:  STRD.W          R5, R5, [SP,#0x38+var_18]
39972C:  STR             R5, [SP,#0x38+var_10]
39972E:  ADD.W           R5, R4, #8
399732:  VSTR            S0, [SP,#0x38+var_2C]
399736:  STRD.W          R12, R2, [SP,#0x38+var_38]
39973A:  SXTH            R2, R0
39973C:  STR             R3, [SP,#0x38+var_30]
39973E:  MOV             R0, R5
399740:  MOV             R3, R4
399742:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
399746:  MOVW            R0, #0xD845
39974A:  MOVS            R1, #0x80; unsigned __int16
39974C:  MOVT            R0, #0x3D70
399750:  MOVS            R2, #1; unsigned __int16
399752:  STR             R0, [R4,#0x28]
399754:  MOV             R0, R5; this
399756:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
39975A:  LDR.W           R1, [R4,#0x94]; CEntity *
39975E:  MOV             R0, R5; this
399760:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
399764:  LDR             R0, =(AESoundManager_ptr - 0x39976C)
399766:  MOV             R1, R5; CAESound *
399768:  ADD             R0, PC; AESoundManager_ptr
39976A:  LDR             R0, [R0]; AESoundManager ; this
39976C:  ADD             SP, SP, #0x30 ; '0'
39976E:  POP.W           {R4,R5,R7,LR}
399772:  B.W             sub_19F824
399776:  LDR             R0, =(AEAudioHardware_ptr - 0x399780)
399778:  MOVS            R1, #0x80; unsigned __int16
39977A:  MOVS            R2, #0x20 ; ' '; __int16
39977C:  ADD             R0, PC; AEAudioHardware_ptr
39977E:  LDR             R0, [R0]; AEAudioHardware ; this
399780:  ADD             SP, SP, #0x30 ; '0'
399782:  POP.W           {R4,R5,R7,LR}
399786:  B.W             sub_18B078
