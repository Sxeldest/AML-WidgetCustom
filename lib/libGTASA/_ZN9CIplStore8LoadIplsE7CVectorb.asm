; =========================================================
; Game Engine Function: _ZN9CIplStore8LoadIplsE7CVectorb
; Address            : 0x2818EC - 0x281B06
; =========================================================

2818EC:  PUSH            {R4-R7,LR}
2818EE:  ADD             R7, SP, #0xC
2818F0:  PUSH.W          {R8-R11}
2818F4:  SUB             SP, SP, #0x1C
2818F6:  MOV             R5, R0
2818F8:  LDR             R0, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x281902)
2818FA:  MOV             R6, R1
2818FC:  MOV             R4, R3
2818FE:  ADD             R0, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
281900:  STR             R6, [SP,#0x38+var_24]
281902:  STR             R5, [SP,#0x38+var_28]
281904:  LDR             R0, [R0]; CStreaming::ms_disableStreaming ...
281906:  STR             R2, [SP,#0x38+var_20]
281908:  LDRB            R0, [R0]; CStreaming::ms_disableStreaming
28190A:  CMP             R0, #0
28190C:  BNE.W           loc_281AFE
281910:  MOV.W           R0, #0xFFFFFFFF; int
281914:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
281918:  CBZ             R0, loc_281960
28191A:  CBNZ            R4, loc_281960
28191C:  MOV.W           R0, #0xFFFFFFFF; int
281920:  MOVS            R1, #0; bool
281922:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
281926:  CBZ             R0, loc_281960
281928:  VLDR            S4, =80.0
28192C:  VMOV            S0, R6
281930:  VLDR            S8, [R0,#0x4C]
281934:  VMOV            S2, R5
281938:  VLDR            S6, [R0,#0x48]
28193C:  VMUL.F32        S8, S8, S4
281940:  VLDR            S10, =40.0
281944:  VMUL.F32        S4, S6, S4
281948:  VMIN.F32        D3, D4, D5
28194C:  VMIN.F32        D2, D2, D5
281950:  VADD.F32        S0, S6, S0
281954:  VADD.F32        S2, S4, S2
281958:  VSTR            S0, [SP,#0x38+var_24]
28195C:  VSTR            S2, [SP,#0x38+var_28]
281960:  ADD             R0, SP, #0x38+var_28; this
281962:  MOV.W           R1, #0xFFFFFFFF; CVector *
281966:  STR             R4, [SP,#0x38+var_38]
281968:  BLX             j__ZN9CIplStore15SetIplsRequiredERK7CVectori; CIplStore::SetIplsRequired(CVector const&,int)
28196C:  LDR             R0, =(byte_6DFD9C - 0x281972)
28196E:  ADD             R0, PC; byte_6DFD9C
281970:  LDRB            R0, [R0]
281972:  CMP             R0, #1
281974:  BNE             loc_281986
281976:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x28197C)
281978:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
28197A:  LDR             R1, [R0]; CGame::currArea ...
28197C:  LDR             R0, =(unk_6DFD90 - 0x281984)
28197E:  LDR             R1, [R1]; CVector *
281980:  ADD             R0, PC; unk_6DFD90 ; this
281982:  BLX             j__ZN9CIplStore15SetIplsRequiredERK7CVectori; CIplStore::SetIplsRequired(CVector const&,int)
281986:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x281990)
281988:  MOVS            R6, #0
28198A:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x281992)
28198C:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
28198E:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
281990:  LDR             R4, [R0]; CTheScripts::MissionCleanUp ...
281992:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x28199A)
281994:  LDR             R5, [R1]; CTheScripts::MissionCleanUp ...
281996:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
281998:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x2819A2)
28199A:  LDR.W           R11, [R0]; CPools::ms_pPedPool ...
28199E:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
2819A0:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x2819AA)
2819A2:  LDR.W           R8, [R1]; CTheScripts::MissionCleanUp ...
2819A6:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
2819A8:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
2819AA:  STR             R0, [SP,#0x38+var_34]
2819AC:  LDR             R0, =(_Z27SetIfIplIsRequiredReducedBBRK9CVector2DPv_ptr - 0x2819B2)
2819AE:  ADD             R0, PC; _Z27SetIfIplIsRequiredReducedBBRK9CVector2DPv_ptr
2819B0:  LDR.W           R10, [R0]; SetIfIplIsRequiredReducedBB(CVector2D const&,void *)
2819B4:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2819BA)
2819B6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2819B8:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool ...
2819BC:  LDRB.W          R0, [R4,R6,LSL#3]
2819C0:  CMP             R0, #2
2819C2:  BEQ             loc_281A08
2819C4:  CMP             R0, #1
2819C6:  BNE             loc_281A80
2819C8:  ADD.W           R0, R8, R6,LSL#3
2819CC:  LDR             R1, [R0,#4]
2819CE:  CMP             R1, #0
2819D0:  BLT             loc_281A80
2819D2:  LDR.W           R0, [R9]; CPools::ms_pVehiclePool
2819D6:  LSRS            R2, R1, #8
2819D8:  UXTB            R1, R1
2819DA:  LDR             R3, [R0,#4]
2819DC:  LDRB            R3, [R3,R2]
2819DE:  CMP             R3, R1
2819E0:  BNE             loc_281A80
2819E2:  MOVW            R1, #0xA2C
2819E6:  LDR             R0, [R0]
2819E8:  MLA.W           R1, R2, R1, R0
2819EC:  CBZ             R1, loc_281A4A
2819EE:  LDR.W           R0, [R1,#0x100]
2819F2:  CMP             R0, #0
2819F4:  BNE             loc_281A80
2819F6:  LDRB.W          R0, [R1,#0x3A]
2819FA:  MOV             R2, #0xFFFFFFFE
2819FE:  ADD.W           R0, R2, R0,LSR#3
281A02:  CMP             R0, #3
281A04:  BCC             loc_281A4C
281A06:  B               loc_281A80
281A08:  ADD.W           R0, R5, R6,LSL#3
281A0C:  LDR             R1, [R0,#4]
281A0E:  CMP             R1, #0
281A10:  BLT             loc_281A48
281A12:  LDR.W           R0, [R11]; CPools::ms_pPedPool
281A16:  UXTB            R3, R1
281A18:  LSRS            R1, R1, #8
281A1A:  LDR             R2, [R0,#4]
281A1C:  LDRB            R2, [R2,R1]
281A1E:  CMP             R2, R3
281A20:  BNE             loc_281A42
281A22:  MOVW            R2, #0x7CC
281A26:  LDR             R0, [R0]
281A28:  MLA.W           R1, R1, R2, R0
281A2C:  CBZ             R1, loc_281A42
281A2E:  LDR.W           R0, [R1,#0x100]
281A32:  CBNZ            R0, loc_281A80
281A34:  LDR.W           R0, [R1,#0x44C]
281A38:  BIC.W           R0, R0, #1
281A3C:  CMP             R0, #0x36 ; '6'
281A3E:  BNE             loc_281A4A
281A40:  B               loc_281A80
281A42:  MOVS            R1, #0
281A44:  CBNZ            R1, loc_281A4C
281A46:  B               loc_281A80
281A48:  MOVS            R1, #0
281A4A:  CBZ             R1, loc_281A80
281A4C:  LDRB.W          R0, [R1,#0x45]
281A50:  TST.W           R0, #0x60
281A54:  BNE             loc_281A80
281A56:  LDR             R3, =(dword_6DFE48 - 0x281A60)
281A58:  LDRB.W          R2, [R1,#0x33]
281A5C:  ADD             R3, PC; dword_6DFE48
281A5E:  LDR             R0, [SP,#0x38+var_34]
281A60:  STR             R2, [R3]
281A62:  LDR             R2, [R1,#0x14]
281A64:  LDR             R0, [R0]
281A66:  ADD.W           R3, R2, #0x30 ; '0'
281A6A:  CMP             R2, #0
281A6C:  IT EQ
281A6E:  ADDEQ           R3, R1, #4
281A70:  LDRD.W          R1, R2, [R3]
281A74:  STRD.W          R1, R2, [SP,#0x38+var_30]
281A78:  ADD             R1, SP, #0x38+var_30
281A7A:  MOV             R2, R10
281A7C:  BLX             j__ZN13CQuadTreeNode14ForAllMatchingERK9CVector2DPFvS2_PvE; CQuadTreeNode::ForAllMatching(CVector2D const&,void (*)(CVector2D const&,void *))
281A80:  ADDS            R6, #1
281A82:  CMP             R6, #0x4B ; 'K'
281A84:  BNE             loc_2819BC
281A86:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281A98)
281A88:  MOV.W           R10, #0
281A8C:  MOVW            R9, #0x62A8
281A90:  MOV.W           R8, #1
281A94:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
281A96:  MOVS            R6, #0
281A98:  MOVS            R4, #0
281A9A:  LDR.W           R11, [R0]; CIplStore::ms_pPool ...
281A9E:  LDR.W           R0, [R11]; CIplStore::ms_pPool
281AA2:  LDR             R1, [R0,#4]
281AA4:  ADD             R1, R6
281AA6:  LDRSB.W         R1, [R1,#1]
281AAA:  CMP             R1, #0
281AAC:  BLT             loc_281AEA
281AAE:  LDR             R0, [R0]
281AB0:  ADDS            R5, R0, R4
281AB2:  LDRB.W          R0, [R5,#0x63]
281AB6:  CBNZ            R0, loc_281AEA
281AB8:  LDRB.W          R1, [R5,#0x62]; int
281ABC:  LDRB.W          R0, [R5,#0x61]
281AC0:  CBZ             R1, loc_281AD4
281AC2:  CBNZ            R0, loc_281ACE
281AC4:  ADD.W           R0, R6, R9; this
281AC8:  MOVS            R1, #0x18; int
281ACA:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
281ACE:  STRB.W          R10, [R5,#0x62]
281AD2:  B               loc_281AEA
281AD4:  CBZ             R0, loc_281AEA
281AD6:  ADD.W           R0, R6, R9; this
281ADA:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
281ADE:  LDRB.W          R0, [R5,#0x64]
281AE2:  CMP             R0, #0
281AE4:  IT NE
281AE6:  STRBNE.W        R8, [R5,#0x63]
281AEA:  ADDS            R6, #1
281AEC:  B.W             loc_4C6D08
281AF0:  BNE             loc_281A9E
281AF2:  LDR             R0, [SP,#0x38+var_38]
281AF4:  CBNZ            R0, loc_281AFE
281AF6:  LDR             R0, =(byte_6DFD9C - 0x281AFE)
281AF8:  MOVS            R1, #0
281AFA:  ADD             R0, PC; byte_6DFD9C
281AFC:  STRB            R1, [R0]
281AFE:  ADD             SP, SP, #0x1C
281B00:  POP.W           {R8-R11}
281B04:  POP             {R4-R7,PC}
