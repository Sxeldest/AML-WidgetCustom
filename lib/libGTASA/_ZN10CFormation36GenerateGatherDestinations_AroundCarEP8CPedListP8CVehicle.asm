; =========================================================
; Game Engine Function: _ZN10CFormation36GenerateGatherDestinations_AroundCarEP8CPedListP8CVehicle
; Address            : 0x5488C4 - 0x548AD4
; =========================================================

5488C4:  PUSH            {R4-R7,LR}
5488C6:  ADD             R7, SP, #0xC
5488C8:  PUSH.W          {R11}
5488CC:  VPUSH           {D8-D10}
5488D0:  SUB             SP, SP, #0x20
5488D2:  MOV             R5, R0
5488D4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5488DC)
5488D6:  MOV             R4, R1
5488D8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5488DA:  LDRSH.W         R1, [R4,#0x26]
5488DE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5488E0:  LDR.W           R0, [R0,R1,LSL#2]
5488E4:  LDR             R0, [R0,#0x2C]
5488E6:  VLDR            S16, [R0,#4]
5488EA:  VLDR            S18, [R0,#0xC]
5488EE:  VLDR            S20, [R0,#0x10]
5488F2:  LDR             R0, [R4,#0x14]
5488F4:  VLDR            D16, [R0]
5488F8:  LDR             R0, [R0,#8]
5488FA:  STR             R0, [SP,#0x48+var_30]
5488FC:  ADD             R0, SP, #0x48+var_38; this
5488FE:  VSTR            D16, [SP,#0x48+var_38]
548902:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
548906:  LDR             R0, [R4,#0x14]
548908:  VLDR            D16, [R0,#0x10]
54890C:  LDR             R0, [R0,#0x18]
54890E:  STR             R0, [SP,#0x48+var_40]
548910:  MOV             R0, SP; this
548912:  VSTR            D16, [SP,#0x48+var_48]
548916:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
54891A:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548928)
54891C:  VMOV.F32        S0, #1.5
548920:  VMOV.I32        Q8, #0
548924:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548926:  LDR             R0, [R0]; CFormation::m_Destinations ...
548928:  ADD.W           R1, R0, #0x124
54892C:  VADD.F32        S2, S18, S0
548930:  VST1.32         {D16-D17}, [R1]
548934:  MOVS            R1, #0
548936:  VSUB.F32        S0, S20, S16
54893A:  STRD.W          R1, R1, [R0,#(dword_9FFA48 - 0x9FF914)]
54893E:  STR             R1, [R0]; CFormation::m_Destinations
548940:  LDR             R0, [R5]
548942:  CMP             R0, #2
548944:  ADD.W           R2, R0, R0,LSR#31
548948:  SUB.W           R12, R0, R2,ASR#1
54894C:  BLT             loc_548A0E
54894E:  MOV.W           LR, R2,ASR#1
548952:  VLDR            S14, [SP,#0x48+var_38]
548956:  VLDR            S12, [SP,#0x48+var_38+4]
54895A:  VMOV            S4, LR
54895E:  VLDR            S6, [SP,#0x48+var_30]
548962:  ADDS            R3, R0, #1
548964:  VLDR            S10, [SP,#0x48+var_48]
548968:  VMUL.F32        S12, S2, S12
54896C:  VLDR            S8, [SP,#0x48+var_48+4]
548970:  VCVT.F32.S32    S4, S4
548974:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548988)
548976:  VMUL.F32        S6, S2, S6
54897A:  VMUL.F32        S8, S0, S8
54897E:  MOVS            R1, #0
548980:  VMUL.F32        S10, S0, S10
548984:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548986:  VMUL.F32        S14, S2, S14
54898A:  VMOV.F32        S1, #0.5
54898E:  LDR             R5, [R0]; CFormation::m_Destinations ...
548990:  MOVS            R0, #0
548992:  LDR             R2, [R4,#0x14]
548994:  ADD.W           R6, R2, #0x30 ; '0'
548998:  CMP             R2, #0
54899A:  IT EQ
54899C:  ADDEQ           R6, R4, #4
54899E:  CMP             R3, #3
5489A0:  VLDR            S7, [R6]
5489A4:  VLDR            S5, [R6,#4]
5489A8:  VLDR            S3, [R6,#8]
5489AC:  VSUB.F32        S7, S7, S14
5489B0:  VSUB.F32        S5, S5, S12
5489B4:  VSUB.F32        S3, S3, S6
5489B8:  BCC             loc_5489EA
5489BA:  VMOV            S9, R0
5489BE:  VCVT.F32.S32    S9, S9
5489C2:  VLDR            S11, [SP,#0x48+var_40]
5489C6:  VMUL.F32        S11, S0, S11
5489CA:  VDIV.F32        S9, S9, S4
5489CE:  VSUB.F32        S9, S1, S9
5489D2:  VMUL.F32        S11, S9, S11
5489D6:  VMUL.F32        S13, S9, S8
5489DA:  VMUL.F32        S9, S9, S10
5489DE:  VADD.F32        S3, S3, S11
5489E2:  VADD.F32        S5, S5, S13
5489E6:  VADD.F32        S7, S7, S9
5489EA:  CMP             R1, #0x17
5489EC:  BGT             loc_548A08
5489EE:  ADDS            R2, R1, #1
5489F0:  ADD.W           R1, R1, R1,LSL#1
5489F4:  STR             R2, [R5]; CFormation::m_Destinations
5489F6:  ADD.W           R1, R5, R1,LSL#2
5489FA:  VSTR            S7, [R1,#4]
5489FE:  VSTR            S5, [R1,#8]
548A02:  VSTR            S3, [R1,#0xC]
548A06:  MOV             R1, R2
548A08:  ADDS            R0, #1
548A0A:  CMP             LR, R0
548A0C:  BNE             loc_548992
548A0E:  CMP.W           R12, #1
548A12:  BLT             loc_548AC8
548A14:  VLDR            S12, [SP,#0x48+var_38+4]
548A18:  VMOV            S4, R12
548A1C:  VLDR            S6, [SP,#0x48+var_30]
548A20:  MOVS            R0, #0
548A22:  VLDR            S10, [SP,#0x48+var_48]
548A26:  VMUL.F32        S12, S2, S12
548A2A:  VLDR            S8, [SP,#0x48+var_48+4]
548A2E:  VMUL.F32        S6, S2, S6
548A32:  VLDR            S14, [SP,#0x48+var_38]
548A36:  VCVT.F32.S32    S4, S4
548A3A:  LDR             R2, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548A4C)
548A3C:  VMUL.F32        S8, S0, S8
548A40:  VMUL.F32        S2, S2, S14
548A44:  VMUL.F32        S10, S0, S10
548A48:  ADD             R2, PC; _ZN10CFormation14m_DestinationsE_ptr
548A4A:  VMOV.F32        S14, #0.5
548A4E:  LDR             R2, [R2]; CFormation::m_Destinations ...
548A50:  VMOV            S1, R0
548A54:  VCVT.F32.S32    S1, S1
548A58:  LDR             R6, [R4,#0x14]
548A5A:  ADD.W           R3, R6, #0x30 ; '0'
548A5E:  CMP             R6, #0
548A60:  IT EQ
548A62:  ADDEQ           R3, R4, #4
548A64:  CMP             R1, #0x17
548A66:  BGT             loc_548AC2
548A68:  VDIV.F32        S1, S1, S4
548A6C:  VLDR            S3, [SP,#0x48+var_40]
548A70:  VSUB.F32        S1, S14, S1
548A74:  VLDR            S5, [R3]
548A78:  VMUL.F32        S3, S0, S3
548A7C:  VLDR            S7, [R3,#4]
548A80:  VLDR            S9, [R3,#8]
548A84:  VADD.F32        S5, S5, S2
548A88:  VADD.F32        S7, S7, S12
548A8C:  ADDS            R3, R1, #1
548A8E:  VADD.F32        S9, S9, S6
548A92:  ADD.W           R1, R1, R1,LSL#1
548A96:  STR             R3, [R2]; CFormation::m_Destinations
548A98:  VMUL.F32        S13, S1, S10
548A9C:  ADD.W           R1, R2, R1,LSL#2
548AA0:  VMUL.F32        S11, S1, S8
548AA4:  VMUL.F32        S1, S1, S3
548AA8:  VADD.F32        S5, S5, S13
548AAC:  VADD.F32        S3, S7, S11
548AB0:  VADD.F32        S1, S9, S1
548AB4:  VSTR            S5, [R1,#4]
548AB8:  VSTR            S3, [R1,#8]
548ABC:  VSTR            S1, [R1,#0xC]
548AC0:  MOV             R1, R3
548AC2:  ADDS            R0, #1
548AC4:  CMP             R12, R0
548AC6:  BNE             loc_548A50
548AC8:  ADD             SP, SP, #0x20 ; ' '
548ACA:  VPOP            {D8-D10}
548ACE:  POP.W           {R11}
548AD2:  POP             {R4-R7,PC}
