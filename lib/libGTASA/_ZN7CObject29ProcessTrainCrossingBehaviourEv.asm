; =========================================================
; Game Engine Function: _ZN7CObject29ProcessTrainCrossingBehaviourEv
; Address            : 0x454860 - 0x454AAC
; =========================================================

454860:  PUSH            {R4-R7,LR}
454862:  ADD             R7, SP, #0xC
454864:  PUSH.W          {R8}
454868:  VPUSH           {D8}
45486C:  SUB             SP, SP, #0x30; float
45486E:  MOV             R8, R0
454870:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x45487A)
454872:  LDRH.W          R1, [R8,#0x24]
454876:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
454878:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
45487A:  LDR             R0, [R0]; CTimer::m_FrameCounter
45487C:  ADD             R0, R1
45487E:  LSLS            R0, R0, #0x1B
454880:  BMI             loc_454938
454882:  LDR.W           R0, [R8,#0x14]
454886:  ADD.W           R4, R8, #4
45488A:  MOVS            R3, #1
45488C:  CMP             R0, #0
45488E:  MOV             R2, R4
454890:  IT NE
454892:  ADDNE.W         R2, R0, #0x30 ; '0'
454896:  LDM             R2, {R0-R2}
454898:  BLX             j__ZN6CTrain16FindNearestTrainE7CVectorb; CTrain::FindNearestTrain(CVector,bool)
45489C:  LDR.W           R1, [R8,#0x144]
4548A0:  CMP             R0, #0
4548A2:  BIC.W           R2, R1, #0x800
4548A6:  STR.W           R2, [R8,#0x144]
4548AA:  BEQ             loc_4548F2
4548AC:  LDR.W           R3, [R8,#0x14]
4548B0:  LDR             R6, [R0,#0x14]
4548B2:  CMP             R3, #0
4548B4:  VLDR            S2, =120.0
4548B8:  IT NE
4548BA:  ADDNE.W         R4, R3, #0x30 ; '0'
4548BE:  ADD.W           R3, R6, #0x30 ; '0'
4548C2:  CMP             R6, #0
4548C4:  VLDR            D16, [R4]
4548C8:  IT EQ
4548CA:  ADDEQ           R3, R0, #4
4548CC:  VLDR            D17, [R3]
4548D0:  VSUB.F32        D16, D17, D16
4548D4:  VMUL.F32        D0, D16, D16
4548D8:  VADD.F32        S0, S0, S1
4548DC:  VSQRT.F32       S0, S0
4548E0:  VCMPE.F32       S0, S2
4548E4:  VMRS            APSR_nzcv, FPSCR
4548E8:  ITT LT
4548EA:  ORRLT.W         R2, R1, #0x800
4548EE:  STRLT.W         R2, [R8,#0x144]
4548F2:  LDR             R0, =(MI_TRAINCROSSING1_ptr - 0x4548FE)
4548F4:  MOV             R4, R8
4548F6:  LDRSH.W         R3, [R4,#0x26]!
4548FA:  ADD             R0, PC; MI_TRAINCROSSING1_ptr
4548FC:  LDR             R0, [R0]; MI_TRAINCROSSING1
4548FE:  LDRH            R0, [R0]
454900:  CMP             R3, R0
454902:  BNE             loc_45498E
454904:  ANDS.W          R0, R1, #0x800
454908:  AND.W           R0, R2, #0x800
45490C:  BNE             loc_45493E
45490E:  CBZ             R0, loc_45498E
454910:  LDR.W           R0, [R8,#0x178]
454914:  VMOV.F32        S0, #-12.0
454918:  VMOV.F32        S2, #12.0
45491C:  MOVS            R6, #1
45491E:  LDR             R1, [R0,#0x14]
454920:  ADD.W           R2, R1, #0x30 ; '0'
454924:  CMP             R1, #0
454926:  IT EQ
454928:  ADDEQ           R2, R0, #4
45492A:  LDR             R0, =(ThePaths_ptr - 0x454938)
45492C:  VLDR            S4, [R2]
454930:  VLDR            S6, [R2,#4]
454934:  ADD             R0, PC; ThePaths_ptr
454936:  B               loc_454966
454938:  ADD.W           R4, R8, #0x26 ; '&'
45493C:  B               loc_45498E
45493E:  CBNZ            R0, loc_45498E
454940:  LDR.W           R0, [R8,#0x178]
454944:  VMOV.F32        S0, #-12.0
454948:  VMOV.F32        S2, #12.0
45494C:  MOVS            R6, #0
45494E:  LDR             R1, [R0,#0x14]
454950:  ADD.W           R2, R1, #0x30 ; '0'
454954:  CMP             R1, #0
454956:  IT EQ
454958:  ADDEQ           R2, R0, #4
45495A:  LDR             R0, =(ThePaths_ptr - 0x454968)
45495C:  VLDR            S4, [R2]
454960:  VLDR            S6, [R2,#4]
454964:  ADD             R0, PC; ThePaths_ptr
454966:  VADD.F32        S8, S4, S0
45496A:  VADD.F32        S4, S4, S2
45496E:  VADD.F32        S0, S6, S0
454972:  VMOV            R1, S8; float
454976:  VMOV            R2, S4; float
45497A:  VMOV            R3, S0; float
45497E:  VADD.F32        S0, S6, S2
454982:  LDR             R0, [R0]; ThePaths ; this
454984:  STR             R6, [SP,#0x48+var_44]; bool
454986:  VSTR            S0, [SP,#0x48+var_48]
45498A:  BLX             j__ZN9CPathFind20SetLinksBridgeLightsEffffb; CPathFind::SetLinksBridgeLights(float,float,float,float,bool)
45498E:  LDR             R0, =(MI_TRAINCROSSING1_ptr - 0x454998)
454990:  LDRSH.W         R1, [R4]
454994:  ADD             R0, PC; MI_TRAINCROSSING1_ptr
454996:  LDR             R0, [R0]; MI_TRAINCROSSING1
454998:  LDRH            R0, [R0]
45499A:  CMP             R1, R0
45499C:  BEQ.W           loc_454AA0
4549A0:  LDR.W           R5, [R8,#0x14]
4549A4:  LDR             R0, [R5,#0x28]; x
4549A6:  BLX             acosf
4549AA:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4549B4)
4549AC:  VLDR            S0, =0.005
4549B0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4549B2:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4549B4:  VLDR            S2, [R1]
4549B8:  LDRB.W          R1, [R8,#0x145]
4549BC:  VMUL.F32        S0, S2, S0
4549C0:  VMOV            S2, R0
4549C4:  LSLS            R0, R1, #0x1C
4549C6:  BMI             loc_4549E0
4549C8:  VADD.F32        S0, S2, S0
4549CC:  VLDR            S16, =1.3509
4549D0:  VCMPE.F32       S0, S16
4549D4:  VMRS            APSR_nzcv, FPSCR
4549D8:  IT LT
4549DA:  VMOVLT.F32      S16, S0
4549DE:  B               loc_4549F2
4549E0:  VSUB.F32        S16, S2, S0
4549E4:  VCMPE.F32       S16, #0.0
4549E8:  VMRS            APSR_nzcv, FPSCR
4549EC:  IT LE
4549EE:  VLDRLE          S16, =0.0
4549F2:  MOVS            R0, #0
4549F4:  ADD             R1, SP, #0x48+var_30; CVector *
4549F6:  STRD.W          R0, R0, [SP,#0x48+var_30]
4549FA:  MOV.W           R0, #0x3F800000
4549FE:  STR             R0, [SP,#0x48+var_28]
454A00:  ADD             R0, SP, #0x48+var_24; CVector *
454A02:  MOV             R2, R5
454A04:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
454A08:  VMOV            R6, S16
454A0C:  MOV             R0, R6; x
454A0E:  BLX             sinf
454A12:  MOV             R4, R0
454A14:  MOV             R0, R6; x
454A16:  BLX             cosf
454A1A:  VMOV            S6, R0
454A1E:  VLDR            S0, [SP,#0x48+var_24]
454A22:  VLDR            S2, [SP,#0x48+var_20]
454A26:  VMOV            S10, R4
454A2A:  VLDR            S4, [SP,#0x48+var_1C]
454A2E:  VMUL.F32        S0, S6, S0
454A32:  VLDR            S8, =0.0
454A36:  VMUL.F32        S2, S6, S2
454A3A:  VMUL.F32        S4, S6, S4
454A3E:  ADD             R0, SP, #0x48+var_3C; CVector *
454A40:  VMUL.F32        S8, S10, S8
454A44:  ADD             R2, SP, #0x48+var_30
454A46:  MOV             R1, R5; CVector *
454A48:  VADD.F32        S4, S10, S4
454A4C:  VADD.F32        S0, S8, S0
454A50:  VADD.F32        S2, S8, S2
454A54:  VSTR            S0, [SP,#0x48+var_30]
454A58:  VSTR            S2, [SP,#0x48+var_2C]
454A5C:  VSTR            S4, [SP,#0x48+var_28]
454A60:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
454A64:  LDR             R0, [SP,#0x48+var_3C]
454A66:  ADD             R2, SP, #0x48+var_30
454A68:  STR             R0, [R5,#0x20]
454A6A:  ADD.W           R3, R5, #0x10
454A6E:  LDR             R0, [SP,#0x48+var_38]
454A70:  STR             R0, [R5,#0x24]
454A72:  LDR             R0, [SP,#0x48+var_34]
454A74:  STR             R0, [R5,#0x28]
454A76:  LDM             R2, {R0-R2}
454A78:  STM             R3!, {R0-R2}
454A7A:  LDR.W           R0, [R8,#0x18]
454A7E:  CMP             R0, #0
454A80:  BEQ             loc_454A9A
454A82:  LDR             R1, [R0,#4]
454A84:  LDR.W           R0, [R8,#0x14]
454A88:  ADDS            R1, #0x10
454A8A:  CBZ             R0, loc_454A92
454A8C:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
454A90:  B               loc_454A9A
454A92:  ADD.W           R0, R8, #4
454A96:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
454A9A:  MOV             R0, R8; this
454A9C:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
454AA0:  ADD             SP, SP, #0x30 ; '0'
454AA2:  VPOP            {D8}
454AA6:  POP.W           {R8}
454AAA:  POP             {R4-R7,PC}
