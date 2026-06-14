; =========================================================
; Game Engine Function: _ZN10FxSystem_c6UpdateEP8RwCameraf
; Address            : 0x36E840 - 0x36EC2C
; =========================================================

36E840:  PUSH            {R4-R7,LR}
36E842:  ADD             R7, SP, #0xC
36E844:  PUSH.W          {R8-R10}
36E848:  VPUSH           {D8-D10}
36E84C:  SUB             SP, SP, #0x20
36E84E:  MOV             R4, R0
36E850:  MOV             R9, R2
36E852:  LDRB.W          R0, [R4,#0x55]
36E856:  MOV             R5, R1
36E858:  CMP             R0, #3
36E85A:  BEQ             loc_36E868
36E85C:  CMP             R0, #2
36E85E:  BNE             loc_36E86C
36E860:  MOVS            R0, #3
36E862:  STRB.W          R0, [R4,#0x55]
36E866:  B               loc_36EC1E
36E868:  MOVS            R0, #1
36E86A:  B               loc_36EC20
36E86C:  LDR.W           R0, =(g_fxMan_ptr - 0x36E874)
36E870:  ADD             R0, PC; g_fxMan_ptr
36E872:  LDR             R0, [R0]; g_fxMan ; this
36E874:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
36E878:  ADD.W           R6, R4, #0x14
36E87C:  MOV             R8, R0
36E87E:  MOV             R0, R6
36E880:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E884:  LDR             R0, [R4,#0xC]
36E886:  CBZ             R0, loc_36E898
36E888:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E88C:  LDR             R2, [R4,#0xC]
36E88E:  MOV             R0, R8
36E890:  MOV             R1, R6
36E892:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
36E896:  B               loc_36E8CC
36E898:  MOV             R0, R6
36E89A:  ADD.W           R1, R6, #0x20 ; ' '
36E89E:  VLD1.32         {D16-D17}, [R0]!
36E8A2:  VLD1.32         {D20-D21}, [R0]
36E8A6:  ADD.W           R0, R6, #0x30 ; '0'
36E8AA:  VLD1.32         {D22-D23}, [R0]
36E8AE:  ADD.W           R0, R8, #0x30 ; '0'
36E8B2:  VLD1.32         {D18-D19}, [R1]
36E8B6:  VST1.32         {D22-D23}, [R0]
36E8BA:  ADD.W           R0, R8, #0x20 ; ' '
36E8BE:  VST1.32         {D18-D19}, [R0]
36E8C2:  MOV             R0, R8
36E8C4:  VST1.32         {D16-D17}, [R0]!
36E8C8:  VST1.32         {D20-D21}, [R0]
36E8CC:  MOV             R0, R8
36E8CE:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E8D2:  LDR             R0, =(g_fxMan_ptr - 0x36E8DE)
36E8D4:  MOV             R1, R8
36E8D6:  VLDR            S16, [R4,#0x5C]
36E8DA:  ADD             R0, PC; g_fxMan_ptr
36E8DC:  LDR             R5, [R5,#4]
36E8DE:  LDR             R0, [R0]; g_fxMan
36E8E0:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
36E8E4:  VLDR            S0, [R8,#0x30]
36E8E8:  MOV             R0, SP
36E8EA:  VLDR            S6, [R5,#0x40]
36E8EE:  VLDR            S2, [R8,#0x34]
36E8F2:  VSUB.F32        S0, S6, S0
36E8F6:  VLDR            S8, [R5,#0x44]
36E8FA:  VLDR            S4, [R8,#0x38]
36E8FE:  VLDR            S10, [R5,#0x48]
36E902:  VSTR            S0, [SP,#0x50+var_50]
36E906:  VSUB.F32        S0, S8, S2
36E90A:  VSTR            S0, [SP,#0x50+var_4C]
36E90E:  VSUB.F32        S0, S10, S4
36E912:  VSTR            S0, [SP,#0x50+var_48]
36E916:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
36E91A:  LDR             R1, [R4,#8]
36E91C:  STR             R0, [R4,#0x5C]
36E91E:  VLDR            S20, =0.0039062
36E922:  LDRH            R2, [R1,#0x18]
36E924:  VMOV            S0, R2
36E928:  VCVT.F32.U32    S0, S0
36E92C:  LDRB            R1, [R1,#0x1A]
36E92E:  CMP             R1, #0
36E930:  VMUL.F32        S18, S0, S20
36E934:  BEQ             loc_36E964
36E936:  VMOV            S0, R0
36E93A:  VCMPE.F32       S0, S18
36E93E:  VMRS            APSR_nzcv, FPSCR
36E942:  BGE             loc_36E972
36E944:  MOVS            R0, #0
36E946:  ADD             R1, SP, #0x50+var_44; FxSphere_c *
36E948:  STR             R0, [SP,#0x50+var_34]
36E94A:  MOV             R0, R4; this
36E94C:  BLX             j__ZN10FxSystem_c20GetBoundingSphereWldEP10FxSphere_c; FxSystem_c::GetBoundingSphereWld(FxSphere_c *)
36E950:  CBZ             R0, loc_36E964
36E952:  LDR             R0, =(g_fxMan_ptr - 0x36E958)
36E954:  ADD             R0, PC; g_fxMan_ptr
36E956:  LDR             R0, [R0]; g_fxMan ; this
36E958:  BLX             j__ZN11FxManager_c14GetFrustumInfoEv; FxManager_c::GetFrustumInfo(void)
36E95C:  ADD             R1, SP, #0x50+var_44; FxSphere_c *
36E95E:  BLX             j__ZN15FxFrustumInfo_c11IsCollisionEP10FxSphere_c; FxFrustumInfo_c::IsCollision(FxSphere_c *)
36E962:  CBZ             R0, loc_36E972
36E964:  MOV             R10, R4
36E966:  LDRB.W          R0, [R10,#0x54]!
36E96A:  CMP             R0, #0
36E96C:  BEQ             loc_36EA36
36E96E:  MOVS            R5, #0
36E970:  B               loc_36E974
36E972:  MOVS            R5, #1
36E974:  MOV             R10, R4
36E976:  LDRB.W          R0, [R10,#0x54]!
36E97A:  CMP             R0, #1
36E97C:  BNE.W           loc_36EBFC
36E980:  VCMPE.F32       S16, S18
36E984:  VMRS            APSR_nzcv, FPSCR
36E988:  BLT.W           loc_36EBFC
36E98C:  VLDR            S0, [R4,#0x5C]
36E990:  VCMPE.F32       S0, S18
36E994:  VMRS            APSR_nzcv, FPSCR
36E998:  BGE.W           loc_36EBFC
36E99C:  LDR             R0, [R4,#8]
36E99E:  LDRB            R1, [R0,#0x1A]
36E9A0:  CMP             R1, #3
36E9A2:  BNE.W           loc_36EBFC
36E9A6:  MOV.W           R9, #0
36E9AA:  STR.W           R9, [R4,#0x58]
36E9AE:  LDRSB.W         R1, [R0,#0x1B]
36E9B2:  CMP             R1, #1
36E9B4:  BLT             loc_36E9D0
36E9B6:  MOVS            R6, #0
36E9B8:  LDR             R0, [R4,#0x7C]
36E9BA:  LDR.W           R0, [R0,R6,LSL#2]
36E9BE:  LDR             R1, [R0]
36E9C0:  LDR             R1, [R1,#0x10]
36E9C2:  BLX             R1
36E9C4:  LDR             R0, [R4,#8]
36E9C6:  ADDS            R6, #1
36E9C8:  LDRSB.W         R1, [R0,#0x1B]
36E9CC:  CMP             R6, R1
36E9CE:  BLT             loc_36E9B8
36E9D0:  STRH.W          R9, [R4,#0x54]
36E9D4:  VLDR            S16, [R0,#0x10]
36E9D8:  BLX             rand
36E9DC:  MOVW            R1, #0x8BAD
36E9E0:  VLDR            S2, =0.0001
36E9E4:  MOVT            R1, #0x68DB
36E9E8:  VLDR            S6, =0.0
36E9EC:  SMMUL.W         R1, R0, R1
36E9F0:  ASRS            R2, R1, #0xC
36E9F2:  ADD.W           R1, R2, R1,LSR#31
36E9F6:  MOVW            R2, #0x2710
36E9FA:  MLS.W           R0, R1, R2, R0
36E9FE:  VMOV            S0, R0
36EA02:  VCVT.F32.S32    S0, S0
36EA06:  LDR             R0, [R4,#8]
36EA08:  VLDR            S4, [R0,#0x14]
36EA0C:  VMUL.F32        S0, S0, S2
36EA10:  VLDR            S2, [R0,#0x10]
36EA14:  LDRB.W          R0, [R4,#0x66]
36EA18:  VSUB.F32        S2, S4, S2
36EA1C:  AND.W           R0, R0, #0xE7
36EA20:  STRB.W          R0, [R4,#0x66]
36EA24:  VADD.F32        S0, S0, S6
36EA28:  VMUL.F32        S0, S0, S2
36EA2C:  VADD.F32        S0, S16, S0
36EA30:  VSTR            S0, [R4,#0x68]
36EA34:  B               loc_36EBFC
36EA36:  LDRH.W          R0, [R4,#0x64]
36EA3A:  VMOV            S0, R9
36EA3E:  VLDR            S4, =1000.0
36EA42:  VMOV            S2, R0
36EA46:  VCVT.F32.U32    S2, S2
36EA4A:  LDRB.W          R0, [R4,#0x56]
36EA4E:  CMP             R0, #0
36EA50:  VDIV.F32        S2, S2, S4
36EA54:  VMUL.F32        S16, S2, S0
36EA58:  BEQ             loc_36EA6C
36EA5A:  LDRH.W          R0, [R4,#0x60]
36EA5E:  VMOV            S0, R0
36EA62:  VCVT.F32.U32    S0, S0
36EA66:  VMUL.F32        S0, S0, S20
36EA6A:  B               loc_36EA74
36EA6C:  VLDR            S0, [R4,#0x58]
36EA70:  VADD.F32        S0, S16, S0
36EA74:  VSTR            S0, [R4,#0x58]
36EA78:  LDR             R0, [R4,#8]
36EA7A:  LDRB            R1, [R0,#0x1A]
36EA7C:  CMP             R1, #2
36EA7E:  BNE             loc_36EB2A
36EA80:  VLDR            S2, [R0,#0x10]
36EA84:  VCMPE.F32       S2, #0.0
36EA88:  VMRS            APSR_nzcv, FPSCR
36EA8C:  BLE             loc_36EB2A
36EA8E:  VLDR            S2, [R0,#0xC]
36EA92:  VCMPE.F32       S0, S2
36EA96:  VMRS            APSR_nzcv, FPSCR
36EA9A:  ITTTT GT
36EA9C:  LDRBGT.W        R1, [R4,#0x66]
36EAA0:  ORRGT.W         R1, R1, #8
36EAA4:  STRBGT.W        R1, [R4,#0x66]
36EAA8:  VLDRGT          S2, [R0,#0xC]
36EAAC:  VLDR            S4, [R4,#0x68]
36EAB0:  VADD.F32        S2, S2, S4
36EAB4:  VCMPE.F32       S0, S2
36EAB8:  VMRS            APSR_nzcv, FPSCR
36EABC:  BLE.W           def_36EB3C; jumptable 0036EB3C default case
36EAC0:  VSUB.F32        S0, S0, S2
36EAC4:  VSTR            S0, [R4,#0x58]
36EAC8:  VLDR            S18, [R0,#0x10]
36EACC:  BLX             rand
36EAD0:  MOVW            R1, #0x8BAD
36EAD4:  VLDR            S2, =0.0001
36EAD8:  MOVT            R1, #0x68DB
36EADC:  VLDR            S6, =0.0
36EAE0:  SMMUL.W         R1, R0, R1
36EAE4:  ASRS            R2, R1, #0xC
36EAE6:  ADD.W           R1, R2, R1,LSR#31
36EAEA:  MOVW            R2, #0x2710
36EAEE:  MLS.W           R0, R1, R2, R0
36EAF2:  VMOV            S0, R0
36EAF6:  VCVT.F32.S32    S0, S0
36EAFA:  LDR             R0, [R4,#8]
36EAFC:  LDRB.W          R1, [R4,#0x66]
36EB00:  VLDR            S4, [R0,#0x14]
36EB04:  AND.W           R1, R1, #0xF7
36EB08:  VMUL.F32        S0, S0, S2
36EB0C:  VLDR            S2, [R0,#0x10]
36EB10:  STRB.W          R1, [R4,#0x66]
36EB14:  VSUB.F32        S2, S4, S2
36EB18:  VADD.F32        S0, S0, S6
36EB1C:  VMUL.F32        S0, S0, S2
36EB20:  VADD.F32        S0, S18, S0
36EB24:  VSTR            S0, [R4,#0x68]
36EB28:  B               def_36EB3C; jumptable 0036EB3C default case
36EB2A:  VLDR            S2, [R0,#0xC]
36EB2E:  VCMPE.F32       S0, S2
36EB32:  VMRS            APSR_nzcv, FPSCR
36EB36:  BLE             def_36EB3C; jumptable 0036EB3C default case
36EB38:  CMP             R1, #3; switch 4 cases
36EB3A:  BHI             def_36EB3C; jumptable 0036EB3C default case
36EB3C:  TBB.W           [PC,R1]; switch jump
36EB40:  DCB 2; jump table for switch statement
36EB41:  DCB 0x20
36EB42:  DCB 0x23
36EB43:  DCB 0x28
36EB44:  MOVS            R1, #1; jumptable 0036EB3C case 0
36EB46:  STRB.W          R1, [R4,#0x54]
36EB4A:  MOVS            R1, #0
36EB4C:  STR             R1, [R4,#0x58]
36EB4E:  LDRSB.W         R1, [R0,#0x1B]
36EB52:  LDRB.W          R5, [R4,#0x55]
36EB56:  CMP             R1, #1
36EB58:  BLT             loc_36EB74
36EB5A:  MOVS            R6, #0
36EB5C:  LDR             R0, [R4,#0x7C]
36EB5E:  LDR.W           R0, [R0,R6,LSL#2]
36EB62:  LDR             R1, [R0]
36EB64:  LDR             R1, [R1,#0x10]
36EB66:  BLX             R1
36EB68:  LDR             R0, [R4,#8]
36EB6A:  ADDS            R6, #1
36EB6C:  LDRSB.W         R1, [R0,#0x1B]
36EB70:  CMP             R6, R1
36EB72:  BLT             loc_36EB5C
36EB74:  CMP             R5, #1
36EB76:  ITT EQ
36EB78:  MOVEQ           R1, #2
36EB7A:  STRBEQ.W        R1, [R4,#0x55]
36EB7E:  B               def_36EB3C; jumptable 0036EB3C default case
36EB80:  VSTR            S2, [R4,#0x58]; jumptable 0036EB3C case 1
36EB84:  B               def_36EB3C; jumptable 0036EB3C default case
36EB86:  VSUB.F32        S0, S0, S2; jumptable 0036EB3C case 2
36EB8A:  VSTR            S0, [R4,#0x58]
36EB8E:  B               def_36EB3C; jumptable 0036EB3C default case
36EB90:  MOVS            R1, #0; jumptable 0036EB3C case 3
36EB92:  STR             R1, [R4,#0x58]
36EB94:  MOVS            R1, #1
36EB96:  STRB.W          R1, [R4,#0x54]
36EB9A:  LDRSB.W         R1, [R0,#0x1B]
36EB9E:  CMP             R1, #1
36EBA0:  BLT             def_36EB3C; jumptable 0036EB3C default case
36EBA2:  MOVS            R5, #0
36EBA4:  LDR             R0, [R4,#0x7C]
36EBA6:  LDR.W           R0, [R0,R5,LSL#2]
36EBAA:  LDR             R1, [R0]
36EBAC:  LDR             R1, [R1,#0x10]
36EBAE:  BLX             R1
36EBB0:  LDR             R0, [R4,#8]
36EBB2:  ADDS            R5, #1
36EBB4:  LDRSB.W         R1, [R0,#0x1B]
36EBB8:  CMP             R5, R1
36EBBA:  BLT             loc_36EBA4
36EBBC:  VMOV.F32        S0, #0.25; jumptable 0036EB3C default case
36EBC0:  LDRB.W          R1, [R4,#0x66]
36EBC4:  LSLS            R1, R1, #0x1B
36EBC6:  VADD.F32        S0, S16, S0
36EBCA:  IT PL
36EBCC:  VMOVPL.F32      S0, S16
36EBD0:  LDRSB.W         R0, [R0,#0x1B]
36EBD4:  CMP             R0, #1
36EBD6:  BLT             loc_36EBFA
36EBD8:  VMOV            R5, S0
36EBDC:  MOVS            R6, #0
36EBDE:  LDR             R0, [R4,#0x7C]
36EBE0:  LDR             R1, [R4,#0x58]
36EBE2:  LDR.W           R0, [R0,R6,LSL#2]
36EBE6:  LDR             R2, [R0]
36EBE8:  LDR             R3, [R2,#0xC]
36EBEA:  MOV             R2, R5
36EBEC:  BLX             R3
36EBEE:  LDR             R0, [R4,#8]
36EBF0:  ADDS            R6, #1
36EBF2:  LDRSB.W         R0, [R0,#0x1B]
36EBF6:  CMP             R6, R0
36EBF8:  BLT             loc_36EBDE
36EBFA:  MOVS            R5, #0
36EBFC:  LDRB.W          R0, [R4,#0x66]
36EC00:  AND.W           R0, R0, #0xEF
36EC04:  ORR.W           R0, R0, R5,LSL#4
36EC08:  STRB.W          R0, [R4,#0x66]
36EC0C:  LDRB.W          R0, [R10]
36EC10:  CBNZ            R0, loc_36EC1E
36EC12:  ADD.W           R3, R8, #0x30 ; '0'
36EC16:  MOV             R0, R4
36EC18:  LDM             R3, {R1-R3}
36EC1A:  BLX             j__ZN10FxSystem_c9DoFxAudioE7CVector; FxSystem_c::DoFxAudio(CVector)
36EC1E:  MOVS            R0, #0
36EC20:  ADD             SP, SP, #0x20 ; ' '
36EC22:  VPOP            {D8-D10}
36EC26:  POP.W           {R8-R10}
36EC2A:  POP             {R4-R7,PC}
