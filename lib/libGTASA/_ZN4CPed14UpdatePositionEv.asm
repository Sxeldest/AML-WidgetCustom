; =========================================================
; Game Engine Function: _ZN4CPed14UpdatePositionEv
; Address            : 0x4A1928 - 0x4A1D28
; =========================================================

4A1928:  PUSH            {R4,R5,R7,LR}
4A192A:  ADD             R7, SP, #8
4A192C:  SUB             SP, SP, #0x20
4A192E:  MOV             R4, R0
4A1930:  LDRB.W          R0, [R4,#0x484]
4A1934:  LSLS            R0, R0, #0x1F
4A1936:  BNE             loc_4A1966
4A1938:  LDR.W           R0, [R4,#0x440]; this
4A193C:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
4A1940:  CBNZ            R0, loc_4A194C
4A1942:  LDR.W           R0, [R4,#0x440]; this
4A1946:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
4A194A:  CBZ             R0, loc_4A198E
4A194C:  ADDW            R1, R4, #0x55C
4A1950:  LDR             R0, [R4,#0x14]; this
4A1952:  VLDR            S0, [R1]
4A1956:  CBZ             R0, loc_4A1986
4A1958:  VMOV            R1, S0; x
4A195C:  ADD             SP, SP, #0x20 ; ' '
4A195E:  POP.W           {R4,R5,R7,LR}
4A1962:  B.W             j_j__ZN7CMatrix14SetRotateZOnlyEf; j_CMatrix::SetRotateZOnly(float)
4A1966:  LDR.W           R0, [R4,#0x100]
4A196A:  CBZ             R0, loc_4A1970
4A196C:  ADD             SP, SP, #0x20 ; ' '
4A196E:  POP             {R4,R5,R7,PC}
4A1970:  ADDW            R5, R4, #0x55C
4A1974:  LDR             R0, [R4,#0x14]; this
4A1976:  VLDR            S0, [R5]
4A197A:  CBZ             R0, loc_4A19A4
4A197C:  VMOV            R1, S0; x
4A1980:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
4A1984:  B               loc_4A19A8
4A1986:  VSTR            S0, [R4,#0x10]
4A198A:  ADD             SP, SP, #0x20 ; ' '
4A198C:  POP             {R4,R5,R7,PC}
4A198E:  LDR.W           R0, [R4,#0x440]
4A1992:  LDR             R0, [R0,#0x10]
4A1994:  CMP             R0, #0
4A1996:  BEQ             loc_4A196C
4A1998:  LDR             R1, [R0]
4A199A:  LDR             R1, [R1,#0x14]
4A199C:  BLX             R1
4A199E:  CMP             R0, #0x6C ; 'l'
4A19A0:  BEQ             loc_4A194C
4A19A2:  B               loc_4A196C
4A19A4:  VSTR            S0, [R4,#0x10]
4A19A8:  LDR.W           R1, [R4,#0x56C]
4A19AC:  CMP             R1, #0
4A19AE:  BEQ             loc_4A1A4E
4A19B0:  LDR.W           R0, [R4,#0x59C]
4A19B4:  CMP             R0, #2
4A19B6:  BCC             loc_4A19CE
4A19B8:  LDRB.W          R0, [R1,#0x3A]
4A19BC:  AND.W           R0, R0, #7
4A19C0:  CMP             R0, #2
4A19C2:  ITT EQ
4A19C4:  LDREQ.W         R0, [R1,#0x5A0]
4A19C8:  CMPEQ           R0, #5
4A19CA:  BEQ.W           loc_4A1AE0
4A19CE:  LDR.W           R2, [R4,#0x570]
4A19D2:  LDR.W           R3, [R4,#0x574]
4A19D6:  LDR.W           R0, [R4,#0x578]
4A19DA:  STR             R0, [SP,#0x28+var_28]
4A19DC:  ADD             R0, SP, #0x28+var_18
4A19DE:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
4A19E2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A19EC)
4A19E4:  VLDR            S6, [SP,#0x28+var_18]
4A19E8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A19EA:  VLDR            S8, [SP,#0x28+var_18+4]
4A19EE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4A19F0:  VLDR            S2, [R0]
4A19F4:  LDR.W           R0, [R4,#0x56C]
4A19F8:  VLDR            S0, [R0,#0x5C]
4A19FC:  ADDW            R1, R4, #0x554
4A1A00:  VLDR            S4, [R5]
4A1A04:  VMUL.F32        S0, S0, S2
4A1A08:  VLDR            S12, [R1]
4A1A0C:  ADD.W           R1, R4, #0x558
4A1A10:  VADD.F32        S6, S6, S12
4A1A14:  VLDR            S14, [R1]
4A1A18:  VADD.F32        S8, S8, S14
4A1A1C:  VADD.F32        S10, S4, S0
4A1A20:  VLDR            S4, [R4,#0x48]
4A1A24:  VLDR            S0, [R4,#0x4C]
4A1A28:  VSUB.F32        S6, S6, S4
4A1A2C:  VSTR            S10, [R5]
4A1A30:  VLDR            S10, [R0,#0x5C]
4A1A34:  ADD.W           R0, R4, #0x560
4A1A38:  VMUL.F32        S2, S10, S2
4A1A3C:  VLDR            S10, [R0]
4A1A40:  VADD.F32        S10, S10, S2
4A1A44:  VSUB.F32        S2, S8, S0
4A1A48:  VSTR            S10, [R0]
4A1A4C:  B               loc_4A1C38
4A1A4E:  LDR             R0, =(g_surfaceInfos_ptr - 0x4A1A58)
4A1A50:  LDRB.W          R1, [R4,#0xBE]; unsigned int
4A1A54:  ADD             R0, PC; g_surfaceInfos_ptr
4A1A56:  LDR             R0, [R0]; g_surfaceInfos ; this
4A1A58:  BLX             j__ZN14SurfaceInfos_c12IsSteepSlopeEj; SurfaceInfos_c::IsSteepSlope(uint)
4A1A5C:  CBZ             R0, loc_4A1ABE
4A1A5E:  ADD.W           R0, R4, #0x580
4A1A62:  MOVS            R1, #0
4A1A64:  VLDR            S4, [R0]
4A1A68:  ADDW            R0, R4, #0x57C
4A1A6C:  VCMP.F32        S4, #0.0
4A1A70:  VLDR            S0, [R0]
4A1A74:  VMRS            APSR_nzcv, FPSCR
4A1A78:  MOV.W           R0, #0
4A1A7C:  VCMP.F32        S0, #0.0
4A1A80:  IT NE
4A1A82:  MOVNE           R1, #1
4A1A84:  VMRS            APSR_nzcv, FPSCR
4A1A88:  IT NE
4A1A8A:  MOVNE           R0, #1
4A1A8C:  ORRS            R0, R1
4A1A8E:  BEQ             loc_4A1ABE
4A1A90:  VMUL.F32        S2, S4, S4
4A1A94:  VMUL.F32        S6, S0, S0
4A1A98:  VADD.F32        S2, S6, S2
4A1A9C:  VCMPE.F32       S2, #0.0
4A1AA0:  VMRS            APSR_nzcv, FPSCR
4A1AA4:  BLE.W           loc_4A1BD2
4A1AA8:  VSQRT.F32       S2, S2
4A1AAC:  VMOV.F32        S6, #1.0
4A1AB0:  VDIV.F32        S2, S6, S2
4A1AB4:  VMUL.F32        S4, S4, S2
4A1AB8:  VMUL.F32        S8, S0, S2
4A1ABC:  B               loc_4A1BD6
4A1ABE:  ADD.W           R0, R4, #0x558
4A1AC2:  VLDR            S4, [R4,#0x48]
4A1AC6:  VLDR            S0, [R4,#0x4C]
4A1ACA:  VLDR            S2, [R0]
4A1ACE:  ADDW            R0, R4, #0x554
4A1AD2:  VLDR            S6, [R0]
4A1AD6:  VSUB.F32        S2, S2, S0
4A1ADA:  VSUB.F32        S6, S6, S4
4A1ADE:  B               loc_4A1C38
4A1AE0:  LDR             R0, [R4,#0x14]
4A1AE2:  VMOV.F32        S0, #-1.0
4A1AE6:  ADD.W           R2, R0, #0x30 ; '0'
4A1AEA:  CMP             R0, #0
4A1AEC:  IT EQ
4A1AEE:  ADDEQ           R2, R4, #4
4A1AF0:  LDR             R0, [R2,#8]
4A1AF2:  STR             R0, [SP,#0x28+var_10]
4A1AF4:  VLDR            S2, [SP,#0x28+var_10]
4A1AF8:  VLDR            D16, [R2]
4A1AFC:  VADD.F32        S0, S2, S0
4A1B00:  VSTR            D16, [SP,#0x28+var_18]
4A1B04:  VSTR            S0, [SP,#0x28+var_10]
4A1B08:  LDR             R0, [R1,#0x14]
4A1B0A:  VLDR            S2, [SP,#0x28+var_18]
4A1B0E:  ADD.W           R2, R0, #0x30 ; '0'
4A1B12:  CMP             R0, #0
4A1B14:  VLDR            S4, [SP,#0x28+var_18+4]
4A1B18:  IT EQ
4A1B1A:  ADDEQ           R2, R1, #4
4A1B1C:  VLDR            S6, [R2]
4A1B20:  ADDS            R1, #0x54 ; 'T'; CVector *
4A1B22:  ADD             R0, SP, #0x28+var_24; CVector *
4A1B24:  VSUB.F32        S2, S2, S6
4A1B28:  VSTR            S2, [SP,#0x28+var_18]
4A1B2C:  VLDR            S2, [R2,#4]
4A1B30:  VSUB.F32        S2, S4, S2
4A1B34:  VSTR            S2, [SP,#0x28+var_18+4]
4A1B38:  VLDR            S2, [R2,#8]
4A1B3C:  ADD             R2, SP, #0x28+var_18
4A1B3E:  VSUB.F32        S0, S0, S2
4A1B42:  VSTR            S0, [SP,#0x28+var_10]
4A1B46:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4A1B4A:  LDR.W           R0, [R4,#0x56C]
4A1B4E:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A1B5C)
4A1B50:  VLDR            S3, [SP,#0x28+var_10]
4A1B54:  VLDR            S2, [R0,#0x54]
4A1B58:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A1B5A:  VLDR            S14, [R0,#0x58]
4A1B5E:  VMUL.F32        S2, S2, S2
4A1B62:  VLDR            S1, [R0,#0x5C]
4A1B66:  VMUL.F32        S14, S14, S14
4A1B6A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4A1B6C:  VMUL.F32        S1, S1, S1
4A1B70:  VLDR            S6, [SP,#0x28+var_1C]
4A1B74:  VLDR            S12, [R0,#0x50]
4A1B78:  VLDR            S0, [SP,#0x28+var_24]
4A1B7C:  VADD.F32        S6, S6, S12
4A1B80:  VLDR            S8, [R0,#0x48]
4A1B84:  VLDR            S4, [SP,#0x28+var_20]
4A1B88:  VLDR            S10, [R0,#0x4C]
4A1B8C:  VADD.F32        S0, S0, S8
4A1B90:  VADD.F32        S2, S2, S14
4A1B94:  VLDR            S14, [SP,#0x28+var_18]
4A1B98:  VADD.F32        S4, S4, S10
4A1B9C:  VADD.F32        S2, S2, S1
4A1BA0:  VLDR            S1, [SP,#0x28+var_18+4]
4A1BA4:  VMUL.F32        S3, S3, S2
4A1BA8:  VMUL.F32        S1, S1, S2
4A1BAC:  VMUL.F32        S14, S14, S2
4A1BB0:  VLDR            S2, [R1]
4A1BB4:  VMUL.F32        S12, S3, S2
4A1BB8:  VMUL.F32        S10, S1, S2
4A1BBC:  VMUL.F32        S14, S14, S2
4A1BC0:  VSUB.F32        S12, S6, S12
4A1BC4:  VSUB.F32        S8, S4, S10
4A1BC8:  VSUB.F32        S6, S0, S14
4A1BCC:  VSTR            S12, [R4,#0x50]
4A1BD0:  B               loc_4A19F8
4A1BD2:  VMOV.F32        S8, #1.0
4A1BD6:  VLDR            S0, =0.02
4A1BDA:  ADD.W           R0, R4, #0x558
4A1BDE:  MOVW            R1, #0x126F
4A1BE2:  VMUL.F32        S2, S4, S0
4A1BE6:  VLDR            S6, [R0]
4A1BEA:  VMUL.F32        S0, S8, S0
4A1BEE:  ADDW            R0, R4, #0x554
4A1BF2:  MOVT            R1, #0xBA83
4A1BF6:  VLDR            S10, [R0]
4A1BFA:  MOVS            R0, #0
4A1BFC:  STRD.W          R0, R0, [R4,#0x48]
4A1C00:  STR             R1, [R4,#0x50]
4A1C02:  VADD.F32        S2, S2, S6
4A1C06:  VADD.F32        S6, S0, S10
4A1C0A:  VMUL.F32        S0, S4, S2
4A1C0E:  VMUL.F32        S10, S8, S6
4A1C12:  VADD.F32        S10, S10, S0
4A1C16:  VLDR            S0, =0.0
4A1C1A:  VCMPE.F32       S10, #0.0
4A1C1E:  VMRS            APSR_nzcv, FPSCR
4A1C22:  BGE             loc_4A1C34
4A1C24:  VMUL.F32        S4, S4, S10
4A1C28:  VMUL.F32        S8, S8, S10
4A1C2C:  VSUB.F32        S2, S2, S4
4A1C30:  VSUB.F32        S6, S6, S8
4A1C34:  VMOV.F32        S4, S0
4A1C38:  LDR.W           R0, [R4,#0x56C]
4A1C3C:  CBZ             R0, loc_4A1C4E
4A1C3E:  LDR.W           R1, [R0,#0x100]
4A1C42:  CBNZ            R1, loc_4A1C4E
4A1C44:  LDR             R1, [R0,#0x44]
4A1C46:  AND.W           R1, R1, #0xC
4A1C4A:  CMP             R1, #4
4A1C4C:  BNE             loc_4A1CA6
4A1C4E:  ADDW            R1, R4, #0x484
4A1C52:  LDRB            R1, [R1,#0xA]
4A1C54:  LSLS            R1, R1, #0x1B
4A1C56:  BPL             loc_4A1C92
4A1C58:  CBNZ            R0, loc_4A1C92
4A1C5A:  VMUL.F32        S8, S2, S2
4A1C5E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A1C68)
4A1C60:  VMUL.F32        S10, S6, S6
4A1C64:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A1C66:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4A1C68:  VLDR            S12, [R0]
4A1C6C:  VADD.F32        S8, S10, S8
4A1C70:  VLDR            S10, =0.01
4A1C74:  VMUL.F32        S10, S12, S10
4A1C78:  VSQRT.F32       S8, S8
4A1C7C:  VCMPE.F32       S8, S10
4A1C80:  VMRS            APSR_nzcv, FPSCR
4A1C84:  BLE             loc_4A1C92
4A1C86:  VDIV.F32        S8, S10, S8
4A1C8A:  VMUL.F32        S2, S2, S8
4A1C8E:  VMUL.F32        S6, S6, S8
4A1C92:  VADD.F32        S0, S2, S0
4A1C96:  VADD.F32        S2, S6, S4
4A1C9A:  VSTR            S2, [R4,#0x48]
4A1C9E:  VSTR            S0, [R4,#0x4C]
4A1CA2:  ADD             SP, SP, #0x20 ; ' '
4A1CA4:  POP             {R4,R5,R7,PC}
4A1CA6:  VMUL.F32        S8, S2, S2
4A1CAA:  LDRB.W          R1, [R0,#0x3A]
4A1CAE:  VMUL.F32        S10, S6, S6
4A1CB2:  AND.W           R1, R1, #7
4A1CB6:  CMP             R1, #2
4A1CB8:  VADD.F32        S8, S10, S8
4A1CBC:  VLDR            S10, =0.01
4A1CC0:  VSQRT.F32       S8, S8
4A1CC4:  BNE             loc_4A1D18
4A1CC6:  LDR.W           R1, [R4,#0x44C]
4A1CCA:  CMP             R1, #0x36 ; '6'
4A1CCC:  BNE             loc_4A1CD4
4A1CCE:  VLDR            S10, =0.002
4A1CD2:  B               loc_4A1D18
4A1CD4:  LDR.W           R1, [R0,#0x5A0]
4A1CD8:  CBZ             R1, loc_4A1D18
4A1CDA:  VMOV.F32        S10, S8
4A1CDE:  CMP             R1, #9
4A1CE0:  BNE             loc_4A1C7C
4A1CE2:  VLDR            S10, [R0,#0x48]
4A1CE6:  VLDR            S12, [R0,#0x4C]
4A1CEA:  VMUL.F32        S10, S10, S10
4A1CEE:  VLDR            S14, [R0,#0x50]
4A1CF2:  VMUL.F32        S12, S12, S12
4A1CF6:  VMUL.F32        S14, S14, S14
4A1CFA:  VADD.F32        S10, S10, S12
4A1CFE:  VLDR            S12, =0.04
4A1D02:  VADD.F32        S10, S10, S14
4A1D06:  VCMPE.F32       S10, S12
4A1D0A:  VMOV.F32        S10, S8
4A1D0E:  VMRS            APSR_nzcv, FPSCR
4A1D12:  BLE             loc_4A1C7C
4A1D14:  VLDR            S10, =0.0002
4A1D18:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A1D1E)
4A1D1A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A1D1C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4A1D1E:  VLDR            S12, [R0]
4A1D22:  VMUL.F32        S10, S10, S12
4A1D26:  B               loc_4A1C7C
