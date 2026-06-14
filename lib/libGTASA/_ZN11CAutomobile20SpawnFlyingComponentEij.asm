; =========================================================
; Game Engine Function: _ZN11CAutomobile20SpawnFlyingComponentEij
; Address            : 0x552684 - 0x552C36
; =========================================================

552684:  PUSH            {R4-R7,LR}
552686:  ADD             R7, SP, #0xC
552688:  PUSH.W          {R8-R11}
55268C:  SUB             SP, SP, #0x5C
55268E:  MOV             R10, R0
552690:  LDR.W           R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x55269C)
552694:  MOV             R8, R2
552696:  MOV             R11, R1
552698:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
55269A:  LDR             R0, [R0]; CObject::nNoTempObjects ...
55269C:  LDRH            R0, [R0]; CObject::nNoTempObjects
55269E:  CMP             R0, #0x95
5526A0:  BLS             loc_5526A6
5526A2:  MOVS            R4, #0
5526A4:  B               loc_552C2C
5526A6:  ADD.W           R5, R10, R11,LSL#2
5526AA:  MOVS            R4, #0
5526AC:  LDR.W           R0, [R5,#0x65C]
5526B0:  CMP             R0, #0
5526B2:  BEQ.W           loc_552C2C
5526B6:  LDR.W           R1, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x5526C2)
5526BA:  ADD             R2, SP, #0x78+var_20
5526BC:  STR             R4, [SP,#0x78+var_20]
5526BE:  ADD             R1, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
5526C0:  LDR             R1, [R1]; GetCurrentAtomicObjectCB(RwObject *,void *)
5526C2:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
5526C6:  LDR             R0, [SP,#0x78+var_20]
5526C8:  CMP             R0, #0
5526CA:  BEQ.W           loc_552C2C
5526CE:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5526D8)
5526D2:  MOVS            R1, #1; unsigned int
5526D4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5526D6:  LDR             R6, [R0]; CPools::ms_pObjectPool ...
5526D8:  LDR             R0, [R6]; CPools::ms_pObjectPool
5526DA:  STRB            R1, [R0,#0x11]
5526DC:  MOV.W           R0, #(elf_hash_bucket+0x88); this
5526E0:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
5526E4:  MOV             R4, R0
5526E6:  BLX             j__ZN7CObjectC2Ev_0; CObject::CObject(void)
5526EA:  LDR             R0, [R6]; CPools::ms_pObjectPool
5526EC:  MOVS            R1, #0
5526EE:  CMP             R4, #0
5526F0:  STRB            R1, [R0,#0x11]
5526F2:  BEQ             loc_5526A2
5526F4:  ADDW            R0, R5, #0x65C
5526F8:  LDR             R0, [R0]
5526FA:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5526FE:  MOV             R5, R0
552700:  CMP.W           R11, #0x12
552704:  MOV             R9, R5
552706:  BNE             loc_552716
552708:  LDR             R0, [R4]
55270A:  MOVW            R1, #0x179
55270E:  LDR             R2, [R0,#0x1C]
552710:  MOV             R0, R4
552712:  BLX             R2
552714:  B               loc_552810
552716:  CMP.W           R8, #4; switch 5 cases
55271A:  BHI             def_55271C; jumptable 0055271C default case
55271C:  TBB.W           [PC,R8]; switch jump
552720:  DCB 3; jump table for switch statement
552721:  DCB 0x46
552722:  DCB 0x4A
552723:  DCB 0x5C
552724:  DCB 0x67
552725:  ALIGN 2
552726:  LDR             R0, [R4]; jumptable 0055271C case 0
552728:  MOVW            R1, #0x177
55272C:  LDR             R2, [R0,#0x1C]
55272E:  MOV             R0, R4
552730:  BLX             R2
552732:  ADD             R0, SP, #0x78+var_68
552734:  MOV             R1, R9
552736:  MOVS            R2, #0
552738:  MOVS            R6, #0
55273A:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
55273E:  LDR.W           R1, [R10,#0x14]
552742:  VLDR            S0, [SP,#0x78+var_38]
552746:  ADD.W           R2, R1, #0x30 ; '0'
55274A:  CMP             R1, #0
55274C:  VLDR            S2, [SP,#0x78+var_34]
552750:  VLDR            S4, [SP,#0x78+var_30]
552754:  IT EQ
552756:  ADDEQ.W         R2, R10, #4
55275A:  VLDR            S6, [R2]
55275E:  VLDR            S8, [R2,#4]
552762:  VSUB.F32        S0, S0, S6
552766:  VLDR            S10, [R2,#8]
55276A:  VSUB.F32        S2, S2, S8
55276E:  VLDR            S6, [R1]
552772:  VLDR            S8, [R1,#4]
552776:  VSUB.F32        S4, S4, S10
55277A:  VLDR            S12, [R1,#8]
55277E:  STRD.W          R6, R6, [R4,#0xAC]
552782:  VMUL.F32        S0, S0, S6
552786:  VMUL.F32        S2, S2, S8
55278A:  VMUL.F32        S4, S4, S12
55278E:  VADD.F32        S0, S0, S2
552792:  VADD.F32        S0, S0, S4
552796:  VNEG.F32        S0, S0
55279A:  VSTR            S0, [R4,#0xA8]
55279E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5527A2:  B               loc_552810
5527A4:  LDR             R0, [R4]; jumptable 0055271C default case
5527A6:  MOV.W           R1, #0x178
5527AA:  B               loc_55270E
5527AC:  LDR             R0, [R4]; jumptable 0055271C case 1
5527AE:  MOVW            R1, #0x17B
5527B2:  B               loc_55270E
5527B4:  LDR             R0, [R4]; jumptable 0055271C case 2
5527B6:  MOV.W           R1, #0x176
5527BA:  LDR             R2, [R0,#0x1C]
5527BC:  MOV             R0, R4
5527BE:  BLX             R2
5527C0:  LDR             R1, [R4,#0x1C]
5527C2:  MOV.W           R0, #0xBF000000
5527C6:  MOVS            R2, #0
5527C8:  STRD.W          R2, R0, [R4,#0xA8]
5527CC:  ORR.W           R0, R1, #0x4000
5527D0:  STR.W           R2, [R4,#0xB0]
5527D4:  STR             R0, [R4,#0x1C]
5527D6:  B               loc_552810
5527D8:  LDR             R0, [R4]; jumptable 0055271C case 3
5527DA:  MOVW            R1, #0x179
5527DE:  LDR             R2, [R0,#0x1C]
5527E0:  MOV             R0, R4
5527E2:  BLX             R2
5527E4:  MOV             R0, #0x3ECCCCCD
5527EC:  B               loc_552802
5527EE:  LDR             R0, [R4]; jumptable 0055271C case 4
5527F0:  MOV.W           R1, #0x17A
5527F4:  LDR             R2, [R0,#0x1C]
5527F6:  MOV             R0, R4
5527F8:  BLX             R2
5527FA:  MOV             R0, #0xBE99999A
552802:  MOVS            R1, #0
552804:  STR.W           R1, [R4,#0xA8]
552808:  STR.W           R0, [R4,#0xAC]
55280C:  STR.W           R1, [R4,#0xB0]
552810:  LDRSH.W         R1, [R10,#0x26]; int
552814:  MOV             R0, R4; this
552816:  BLX             j__ZN7CObject12RefModelInfoEi; CObject::RefModelInfo(int)
55281A:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
55281E:  MOV             R6, R0
552820:  LDR             R0, [SP,#0x78+var_20]
552822:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
552826:  STR             R0, [SP,#0x78+var_20]
552828:  ADD.W           R1, R5, #0x30 ; '0'
55282C:  VLD1.32         {D18-D19}, [R1]
552830:  ADD.W           R1, R5, #0x20 ; ' '
552834:  VLD1.32         {D20-D21}, [R1]
552838:  ADD.W           R1, R6, #0x40 ; '@'
55283C:  VLD1.32         {D16-D17}, [R9]!
552840:  VLD1.32         {D22-D23}, [R9]
552844:  VST1.32         {D18-D19}, [R1]
552848:  ADD.W           R1, R6, #0x30 ; '0'
55284C:  VST1.32         {D20-D21}, [R1]
552850:  ADD.W           R1, R6, #0x10
552854:  VST1.32         {D16-D17}, [R1]
552858:  ADD.W           R1, R6, #0x20 ; ' '
55285C:  VST1.32         {D22-D23}, [R1]
552860:  MOV             R1, R6
552862:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
552866:  LDR             R0, [SP,#0x78+var_20]
552868:  MOVS            R1, #0
55286A:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
55286E:  LDR             R1, [SP,#0x78+var_20]
552870:  MOV             R0, R4
552872:  MOVS            R2, #1
552874:  BLX             j__ZN7CEntity16AttachToRwObjectEP8RwObjectb; CEntity::AttachToRwObject(RwObject *,bool)
552878:  MOVS            R0, #0
55287A:  MOVS            R3, #0
55287C:  MOVT            R0, #0x4120
552880:  MOVT            R3, #0x41C8
552884:  MOVW            R6, #0x740F
552888:  LDR             R1, [R4]
55288A:  LDR             R2, [R4,#0x1C]
55288C:  MOVT            R6, #0x3DDA
552890:  STRD.W          R0, R3, [R4,#0x90]
552894:  MOVW            R0, #0x51EC
552898:  MOVW            R3, #0xCCCD
55289C:  MOVT            R0, #0x3F78
5528A0:  MOVT            R3, #0x3DCC
5528A4:  ADD.W           R12, R4, #0x9C
5528A8:  STM.W           R12, {R0,R3,R6}
5528AC:  MOVS            R0, #3
5528AE:  STRB.W          R0, [R4,#0x140]
5528B2:  ORR.W           R0, R2, #0x80000
5528B6:  STR             R0, [R4,#0x1C]
5528B8:  MOV             R0, R4
5528BA:  LDR             R2, [R1,#0x14]
5528BC:  MOVS            R1, #0
5528BE:  BLX             R2
5528C0:  LDR.W           R0, [R4,#0x144]
5528C4:  BIC.W           R0, R0, #0x81
5528C8:  ORR.W           R0, R0, #0x80
5528CC:  STR.W           R0, [R4,#0x144]
5528D0:  LDRB.W          R0, [R10,#0x438]
5528D4:  STRB.W          R0, [R4,#0x150]
5528D8:  LDRB.W          R0, [R10,#0x439]
5528DC:  STRB.W          R0, [R4,#0x151]
5528E0:  MOV             R0, R4
5528E2:  LDR.W           R2, [R10,#0x5A8]
5528E6:  LDR.W           R1, [R10,#0x5B0]
5528EA:  BLX             j__ZN7CObject15SetRemapTextureEP9RwTexturePKc; CObject::SetRemapTexture(RwTexture *,char const*)
5528EE:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x5528F4)
5528F0:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
5528F2:  LDR             R0, [R0]; CObject::nNoTempObjects ...
5528F4:  LDRH            R1, [R0]; CObject::nNoTempObjects
5528F6:  ADDS            R1, #1
5528F8:  STRH            R1, [R0]; CObject::nNoTempObjects
5528FA:  UXTH            R0, R1
5528FC:  CMP             R0, #0x15
5528FE:  BCC             loc_552910
552900:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55290A)
552902:  VLDR            S2, =4000.0
552906:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
552908:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
55290A:  VLDR            S0, [R0]
55290E:  B               loc_552924
552910:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x552918)
552912:  CMP             R0, #0xB
552914:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
552916:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
552918:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
55291A:  BCC             loc_552936
55291C:  VMOV            S0, R1
552920:  VLDR            S2, =10000.0
552924:  VCVT.F32.U32    S0, S0
552928:  VADD.F32        S0, S0, S2
55292C:  VCVT.U32.F32    S0, S0
552930:  VMOV            R0, S0
552934:  B               loc_55293C
552936:  MOVW            R0, #0x4E20
55293A:  ADD             R0, R1
55293C:  STR.W           R0, [R4,#0x154]
552940:  LDR.W           R0, [R10,#0x50]
552944:  VLDR            D16, [R10,#0x48]
552948:  STR             R0, [R4,#0x50]
55294A:  VLDR            S0, [R4,#0x50]
55294E:  VSTR            D16, [R4,#0x48]
552952:  VCMPE.F32       S0, #0.0
552956:  VMRS            APSR_nzcv, FPSCR
55295A:  BLE             loc_552966
55295C:  VMOV.F32        S2, #1.5
552960:  ADD.W           R5, R10, #0x14
552964:  B               loc_55299E
552966:  MOV             R5, R10
552968:  LDR.W           R0, [R5,#0x14]!
55296C:  VLDR            S2, [R0,#0x28]
552970:  VCMPE.F32       S2, #0.0
552974:  VMRS            APSR_nzcv, FPSCR
552978:  BLE             loc_55299A
55297A:  CMP.W           R11, #0x12
55297E:  ITT NE
552980:  SUBNE.W         R0, R8, #3
552984:  CMPNE           R0, #1
552986:  BHI             loc_55299A
552988:  VMOV.F32        S2, #-1.5
55298C:  VMUL.F32        S0, S0, S2
552990:  VLDR            S2, =0.04
552994:  VADD.F32        S0, S0, S2
552998:  B               loc_5529A2
55299A:  VMOV.F32        S2, #0.25
55299E:  VMUL.F32        S0, S0, S2
5529A2:  VMOV.F32        S2, #0.75
5529A6:  VLDR            S4, [R4,#0x48]
5529AA:  VLDR            S6, [R4,#0x4C]
5529AE:  ADD.W           R6, R10, #4
5529B2:  VSTR            S0, [R4,#0x50]
5529B6:  MOV             R2, R6
5529B8:  VMUL.F32        S4, S4, S2
5529BC:  VMUL.F32        S2, S6, S2
5529C0:  VSTR            S4, [R4,#0x48]
5529C4:  VSTR            S2, [R4,#0x4C]
5529C8:  VLDR            S0, [R10,#0x54]
5529CC:  VLDR            S2, [R10,#0x58]
5529D0:  VLDR            S4, [R10,#0x5C]
5529D4:  VADD.F32        S0, S0, S0
5529D8:  VADD.F32        S2, S2, S2
5529DC:  VADD.F32        S4, S4, S4
5529E0:  VSTR            S2, [R4,#0x58]
5529E4:  VSTR            S0, [R4,#0x54]
5529E8:  VSTR            S4, [R4,#0x5C]
5529EC:  LDR             R0, [R5]
5529EE:  LDR             R1, [R4,#0x14]
5529F0:  CMP             R0, #0
5529F2:  IT NE
5529F4:  ADDNE.W         R2, R0, #0x30 ; '0'
5529F8:  ADD.W           R0, R1, #0x30 ; '0'
5529FC:  CMP             R1, #0
5529FE:  VLDR            S0, [R2]
552A02:  VLDR            S2, [R2,#4]
552A06:  VLDR            S4, [R2,#8]
552A0A:  IT EQ
552A0C:  ADDEQ           R0, R4, #4
552A0E:  VLDR            S6, [R0]
552A12:  VLDR            S8, [R0,#4]
552A16:  VLDR            S10, [R0,#8]
552A1A:  VSUB.F32        S0, S6, S0
552A1E:  VSUB.F32        S2, S8, S2
552A22:  ADD             R0, SP, #0x78+var_68; this
552A24:  VSUB.F32        S4, S10, S4
552A28:  VSTR            S2, [SP,#0x78+var_64]
552A2C:  VSTR            S0, [SP,#0x78+var_68]
552A30:  VSTR            S4, [SP,#0x78+var_60]
552A34:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
552A38:  CMP.W           R11, #0x12
552A3C:  BEQ             loc_552A4C
552A3E:  SUB.W           R0, R8, #3
552A42:  CMP             R0, #2
552A44:  BCC             loc_552A4C
552A46:  ADD             R3, SP, #0x78+var_68
552A48:  LDM             R3, {R1-R3}
552A4A:  B               loc_552ADE
552A4C:  LDR             R0, [R5]
552A4E:  VLDR            S6, [SP,#0x78+var_68]
552A52:  VLDR            S8, [SP,#0x78+var_64]
552A56:  VLDR            S2, [R0,#0x20]
552A5A:  VLDR            S4, [R0,#0x24]
552A5E:  VLDR            S0, [R0,#0x28]
552A62:  VADD.F32        S6, S2, S6
552A66:  VLDR            S10, [SP,#0x78+var_60]
552A6A:  VADD.F32        S8, S4, S8
552A6E:  VCMPE.F32       S0, #0.0
552A72:  VADD.F32        S10, S0, S10
552A76:  VMRS            APSR_nzcv, FPSCR
552A7A:  VMOV            R1, S6
552A7E:  VSTR            S6, [SP,#0x78+var_68]
552A82:  VMOV            R2, S8
552A86:  VSTR            S8, [SP,#0x78+var_64]
552A8A:  VMOV            R3, S10
552A8E:  VSTR            S10, [SP,#0x78+var_60]
552A92:  BLE             loc_552ADE
552A94:  VLDR            S6, [R10,#0x48]
552A98:  VLDR            S8, [R10,#0x4C]
552A9C:  VMUL.F32        S6, S6, S6
552AA0:  LDR             R0, [R4,#0x14]
552AA2:  VMUL.F32        S8, S8, S8
552AA6:  VLDR            S10, [R0,#0x38]
552AAA:  VADD.F32        S6, S6, S8
552AAE:  VLDR            S8, [R0,#0x34]
552AB2:  VSQRT.F32       S6, S6
552AB6:  VMUL.F32        S4, S4, S6
552ABA:  VMUL.F32        S0, S6, S0
552ABE:  VMUL.F32        S2, S2, S6
552AC2:  VLDR            S6, [R0,#0x30]
552AC6:  VADD.F32        S4, S4, S8
552ACA:  VADD.F32        S0, S0, S10
552ACE:  VADD.F32        S2, S2, S6
552AD2:  VSTR            S2, [R0,#0x30]
552AD6:  VSTR            S4, [R0,#0x34]
552ADA:  VSTR            S0, [R0,#0x38]
552ADE:  MOV             R0, R4
552AE0:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
552AE4:  CMP.W           R8, #1
552AE8:  BNE             loc_552B06
552AEA:  MOV.W           R0, #0x3F000000
552AEE:  STR             R0, [R4,#0x54]
552AF0:  MOVS            R0, #0x40A00000
552AF6:  STR.W           R0, [R4,#0x94]
552AFA:  MOV             R0, #0x3F7D70A4
552B02:  STR.W           R0, [R4,#0x9C]
552B06:  LDRB.W          R0, [R10,#0x3A]
552B0A:  AND.W           R0, R0, #0xF8
552B0E:  CMP             R0, #0x28 ; '('
552B10:  BNE             loc_552BD6
552B12:  MOV             R0, R10; this
552B14:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
552B18:  CMP             R0, #1
552B1A:  BNE             loc_552BD6
552B1C:  LDR             R0, =(TheCamera_ptr - 0x552B24)
552B1E:  LDR             R1, [R5]
552B20:  ADD             R0, PC; TheCamera_ptr
552B22:  CMP             R1, #0
552B24:  LDR             R0, [R0]; TheCamera
552B26:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
552B28:  IT NE
552B2A:  ADDNE.W         R6, R1, #0x30 ; '0'
552B2E:  VLDR            S0, [R6]
552B32:  ADD.W           R1, R2, #0x30 ; '0'
552B36:  CMP             R2, #0
552B38:  VLDR            S2, [R6,#4]
552B3C:  VLDR            S4, [R6,#8]
552B40:  IT EQ
552B42:  ADDEQ           R1, R0, #4
552B44:  VLDR            S6, [R1]
552B48:  VLDR            S8, [R1,#4]
552B4C:  VSUB.F32        S0, S6, S0
552B50:  VLDR            S6, [SP,#0x78+var_68]
552B54:  VSUB.F32        S2, S8, S2
552B58:  VLDR            S8, [SP,#0x78+var_64]
552B5C:  VLDR            S10, [R1,#8]
552B60:  VLDR            S12, [SP,#0x78+var_60]
552B64:  VSUB.F32        S4, S10, S4
552B68:  VMUL.F32        S6, S0, S6
552B6C:  VMUL.F32        S8, S2, S8
552B70:  VMUL.F32        S10, S4, S12
552B74:  VADD.F32        S6, S6, S8
552B78:  VMOV.F32        S8, #-0.5
552B7C:  VADD.F32        S6, S6, S10
552B80:  VCMPE.F32       S6, S8
552B84:  VMRS            APSR_nzcv, FPSCR
552B88:  BLE             loc_552BD6
552B8A:  ADD             R0, SP, #0x78+var_68; this
552B8C:  VSTR            S2, [SP,#0x78+var_64]
552B90:  VSTR            S0, [SP,#0x78+var_68]
552B94:  VSTR            S4, [SP,#0x78+var_60]
552B98:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
552B9C:  VLDR            S0, =0.3
552BA0:  VMOV.F32        S2, #5.0
552BA4:  VLDR            S8, [SP,#0x78+var_60]
552BA8:  MOV             R0, R4
552BAA:  VLDR            S4, [SP,#0x78+var_68]
552BAE:  VADD.F32        S0, S8, S0
552BB2:  VLDR            S6, [SP,#0x78+var_64]
552BB6:  VMUL.F32        S4, S4, S2
552BBA:  VMUL.F32        S6, S6, S2
552BBE:  VMUL.F32        S2, S0, S2
552BC2:  VSTR            S0, [SP,#0x78+var_60]
552BC6:  VMOV            R1, S4
552BCA:  VMOV            R2, S6
552BCE:  VMOV            R3, S2
552BD2:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
552BD6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x552BE0)
552BD8:  LDRSH.W         R1, [R4,#0x26]
552BDC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
552BDE:  LDR.W           R8, [R5]
552BE2:  LDR             R5, [R4,#0x14]
552BE4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
552BE6:  LDR.W           R0, [R0,R1,LSL#2]
552BEA:  LDR             R6, [R0,#0x2C]
552BEC:  MOV             R0, R10; this
552BEE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
552BF2:  MOV             R3, R0; int
552BF4:  LDR             R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x552BFE)
552BF6:  MOVS            R1, #0
552BF8:  MOV             R2, R8; CMatrix *
552BFA:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
552BFC:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
552BFE:  STRD.W          R0, R1, [SP,#0x78+var_78]; int
552C02:  MOV             R0, R5; int
552C04:  STRD.W          R1, R1, [SP,#0x78+var_70]; int
552C08:  MOV             R1, R6; int
552C0A:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
552C0E:  CMP             R0, #1
552C10:  IT GE
552C12:  STRGE.W         R10, [R4,#0x12C]
552C16:  LDRB.W          R0, [R10,#0x47]
552C1A:  LSLS            R0, R0, #0x1A
552C1C:  ITTT MI
552C1E:  LDRMI           R0, [R4,#0x44]
552C20:  ORRMI.W         R0, R0, #0x20000000
552C24:  STRMI           R0, [R4,#0x44]
552C26:  MOV             R0, R4; this
552C28:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
552C2C:  MOV             R0, R4
552C2E:  ADD             SP, SP, #0x5C ; '\'
552C30:  POP.W           {R8-R11}
552C34:  POP             {R4-R7,PC}
