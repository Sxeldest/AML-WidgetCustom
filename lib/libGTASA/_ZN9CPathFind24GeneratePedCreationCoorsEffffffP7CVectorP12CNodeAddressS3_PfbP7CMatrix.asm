; =========================================================
; Game Engine Function: _ZN9CPathFind24GeneratePedCreationCoorsEffffffP7CVectorP12CNodeAddressS3_PfbP7CMatrix
; Address            : 0x316880 - 0x316DF8
; =========================================================

316880:  PUSH            {R4-R7,LR}
316882:  ADD             R7, SP, #0xC
316884:  PUSH.W          {R8-R11}
316888:  SUB             SP, SP, #4
31688A:  VPUSH           {D8-D15}
31688E:  SUB             SP, SP, #0x78
316890:  VLDR            S0, =3000.0
316894:  VMOV            S17, R2
316898:  VLDR            S4, =750.0
31689C:  MOV             R5, R3
31689E:  VADD.F32        S2, S17, S0
3168A2:  MOV             R8, R0
3168A4:  VMOV            S16, R1
3168A8:  VADD.F32        S0, S16, S0
3168AC:  VDIV.F32        S18, S2, S4
3168B0:  VDIV.F32        S22, S0, S4
3168B4:  BLX             rand
3168B8:  UXTH            R0, R0
3168BA:  VMOV.F32        S4, #30.0
3168BE:  VMOV            S0, R0
3168C2:  VLDR            S2, =0.000015259
3168C6:  VMOV.F32        S6, #15.0
3168CA:  VLDR            S8, [R7,#arg_0]
3168CE:  VCVT.F32.S32    S0, S0
3168D2:  MOVS            R3, #0
3168D4:  MOVS            R0, #7
3168D6:  VMOV.F32        S21, #0.125
3168DA:  VMOV.F32        S23, #1.0
3168DE:  VLDR            S26, [R7,#arg_8]
3168E2:  VMOV.F32        S25, #2.0
3168E6:  VLDR            S28, [R7,#arg_4]
3168EA:  VMOV.F32        S27, #-2.0
3168EE:  VLDR            S19, =0.0039062
3168F2:  VMOV.I32        D15, #0x3E000000
3168F6:  VMOV            S20, R5
3168FA:  VMUL.F32        S0, S0, S2
3168FE:  VADD.F32        S2, S8, S4
316902:  VCVT.S32.F32    S4, S18
316906:  VMOV.F32        S18, S8
31690A:  VMUL.F32        S0, S0, S6
31690E:  VCVT.S32.F32    S6, S22
316912:  VMOV            R1, S4
316916:  VADD.F32        S22, S18, S18
31691A:  VMUL.F32        S24, S2, S2
31691E:  VMOV            R2, S6
316922:  CMP             R1, #0
316924:  IT LE
316926:  MOVLE           R1, R3
316928:  CMP             R1, #7
31692A:  IT GE
31692C:  MOVGE           R1, R0
31692E:  CMP             R2, #0
316930:  IT LE
316932:  MOVLE           R2, R3
316934:  CMP             R2, #7
316936:  IT GE
316938:  MOVGE           R2, R0
31693A:  ORR.W           R0, R2, R1,LSL#3
31693E:  MOVW            R1, #0x1104
316942:  ADD.W           R0, R8, R0,LSL#2
316946:  ADD             R1, R0
316948:  STR             R1, [SP,#0xD8+var_A8]
31694A:  MOVW            R1, #0x1224
31694E:  ADDW            R11, R0, #0xC84
316952:  ADD             R1, R0
316954:  STR             R1, [SP,#0xD8+var_84]
316956:  ADDW            R1, R0, #0xA44
31695A:  ADDW            R0, R0, #0x804
31695E:  STR             R1, [SP,#0xD8+var_88]
316960:  STR             R0, [SP,#0xD8+var_80]
316962:  VCVT.S32.F32    S0, S0
316966:  VMOV            R0, S0
31696A:  STR             R0, [SP,#0xD8+var_B4]
31696C:  LDR.W           R0, =(TheCamera_ptr - 0x316974)
316970:  ADD             R0, PC; TheCamera_ptr
316972:  LDR             R0, [R0]; TheCamera
316974:  STR             R0, [SP,#0xD8+var_B8]
316976:  LDR.W           R0, =(_ZN5CDraw13ms_fNearClipZE_ptr - 0x31697E)
31697A:  ADD             R0, PC; _ZN5CDraw13ms_fNearClipZE_ptr
31697C:  LDR             R0, [R0]; CDraw::ms_fNearClipZ ...
31697E:  STR             R0, [SP,#0xD8+var_AC]
316980:  LDR.W           R0, =(_ZN5CDraw12ms_fFarClipZE_ptr - 0x316988)
316984:  ADD             R0, PC; _ZN5CDraw12ms_fFarClipZE_ptr
316986:  LDR             R0, [R0]; CDraw::ms_fFarClipZ ...
316988:  STR             R0, [SP,#0xD8+var_BC]
31698A:  LDR.W           R0, =(TheCamera_ptr - 0x316992)
31698E:  ADD             R0, PC; TheCamera_ptr
316990:  LDR             R0, [R0]; TheCamera
316992:  STR             R0, [SP,#0xD8+var_C0]
316994:  LDR.W           R0, =(TheCamera_ptr - 0x31699C)
316998:  ADD             R0, PC; TheCamera_ptr
31699A:  LDR             R0, [R0]; TheCamera
31699C:  STR             R0, [SP,#0xD8+var_C4]
31699E:  LDR.W           R0, =(TheCamera_ptr - 0x3169A6)
3169A2:  ADD             R0, PC; TheCamera_ptr
3169A4:  LDR             R0, [R0]; TheCamera
3169A6:  STR             R0, [SP,#0xD8+var_C8]
3169A8:  LDR.W           R0, =(TheCamera_ptr - 0x3169B0)
3169AC:  ADD             R0, PC; TheCamera_ptr
3169AE:  LDR             R0, [R0]; TheCamera
3169B0:  STR             R0, [SP,#0xD8+var_CC]
3169B2:  MOVS            R0, #0
3169B4:  MOV             R4, R0
3169B6:  LDR             R0, [SP,#0xD8+var_80]
3169B8:  LDR             R0, [R0]
3169BA:  CMP             R0, #0
3169BC:  ITTT NE
3169BE:  LDRNE           R0, [SP,#0xD8+var_84]
3169C0:  LDRNE           R0, [R0]
3169C2:  CMPNE           R0, #0
3169C4:  BEQ.W           loc_316DB4
3169C8:  LDR             R0, [SP,#0xD8+var_A8]
3169CA:  LDR             R5, [R0]
3169CC:  BLX             rand
3169D0:  LDR             R1, [SP,#0xD8+var_84]
3169D2:  LDR             R1, [R1]
3169D4:  BLX             __aeabi_idivmod
3169D8:  LDR             R0, [SP,#0xD8+var_80]
3169DA:  ADD             R1, R5
3169DC:  RSB.W           R1, R1, R1,LSL#3
3169E0:  LDR             R0, [R0]
3169E2:  ADD.W           R0, R0, R1,LSL#2
3169E6:  ADD.W           R6, R0, #8
3169EA:  VLD1.32         {D16[0]}, [R6@32]
3169EE:  VMOVL.S16       Q8, D16
3169F2:  VCVT.F32.S32    D16, D16
3169F6:  VMUL.F32        D16, D16, D15
3169FA:  VSUB.F32        D16, D16, D8
3169FE:  VMUL.F32        D0, D16, D16
316A02:  VADD.F32        S29, S0, S1
316A06:  VCMPE.F32       S29, S24
316A0A:  VMRS            APSR_nzcv, FPSCR
316A0E:  BGE.W           loc_316DB4
316A12:  MOV             R2, R0
316A14:  LDRH.W          R1, [R2,#0x18]!
316A18:  STR             R2, [SP,#0xD8+var_A4]
316A1A:  LDRB            R2, [R2,#2]
316A1C:  ORR.W           R1, R1, R2,LSL#16
316A20:  UBFX.W          R2, R1, #0x10, #4
316A24:  LDR             R3, [SP,#0xD8+var_B4]
316A26:  CMP             R3, R2
316A28:  BGE.W           loc_316DB4
316A2C:  ANDS.W          R10, R1, #0xF
316A30:  BEQ.W           loc_316DB4
316A34:  ADD.W           R1, R0, #0xC
316A38:  ADD.W           R9, R0, #0x10
316A3C:  STR             R1, [SP,#0xD8+var_8C]
316A3E:  ADD.W           R1, R0, #0xA
316A42:  MOVS            R5, #0
316A44:  STR             R1, [SP,#0xD8+var_90]
316A46:  ADD.W           R1, R0, #0x12
316A4A:  STR             R1, [SP,#0xD8+var_A0]
316A4C:  LDRSH.W         R0, [R9]
316A50:  LDR.W           R1, [R11]
316A54:  ADD             R0, R5
316A56:  LDRB            R1, [R1,R0]
316A58:  LSLS            R1, R1, #0x1F
316A5A:  BNE.W           loc_316DAC
316A5E:  LDR             R1, [SP,#0xD8+var_88]
316A60:  LDR             R1, [R1]
316A62:  LDR.W           R1, [R1,R0,LSL#2]
316A66:  MOVW            R0, #0xFFC0
316A6A:  ANDS            R0, R1
316A6C:  CMP             R0, #0x3F ; '?'
316A6E:  BHI.W           loc_316DAC
316A72:  UXTH            R0, R1
316A74:  ADD.W           R0, R8, R0,LSL#2
316A78:  LDR.W           R0, [R0,#0x804]
316A7C:  CMP             R0, #0
316A7E:  BEQ.W           loc_316DAC
316A82:  LDR             R2, [SP,#0xD8+var_A4]
316A84:  LSRS            R1, R1, #0x10
316A86:  LDRH            R2, [R2]
316A88:  LSLS            R2, R2, #0x1A
316A8A:  BMI             loc_316AAC
316A8C:  RSB.W           R2, R1, R1,LSL#3
316A90:  ADD.W           R2, R0, R2,LSL#2
316A94:  LDRB            R3, [R2,#0x1A]
316A96:  LDRH            R2, [R2,#0x18]
316A98:  ORR.W           R2, R2, R3,LSL#16
316A9C:  TST.W           R2, #0x20
316AA0:  BEQ             loc_316AC4
316AA2:  LDR             R3, [R7,#arg_1C]
316AA4:  CMP             R3, #0
316AA6:  BEQ.W           loc_316DAC
316AAA:  B               loc_316AC4
316AAC:  LDR             R2, [R7,#arg_1C]
316AAE:  CMP             R2, #1
316AB0:  BNE.W           loc_316DAC
316AB4:  RSB.W           R2, R1, R1,LSL#3
316AB8:  ADD.W           R2, R0, R2,LSL#2
316ABC:  LDRB            R3, [R2,#0x1A]
316ABE:  LDRH            R2, [R2,#0x18]
316AC0:  ORR.W           R2, R2, R3,LSL#16
316AC4:  UBFX.W          R2, R2, #0x10, #4
316AC8:  LDR             R3, [SP,#0xD8+var_B4]
316ACA:  CMP             R3, R2
316ACC:  BGE.W           loc_316DAC
316AD0:  VSQRT.F32       S29, S29
316AD4:  RSB.W           R1, R1, R1,LSL#3
316AD8:  ADD.W           R0, R0, R1,LSL#2
316ADC:  ADD.W           R1, R0, #8
316AE0:  VCMPE.F32       S29, S18
316AE4:  VMRS            APSR_nzcv, FPSCR
316AE8:  BLT             loc_316B16
316AEA:  VLD1.32         {D16[0]}, [R1@32]
316AEE:  VMOVL.S16       Q8, D16
316AF2:  VCVT.F32.S32    D16, D16
316AF6:  VMUL.F32        D16, D16, D15
316AFA:  VSUB.F32        D16, D16, D8
316AFE:  VMUL.F32        D0, D16, D16
316B02:  VADD.F32        S0, S0, S1
316B06:  VSQRT.F32       S0, S0
316B0A:  VCMPE.F32       S0, S18
316B0E:  VMRS            APSR_nzcv, FPSCR
316B12:  BGE.W           loc_316DAC
316B16:  STR             R1, [SP,#0xD8+var_94]
316B18:  ADD.W           R1, R0, #0xC
316B1C:  STR.W           R8, [SP,#0xD8+var_D0]
316B20:  MOV.W           R8, #0xFFFFFFFF
316B24:  STR             R1, [SP,#0xD8+var_98]
316B26:  ADD.W           R1, R0, #0xA
316B2A:  ADDS            R0, #0x12
316B2C:  STR             R1, [SP,#0xD8+var_9C]
316B2E:  STR             R0, [SP,#0xD8+var_B0]
316B30:  B               loc_316B70
316B32:  LDR             R1, [SP,#0xD8+var_CC]
316B34:  ADDW            R0, R1, #0xAD8
316B38:  VLDR            S4, [R0]
316B3C:  ADDW            R0, R1, #0xAD4
316B40:  VLDR            S6, [R0]
316B44:  VMUL.F32        S2, S2, S4
316B48:  MOVS            R0, #0
316B4A:  VMUL.F32        S0, S0, S6
316B4E:  VADD.F32        S0, S0, S2
316B52:  VCMPE.F32       S0, S25
316B56:  VMRS            APSR_nzcv, FPSCR
316B5A:  IT LE
316B5C:  MOVLE           R0, #1
316B5E:  B               loc_316D1A
316B60:  DCFS 3000.0
316B64:  DCFS 750.0
316B68:  DCFS 0.000015259
316B6C:  DCFS 0.0039062
316B70:  BLX             rand
316B74:  UXTB            R0, R0
316B76:  VMOV            S0, R0
316B7A:  LDR             R0, [R7,#arg_18]
316B7C:  VCVT.F32.S32    S0, S0
316B80:  VMUL.F32        S4, S0, S19
316B84:  VSTR            S4, [R0]
316B88:  VSUB.F32        S10, S23, S4
316B8C:  LDR             R0, [SP,#0xD8+var_9C]
316B8E:  LDRSH.W         R0, [R0]
316B92:  VMOV            S0, R0
316B96:  VCVT.F32.S32    S0, S0
316B9A:  LDR             R0, [SP,#0xD8+var_90]
316B9C:  LDR             R1, [SP,#0xD8+var_94]
316B9E:  LDRSH.W         R0, [R0]
316BA2:  LDRSH.W         R1, [R1]
316BA6:  VMOV            S2, R0
316BAA:  VMOV            S6, R1
316BAE:  VCVT.F32.S32    S2, S2
316BB2:  LDRSH.W         R0, [R6]
316BB6:  VCVT.F32.S32    S6, S6
316BBA:  VMUL.F32        S0, S0, S21
316BBE:  VMOV            S8, R0
316BC2:  VCVT.F32.S32    S8, S8
316BC6:  LDR             R0, [SP,#0xD8+var_98]
316BC8:  LDR             R1, [SP,#0xD8+var_8C]
316BCA:  VMUL.F32        S2, S2, S21
316BCE:  VMUL.F32        S6, S6, S21
316BD2:  LDRSH.W         R0, [R0]
316BD6:  VMUL.F32        S0, S4, S0
316BDA:  LDRSH.W         R1, [R1]
316BDE:  VMOV            S12, R0
316BE2:  LDR             R0, [R7,#arg_20]
316BE4:  VMUL.F32        S8, S8, S21
316BE8:  VMOV            S14, R1
316BEC:  CMP             R0, #0
316BEE:  VMUL.F32        S2, S10, S2
316BF2:  VMUL.F32        S6, S4, S6
316BF6:  VCVT.F32.S32    S12, S12
316BFA:  VCVT.F32.S32    S14, S14
316BFE:  VMUL.F32        S8, S8, S10
316C02:  VADD.F32        S2, S2, S0
316C06:  VADD.F32        S0, S8, S6
316C0A:  VSUB.F32        S6, S2, S17
316C0E:  VSTR            S2, [SP,#0xD8+var_78+4]
316C12:  VSUB.F32        S8, S0, S16
316C16:  VSTR            S0, [SP,#0xD8+var_78]
316C1A:  VMUL.F32        S6, S6, S6
316C1E:  VMUL.F32        S8, S8, S8
316C22:  VADD.F32        S6, S8, S6
316C26:  VMUL.F32        S8, S12, S21
316C2A:  VMUL.F32        S12, S14, S21
316C2E:  VSQRT.F32       S18, S6
316C32:  VMUL.F32        S4, S4, S8
316C36:  VMUL.F32        S6, S10, S12
316C3A:  VADD.F32        S4, S6, S4
316C3E:  VSTR            S4, [SP,#0xD8+var_70]
316C42:  BEQ             loc_316D0E
316C44:  MOV             R3, R0
316C46:  ADD             R0, SP, #0xD8+var_6C
316C48:  MOVS            R2, #1
316C4A:  VSTR            S2, [SP,#0xD8+var_68]
316C4E:  MOV             R1, R0
316C50:  VSTR            S0, [SP,#0xD8+var_6C]
316C54:  VSTR            S4, [SP,#0xD8+var_64]
316C58:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
316C5C:  VLDR            S0, [SP,#0xD8+var_68]
316C60:  LDR             R0, [SP,#0xD8+var_AC]
316C62:  VADD.F32        S2, S0, S25
316C66:  VLDR            S4, [R0]
316C6A:  VCMPE.F32       S2, S4
316C6E:  VMRS            APSR_nzcv, FPSCR
316C72:  BLT             loc_316D0A
316C74:  VADD.F32        S2, S0, S27
316C78:  LDR             R0, [SP,#0xD8+var_BC]
316C7A:  VLDR            S4, [R0]
316C7E:  VCMPE.F32       S2, S4
316C82:  VMRS            APSR_nzcv, FPSCR
316C86:  BGT             loc_316D0A
316C88:  LDR             R1, [SP,#0xD8+var_C0]
316C8A:  VLDR            S2, [SP,#0xD8+var_6C]
316C8E:  ADD.W           R0, R1, #0xAB0
316C92:  VLDR            S4, [R0]
316C96:  ADDW            R0, R1, #0xAAC
316C9A:  VLDR            S6, [R0]
316C9E:  VMUL.F32        S4, S0, S4
316CA2:  VMUL.F32        S6, S2, S6
316CA6:  VADD.F32        S4, S6, S4
316CAA:  VCMPE.F32       S4, S25
316CAE:  VMRS            APSR_nzcv, FPSCR
316CB2:  BGT             loc_316D0A
316CB4:  LDR             R1, [SP,#0xD8+var_C4]
316CB6:  ADDW            R0, R1, #0xABC
316CBA:  VLDR            S4, [R0]
316CBE:  ADDW            R0, R1, #0xAB8
316CC2:  VLDR            S6, [R0]
316CC6:  VMUL.F32        S4, S0, S4
316CCA:  VMUL.F32        S2, S2, S6
316CCE:  VADD.F32        S2, S2, S4
316CD2:  VCMPE.F32       S2, S25
316CD6:  VMRS            APSR_nzcv, FPSCR
316CDA:  BGT             loc_316D0A
316CDC:  LDR             R1, [SP,#0xD8+var_C8]
316CDE:  VLDR            S2, [SP,#0xD8+var_64]
316CE2:  ADDW            R0, R1, #0xACC
316CE6:  VLDR            S4, [R0]
316CEA:  ADDW            R0, R1, #0xAC8
316CEE:  VLDR            S6, [R0]
316CF2:  VMUL.F32        S4, S2, S4
316CF6:  VMUL.F32        S6, S0, S6
316CFA:  VADD.F32        S4, S6, S4
316CFE:  VCMPE.F32       S4, S25
316D02:  VMRS            APSR_nzcv, FPSCR
316D06:  BLE.W           loc_316B32
316D0A:  MOVS            R0, #0
316D0C:  B               loc_316D1A
316D0E:  LDR             R0, [SP,#0xD8+var_B8]; this
316D10:  ADD             R1, SP, #0xD8+var_78; CVector *
316D12:  MOV.W           R2, #0x40000000; float
316D16:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
316D1A:  VCMPE.F32       S18, S22
316D1E:  VMRS            APSR_nzcv, FPSCR
316D22:  BGE             loc_316D30
316D24:  VCMPE.F32       S18, S20
316D28:  VMRS            APSR_nzcv, FPSCR
316D2C:  BLE             loc_316D30
316D2E:  CBNZ            R0, loc_316D58
316D30:  VCMPE.F32       S18, S26
316D34:  VMRS            APSR_nzcv, FPSCR
316D38:  BGE             loc_316D98
316D3A:  VCMPE.F32       S18, S28
316D3E:  VMRS            APSR_nzcv, FPSCR
316D42:  BLE             loc_316D98
316D44:  EOR.W           R0, R0, #1
316D48:  CMP             R0, #1
316D4A:  BNE             loc_316D98
316D4C:  BLX             rand
316D50:  AND.W           R0, R0, #2
316D54:  CMP             R0, #1
316D56:  BHI             loc_316D98
316D58:  LDR             R0, [SP,#0xD8+var_A0]
316D5A:  MOVS            R3, #0
316D5C:  LDR             R1, [R7,#arg_10]
316D5E:  LDR             R0, [R0]
316D60:  STR             R0, [R1]
316D62:  LDR             R0, [SP,#0xD8+var_B0]
316D64:  LDR             R1, [R7,#arg_14]
316D66:  LDR             R0, [R0]
316D68:  STR             R0, [R1]
316D6A:  LDR             R1, [R7,#arg_C]
316D6C:  VLDR            D16, [SP,#0xD8+var_78]
316D70:  LDR             R0, [SP,#0xD8+var_70]
316D72:  STR             R0, [R1,#8]
316D74:  VSTR            D16, [R1]
316D78:  VLDR            S0, [SP,#0xD8+var_70]
316D7C:  LDRD.W          R0, R1, [SP,#0xD8+var_78]; float
316D80:  VADD.F32        S0, S0, S25
316D84:  STR             R3, [SP,#0xD8+var_D8]; bool *
316D86:  SUB.W           R3, R7, #-var_79; float
316D8A:  VMOV            R2, S0; float
316D8E:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
316D92:  LDRB.W          R1, [R7,#var_79]
316D96:  CBNZ            R1, loc_316DC0
316D98:  ADD.W           R8, R8, #1
316D9C:  CMP.W           R8, #4
316DA0:  BLT.W           loc_316B70
316DA4:  LDR.W           R8, [SP,#0xD8+var_D0]
316DA8:  VLDR            S18, [R7,#arg_0]
316DAC:  ADDS            R5, #1
316DAE:  CMP             R5, R10
316DB0:  BLT.W           loc_316A4C
316DB4:  ADDS            R0, R4, #1
316DB6:  CMP.W           R4, #0x12A
316DBA:  BLE.W           loc_3169B4
316DBE:  B               loc_316DDE
316DC0:  VMOV            S0, R0
316DC4:  VLDR            S2, [SP,#0xD8+var_70]
316DC8:  VMOV.F32        S4, #3.0
316DCC:  VSUB.F32        S2, S0, S2
316DD0:  VABS.F32        S2, S2
316DD4:  VCMPE.F32       S2, S4
316DD8:  VMRS            APSR_nzcv, FPSCR
316DDC:  BLE             loc_316DEE
316DDE:  MOVS            R0, #0
316DE0:  ADD             SP, SP, #0x78 ; 'x'
316DE2:  VPOP            {D8-D15}
316DE6:  ADD             SP, SP, #4
316DE8:  POP.W           {R8-R11}
316DEC:  POP             {R4-R7,PC}
316DEE:  LDR             R0, [R7,#arg_C]
316DF0:  VSTR            S0, [R0,#8]
316DF4:  MOVS            R0, #1
316DF6:  B               loc_316DE0
