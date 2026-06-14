; =========================================================
; Game Engine Function: _ZN6CWorld27TestSphereAgainstSectorListER8CPtrList7CVectorfP7CEntityb
; Address            : 0x42B908 - 0x42BABA
; =========================================================

42B908:  PUSH            {R4-R7,LR}
42B90A:  ADD             R7, SP, #0xC
42B90C:  PUSH.W          {R8-R11}
42B910:  SUB             SP, SP, #4
42B912:  VPUSH           {D8-D11}
42B916:  SUB             SP, SP, #0xE8
42B918:  MOV             R8, R0
42B91A:  ADD             R0, SP, #0x128+var_B8; this
42B91C:  MOVS            R5, #0
42B91E:  MOV             R6, R3
42B920:  MOV             R9, R2
42B922:  MOV             R4, R1
42B924:  STRD.W          R5, R5, [SP,#0x128+var_48]
42B928:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
42B92C:  ADD             R0, SP, #0x128+var_EC; this
42B92E:  BLX             j__ZN14CCollisionDataC2Ev; CCollisionData::CCollisionData(void)
42B932:  VLDR            S16, [R7,#arg_0]
42B936:  MOV             R1, R4; float
42B938:  STR             R5, [SP,#0x128+var_100]
42B93A:  MOV             R2, R9; float
42B93C:  VNEG.F32        S0, S16
42B940:  STR             R5, [SP,#0x128+var_F8]
42B942:  MOV             R3, R6; float
42B944:  VSTR            S0, [SP,#0x128+var_B8]
42B948:  VSTR            S0, [SP,#0x128+var_B0]
42B94C:  VSTR            S16, [SP,#0x128+var_AC]
42B950:  VSTR            S0, [SP,#0x128+var_B4]
42B954:  STRD.W          R5, R5, [SP,#0x128+var_A0]
42B958:  VSTR            S16, [SP,#0x128+var_94]
42B95C:  STR             R5, [SP,#0x128+var_98]
42B95E:  STR             R0, [SP,#0x128+var_8C]
42B960:  MOVS            R0, #1
42B962:  STRH.W          R0, [SP,#0x128+var_EC]
42B966:  ADD             R0, SP, #0x128+var_100
42B968:  STR             R0, [SP,#0x128+var_E4]
42B96A:  ADD             R0, SP, #0x128+var_88; this
42B96C:  VSTR            S16, [SP,#0x128+var_A4]
42B970:  VSTR            S16, [SP,#0x128+var_F4]
42B974:  VSTR            S16, [SP,#0x128+var_A8]
42B978:  STR             R5, [SP,#0x128+var_FC]
42B97A:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
42B97E:  LDR.W           R5, [R8]
42B982:  CMP             R5, #0
42B984:  BEQ.W           loc_42BA98
42B988:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42B99A)
42B98A:  VMOV            S20, R9
42B98E:  LDR.W           R10, [R7,#arg_4]
42B992:  VMOV            S18, R6
42B996:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42B998:  VMOV            S22, R4
42B99C:  ADD.W           R8, SP, #0x128+var_10C
42B9A0:  LDR.W           R9, [R0]; CWorld::ms_nCurrentScanCode ...
42B9A4:  LDR             R0, =(gCurCamColVars_ptr - 0x42B9AA)
42B9A6:  ADD             R0, PC; gCurCamColVars_ptr
42B9A8:  LDR             R0, [R0]; gCurCamColVars
42B9AA:  STR             R0, [SP,#0x128+var_114]
42B9AC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42B9B2)
42B9AE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42B9B0:  LDR.W           R11, [R0]; CModelInfo::ms_modelInfoPtrs ...
42B9B4:  LDR             R0, =(gaTempSphereColPoints_ptr - 0x42B9BA)
42B9B6:  ADD             R0, PC; gaTempSphereColPoints_ptr
42B9B8:  LDR             R0, [R0]; gaTempSphereColPoints
42B9BA:  STR             R0, [SP,#0x128+var_110]
42B9BC:  LDRD.W          R4, R5, [R5]
42B9C0:  LDRH.W          R0, [R9]; CWorld::ms_nCurrentScanCode
42B9C4:  LDRH            R1, [R4,#0x30]; int
42B9C6:  CMP             R1, R0
42B9C8:  ITTTT NE
42B9CA:  STRHNE          R0, [R4,#0x30]
42B9CC:  CMPNE           R4, R10
42B9CE:  LDRBNE          R0, [R4,#0x1C]
42B9D0:  MOVSNE.W        R0, R0,LSL#31
42B9D4:  BNE             loc_42B9DC
42B9D6:  CMP             R5, #0
42B9D8:  BNE             loc_42B9BC
42B9DA:  B               loc_42BA98
42B9DC:  LDR             R0, [R7,#arg_8]
42B9DE:  CMP             R0, #1
42B9E0:  BNE             loc_42BA0C
42B9E2:  LDRSH.W         R0, [R4,#0x26]; this
42B9E6:  BLX             j__ZN8CGarages17IsModelIndexADoorEi; CGarages::IsModelIndexADoor(int)
42B9EA:  CBNZ            R0, loc_42BA0C
42B9EC:  LDR.W           R0, [R4,#0x164]
42B9F0:  LDRB            R1, [R0,#0x1E]
42B9F2:  LDR             R0, [SP,#0x128+var_114]
42B9F4:  CMP             R1, #3
42B9F6:  LDRB            R0, [R0]
42B9F8:  BEQ             loc_42BA08
42B9FA:  CMP             R1, #2
42B9FC:  BEQ             loc_42BA0C
42B9FE:  CMP             R1, #1
42BA00:  BNE             loc_42B9D6
42BA02:  CMP             R0, #0xA
42BA04:  BCS             loc_42B9D6
42BA06:  B               loc_42BA0C
42BA08:  CMP             R0, #0xA
42BA0A:  BCC             loc_42B9D6
42BA0C:  MOV             R0, R8; this
42BA0E:  MOV             R1, R4
42BA10:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
42BA14:  VLDR            S0, [SP,#0x128+var_10C]
42BA18:  VLDR            S2, [SP,#0x128+var_108]
42BA1C:  VSUB.F32        S0, S22, S0
42BA20:  VLDR            S4, [SP,#0x128+var_104]
42BA24:  VSUB.F32        S2, S20, S2
42BA28:  LDRSH.W         R0, [R4,#0x26]
42BA2C:  VSUB.F32        S4, S18, S4
42BA30:  LDR.W           R0, [R11,R0,LSL#2]
42BA34:  VMUL.F32        S0, S0, S0
42BA38:  LDR             R0, [R0,#0x2C]
42BA3A:  VMUL.F32        S2, S2, S2
42BA3E:  VMUL.F32        S4, S4, S4
42BA42:  VADD.F32        S0, S0, S2
42BA46:  VLDR            S2, [R0,#0x24]
42BA4A:  VADD.F32        S2, S2, S16
42BA4E:  VADD.F32        S0, S0, S4
42BA52:  VSQRT.F32       S0, S0
42BA56:  VCMPE.F32       S0, S2
42BA5A:  VMRS            APSR_nzcv, FPSCR
42BA5E:  BGE             loc_42B9D6
42BA60:  LDR             R6, [R4,#0x14]
42BA62:  CBNZ            R6, loc_42BA74
42BA64:  MOV             R0, R4; this
42BA66:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42BA6A:  LDR             R1, [R4,#0x14]; CMatrix *
42BA6C:  ADDS            R0, R4, #4; this
42BA6E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42BA72:  LDR             R6, [R4,#0x14]
42BA74:  MOV             R0, R4; this
42BA76:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
42BA7A:  MOV             R3, R0; int
42BA7C:  LDR             R0, [SP,#0x128+var_110]
42BA7E:  STR             R0, [SP,#0x128+var_128]; int
42BA80:  MOVS            R0, #0
42BA82:  STRD.W          R0, R0, [SP,#0x128+var_124]; int
42BA86:  ADD             R1, SP, #0x128+var_B8; int
42BA88:  STR             R0, [SP,#0x128+var_11C]; int
42BA8A:  ADD             R0, SP, #0x128+var_88; int
42BA8C:  MOV             R2, R6; CMatrix *
42BA8E:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
42BA92:  CMP             R0, #0
42BA94:  BEQ             loc_42B9D6
42BA96:  B               loc_42BA9A
42BA98:  MOVS            R4, #0
42BA9A:  MOVS            R0, #0
42BA9C:  STR             R0, [SP,#0x128+var_8C]
42BA9E:  ADD             R0, SP, #0x128+var_B8; this
42BAA0:  BLX             j__ZN9CColModelD2Ev; CColModel::~CColModel()
42BAA4:  ADD             R0, SP, #0x128+var_88; this
42BAA6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
42BAAA:  MOV             R0, R4
42BAAC:  ADD             SP, SP, #0xE8
42BAAE:  VPOP            {D8-D11}
42BAB2:  ADD             SP, SP, #4
42BAB4:  POP.W           {R8-R11}
42BAB8:  POP             {R4-R7,PC}
