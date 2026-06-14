; =========================================================
; Game Engine Function: _ZN8CCarCtrl14WeaveForObjectEP7CEntityP8CVehiclePfS4_
; Address            : 0x2FCAA4 - 0x2FCD82
; =========================================================

2FCAA4:  PUSH            {R4-R7,LR}
2FCAA6:  ADD             R7, SP, #0xC
2FCAA8:  PUSH.W          {R8,R9,R11}
2FCAAC:  VPUSH           {D8-D12}
2FCAB0:  MOV             R4, R0
2FCAB2:  LDR             R0, =(MI_TRAFFICLIGHTS_ptr - 0x2FCABC)
2FCAB4:  MOV             R6, R1
2FCAB6:  MOV             R8, R3
2FCAB8:  ADD             R0, PC; MI_TRAFFICLIGHTS_ptr
2FCABA:  MOV             R9, R2
2FCABC:  LDR             R1, [R0]; MI_TRAFFICLIGHTS
2FCABE:  LDRSH.W         R0, [R4,#0x26]
2FCAC2:  LDRH            R1, [R1]
2FCAC4:  CMP             R0, R1
2FCAC6:  BNE             loc_2FCAD2
2FCAC8:  VLDR            S18, =0.147
2FCACC:  VLDR            S16, =2.957
2FCAD0:  B               loc_2FCB5A
2FCAD2:  LDR             R1, =(MI_SINGLESTREETLIGHTS1_ptr - 0x2FCADC)
2FCAD4:  VLDR            S18, =0.0
2FCAD8:  ADD             R1, PC; MI_SINGLESTREETLIGHTS1_ptr
2FCADA:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS1
2FCADC:  LDRH            R1, [R1]
2FCADE:  CMP             R0, R1
2FCAE0:  BNE             loc_2FCAE8
2FCAE2:  VLDR            S16, =0.744
2FCAE6:  B               loc_2FCB5A
2FCAE8:  LDR             R1, =(MI_SINGLESTREETLIGHTS2_ptr - 0x2FCAEE)
2FCAEA:  ADD             R1, PC; MI_SINGLESTREETLIGHTS2_ptr
2FCAEC:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS2
2FCAEE:  LDRH            R1, [R1]
2FCAF0:  CMP             R0, R1
2FCAF2:  BNE             loc_2FCAFA
2FCAF4:  VLDR            S16, =0.043
2FCAF8:  B               loc_2FCB5A
2FCAFA:  LDR             R1, =(MI_SINGLESTREETLIGHTS3_ptr - 0x2FCB00)
2FCAFC:  ADD             R1, PC; MI_SINGLESTREETLIGHTS3_ptr
2FCAFE:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS3
2FCB00:  LDRH            R1, [R1]
2FCB02:  CMP             R0, R1
2FCB04:  BNE             loc_2FCB10
2FCB06:  VLDR            S18, =0.145
2FCB0A:  VLDR            S16, =1.143
2FCB0E:  B               loc_2FCB5A
2FCB10:  LDR             R1, =(MI_DOUBLESTREETLIGHTS_ptr - 0x2FCB16)
2FCB12:  ADD             R1, PC; MI_DOUBLESTREETLIGHTS_ptr
2FCB14:  LDR             R1, [R1]; MI_DOUBLESTREETLIGHTS
2FCB16:  LDRH            R1, [R1]
2FCB18:  CMP             R0, R1
2FCB1A:  BNE             loc_2FCB26
2FCB1C:  VLDR            S18, =-0.048
2FCB20:  VLDR            S16, =0.0
2FCB24:  B               loc_2FCB5A
2FCB26:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2FCB2E)
2FCB28:  MOVS            R2, #0
2FCB2A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2FCB2C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2FCB2E:  LDR.W           R0, [R1,R0,LSL#2]
2FCB32:  MOVS            R1, #0
2FCB34:  LDRH            R0, [R0,#0x28]
2FCB36:  AND.W           R0, R0, #0x7800
2FCB3A:  CMP.W           R0, #0x800
2FCB3E:  IT NE
2FCB40:  MOVNE           R2, #1
2FCB42:  CMP.W           R0, #0x1000
2FCB46:  IT EQ
2FCB48:  MOVEQ           R1, #1
2FCB4A:  TEQ.W           R1, R2
2FCB4E:  BNE.W           loc_2FCD22
2FCB52:  VLDR            S16, =0.0
2FCB56:  VMOV.F32        S18, S16
2FCB5A:  LDR             R0, [R4,#0x14]
2FCB5C:  ADDS            R5, R4, #4
2FCB5E:  CMP             R0, #0
2FCB60:  MOV             R1, R5
2FCB62:  IT NE
2FCB64:  ADDNE.W         R1, R0, #0x30 ; '0'
2FCB68:  VLDR            S22, [R1]
2FCB6C:  VLDR            S20, [R1,#4]
2FCB70:  BEQ             loc_2FCB7C
2FCB72:  VLDR            S0, [R0,#0x10]
2FCB76:  VMUL.F32        S24, S18, S0
2FCB7A:  B               loc_2FCB9A
2FCB7C:  MOV             R0, R4; this
2FCB7E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2FCB82:  LDR             R1, [R4,#0x14]; CMatrix *
2FCB84:  MOV             R0, R5; this
2FCB86:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2FCB8A:  LDR             R0, [R4,#0x14]
2FCB8C:  CMP             R0, #0
2FCB8E:  VLDR            S0, [R0,#0x10]
2FCB92:  VMUL.F32        S24, S18, S0
2FCB96:  BEQ.W           loc_2FCD2C
2FCB9A:  VLDR            S0, [R0]
2FCB9E:  VMUL.F32        S0, S16, S0
2FCBA2:  VADD.F32        S0, S24, S0
2FCBA6:  VADD.F32        S22, S22, S0
2FCBAA:  VLDR            S0, [R0,#0x14]
2FCBAE:  VMUL.F32        S18, S18, S0
2FCBB2:  VLDR            S0, [R0,#4]
2FCBB6:  LDR             R0, [R6,#0x14]
2FCBB8:  VMUL.F32        S0, S16, S0
2FCBBC:  ADD.W           R1, R0, #0x30 ; '0'
2FCBC0:  CMP             R0, #0
2FCBC2:  IT EQ
2FCBC4:  ADDEQ           R1, R6, #4
2FCBC6:  VLDR            S2, [R1]
2FCBCA:  VLDR            S4, [R1,#4]
2FCBCE:  VSUB.F32        S16, S22, S2
2FCBD2:  VADD.F32        S0, S18, S0
2FCBD6:  VMOV            R0, S16; this
2FCBDA:  VADD.F32        S0, S20, S0
2FCBDE:  VSUB.F32        S18, S0, S4
2FCBE2:  VMOV            R1, S18; float
2FCBE6:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2FCBEA:  VMUL.F32        S0, S16, S16
2FCBEE:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2FCBFC)
2FCBF0:  VMUL.F32        S2, S18, S18
2FCBF4:  LDRSH.W         R2, [R6,#0x26]
2FCBF8:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2FCBFA:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2FCBFC:  LDR.W           R1, [R1,R2,LSL#2]
2FCC00:  VADD.F32        S0, S0, S2
2FCC04:  LDR             R1, [R1,#0x2C]
2FCC06:  VLDR            S4, [R1,#0xC]
2FCC0A:  VSQRT.F32       S2, S0
2FCC0E:  VLDR            S0, =2.4
2FCC12:  VMUL.F32        S0, S4, S0
2FCC16:  VLDR            S4, =0.3
2FCC1A:  VADD.F32        S8, S0, S4
2FCC1E:  VLDR            S4, [R9]
2FCC22:  VMOV            S0, R0
2FCC26:  VSUB.F32        S6, S0, S4
2FCC2A:  VLDR            S4, =-3.1416
2FCC2E:  VCMPE.F32       S6, S4
2FCC32:  VMRS            APSR_nzcv, FPSCR
2FCC36:  BGE             loc_2FCC4A
2FCC38:  VLDR            S10, =6.2832
2FCC3C:  VADD.F32        S6, S6, S10
2FCC40:  VCMPE.F32       S6, S4
2FCC44:  VMRS            APSR_nzcv, FPSCR
2FCC48:  BLT             loc_2FCC3C
2FCC4A:  VDIV.F32        S8, S8, S2
2FCC4E:  VLDR            S2, =3.1416
2FCC52:  VCMPE.F32       S6, S2
2FCC56:  VMRS            APSR_nzcv, FPSCR
2FCC5A:  BLE             loc_2FCC6E
2FCC5C:  VLDR            S10, =-6.2832
2FCC60:  VADD.F32        S6, S6, S10
2FCC64:  VCMPE.F32       S6, S2
2FCC68:  VMRS            APSR_nzcv, FPSCR
2FCC6C:  BGT             loc_2FCC60
2FCC6E:  VMOV.F32        S10, #0.5
2FCC72:  VABS.F32        S12, S6
2FCC76:  VMUL.F32        S6, S8, S10
2FCC7A:  VCMPE.F32       S12, S6
2FCC7E:  VMRS            APSR_nzcv, FPSCR
2FCC82:  BGE             loc_2FCCAC
2FCC84:  VSUB.F32        S8, S0, S6
2FCC88:  VCMPE.F32       S8, S4
2FCC8C:  VSTR            S8, [R9]
2FCC90:  VMRS            APSR_nzcv, FPSCR
2FCC94:  BGE             loc_2FCCAC
2FCC96:  VLDR            S10, =6.2832
2FCC9A:  VADD.F32        S8, S8, S10
2FCC9E:  VCMPE.F32       S8, S4
2FCCA2:  VMRS            APSR_nzcv, FPSCR
2FCCA6:  BLT             loc_2FCC9A
2FCCA8:  VSTR            S8, [R9]
2FCCAC:  VLDR            S8, [R8]
2FCCB0:  VSUB.F32        S8, S0, S8
2FCCB4:  VCMPE.F32       S8, S4
2FCCB8:  VMRS            APSR_nzcv, FPSCR
2FCCBC:  BGE             loc_2FCCD0
2FCCBE:  VLDR            S10, =6.2832
2FCCC2:  VADD.F32        S8, S8, S10
2FCCC6:  VCMPE.F32       S8, S4
2FCCCA:  VMRS            APSR_nzcv, FPSCR
2FCCCE:  BLT             loc_2FCCC2
2FCCD0:  VCMPE.F32       S8, S2
2FCCD4:  VMRS            APSR_nzcv, FPSCR
2FCCD8:  BLE             loc_2FCCEC
2FCCDA:  VLDR            S4, =-6.2832
2FCCDE:  VADD.F32        S8, S8, S4
2FCCE2:  VCMPE.F32       S8, S2
2FCCE6:  VMRS            APSR_nzcv, FPSCR
2FCCEA:  BGT             loc_2FCCDE
2FCCEC:  VABS.F32        S4, S8
2FCCF0:  VCMPE.F32       S4, S6
2FCCF4:  VMRS            APSR_nzcv, FPSCR
2FCCF8:  BGE             loc_2FCD22
2FCCFA:  VADD.F32        S0, S0, S6
2FCCFE:  VCMPE.F32       S0, S2
2FCD02:  VSTR            S0, [R8]
2FCD06:  VMRS            APSR_nzcv, FPSCR
2FCD0A:  BLE             loc_2FCD22
2FCD0C:  VLDR            S4, =-6.2832
2FCD10:  VADD.F32        S0, S0, S4
2FCD14:  VCMPE.F32       S0, S2
2FCD18:  VMRS            APSR_nzcv, FPSCR
2FCD1C:  BGT             loc_2FCD10
2FCD1E:  VSTR            S0, [R8]
2FCD22:  VPOP            {D8-D12}
2FCD26:  POP.W           {R8,R9,R11}
2FCD2A:  POP             {R4-R7,PC}
2FCD2C:  MOV             R0, R4; this
2FCD2E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2FCD32:  LDR             R1, [R4,#0x14]; CMatrix *
2FCD34:  MOV             R0, R5; this
2FCD36:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2FCD3A:  LDR             R0, [R4,#0x14]
2FCD3C:  CMP             R0, #0
2FCD3E:  VLDR            S0, [R0]
2FCD42:  VMUL.F32        S0, S16, S0
2FCD46:  VADD.F32        S0, S24, S0
2FCD4A:  VADD.F32        S22, S22, S0
2FCD4E:  BNE.W           loc_2FCBAA
2FCD52:  MOV             R0, R4; this
2FCD54:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2FCD58:  LDR             R1, [R4,#0x14]; CMatrix *
2FCD5A:  MOV             R0, R5; this
2FCD5C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2FCD60:  LDR             R0, [R4,#0x14]
2FCD62:  CMP             R0, #0
2FCD64:  VLDR            S0, [R0,#0x14]
2FCD68:  VMUL.F32        S18, S18, S0
2FCD6C:  BNE.W           loc_2FCBB2
2FCD70:  MOV             R0, R4; this
2FCD72:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2FCD76:  LDR             R1, [R4,#0x14]; CMatrix *
2FCD78:  MOV             R0, R5; this
2FCD7A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2FCD7E:  LDR             R0, [R4,#0x14]
2FCD80:  B               loc_2FCBB2
