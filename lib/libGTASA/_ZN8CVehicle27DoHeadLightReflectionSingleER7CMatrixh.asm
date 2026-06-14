; =========================================================
; Game Engine Function: _ZN8CVehicle27DoHeadLightReflectionSingleER7CMatrixh
; Address            : 0x590B04 - 0x590C6A
; =========================================================

590B04:  PUSH            {R7,LR}
590B06:  MOV             R7, SP
590B08:  SUB             SP, SP, #0x30; float
590B0A:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x590B14)
590B0C:  LDRSH.W         R12, [R0,#0x26]
590B10:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
590B12:  LDR.W           LR, [R0,#0x14]
590B16:  LDR             R3, [R3]; CModelInfo::ms_modelInfoPtrs ...
590B18:  CMP.W           LR, #0
590B1C:  LDR.W           R3, [R3,R12,LSL#2]
590B20:  LDR             R3, [R3,#0x74]
590B22:  VLDR            S0, [R3]
590B26:  VLDR            S2, [R3,#4]
590B2A:  ADD.W           R3, LR, #0x30 ; '0'
590B2E:  IT EQ
590B30:  ADDEQ           R3, R0, #4
590B32:  CMP             R2, #0
590B34:  VLDR            D16, [R3]
590B38:  LDR             R3, [R3,#8]
590B3A:  STR             R3, [SP,#0x38+var_10]
590B3C:  VSTR            D16, [SP,#0x38+var_18]
590B40:  VLDR            S6, [R1,#0x10]
590B44:  VLDR            S4, [R1,#0x14]
590B48:  VMUL.F32        S10, S6, S6
590B4C:  VMUL.F32        S8, S4, S4
590B50:  VADD.F32        S8, S10, S8
590B54:  VNEG.F32        S10, S0
590B58:  VCMP.F32        S8, #0.0
590B5C:  IT EQ
590B5E:  VMOVEQ.F32      S0, S10
590B62:  VMRS            APSR_nzcv, FPSCR
590B66:  BEQ             loc_590B74
590B68:  VSQRT.F32       S8, S8
590B6C:  VMOV.F32        S10, #1.0
590B70:  VDIV.F32        S8, S10, S8
590B74:  VLDR            S10, [R1]
590B78:  VLDR            S12, [R1,#4]
590B7C:  VMUL.F32        S1, S10, S10
590B80:  VMUL.F32        S14, S12, S12
590B84:  VADD.F32        S14, S1, S14
590B88:  VCMP.F32        S14, #0.0
590B8C:  VMRS            APSR_nzcv, FPSCR
590B90:  BEQ             loc_590B9E
590B92:  VSQRT.F32       S14, S14
590B96:  VMOV.F32        S1, #1.0
590B9A:  VDIV.F32        S14, S1, S14
590B9E:  LDR             R1, =(gpShadowHeadLightsTex2_ptr - 0x590BB0)
590BA0:  VMUL.F32        S4, S4, S8
590BA4:  VMUL.F32        S6, S6, S8
590BA8:  LDR.W           R3, [R0,#0x5A4]
590BAC:  ADD             R1, PC; gpShadowHeadLightsTex2_ptr
590BAE:  VMUL.F32        S8, S12, S14
590BB2:  VMUL.F32        S10, S10, S14
590BB6:  CMP             R3, #9
590BB8:  LDR             R1, [R1]; gpShadowHeadLightsTex2
590BBA:  LDR             R2, [R1]; int
590BBC:  BEQ             loc_590BCA
590BBE:  UXTH.W          R1, R12
590BC2:  MOVW            R3, #0x1D7
590BC6:  CMP             R1, R3
590BC8:  BNE             loc_590BD0
590BCA:  VMOV.F32        S12, #1.25
590BCE:  B               loc_590BDC
590BD0:  VMOV.F32        S12, #4.0
590BD4:  VABS.F32        S14, S0
590BD8:  VMUL.F32        S12, S14, S12
590BDC:  VMOV.F32        S14, #1.0
590BE0:  VLDR            S3, [SP,#0x38+var_18]
590BE4:  VADD.F32        S1, S12, S12
590BE8:  VLDR            S5, [SP,#0x38+var_18+4]
590BEC:  VMUL.F32        S10, S0, S10
590BF0:  VLDR            S7, [SP,#0x38+var_10]
590BF4:  VMOV.F32        S9, #2.0
590BF8:  MOVS            R1, #0
590BFA:  VMUL.F32        S0, S0, S8
590BFE:  MOVT            R1, #0x40E0
590C02:  MOVS            R3, #0x2D ; '-'
590C04:  VADD.F32        S14, S1, S14
590C08:  VADD.F32        S8, S7, S9
590C0C:  VADD.F32        S2, S2, S14
590C10:  VSTR            S8, [SP,#0x38+var_10]
590C14:  VMUL.F32        S14, S6, S2
590C18:  VMUL.F32        S2, S4, S2
590C1C:  VADD.F32        S14, S3, S14
590C20:  VADD.F32        S2, S5, S2
590C24:  VADD.F32        S10, S10, S14
590C28:  VADD.F32        S0, S0, S2
590C2C:  VMUL.F32        S2, S4, S12
590C30:  VNMUL.F32       S12, S6, S12
590C34:  VMUL.F32        S6, S6, S1
590C38:  VMUL.F32        S4, S4, S1
590C3C:  VSTR            S10, [SP,#0x38+var_18]
590C40:  VSTR            S0, [SP,#0x38+var_18+4]
590C44:  STRD.W          R3, R3, [SP,#0x38+var_28]; int
590C48:  STRD.W          R3, R1, [SP,#0x38+var_20]; int
590C4C:  ADD.W           R1, R0, #0x16; int
590C50:  ADD             R3, SP, #0x38+var_18; int
590C52:  VSTR            S6, [SP,#0x38+var_38]
590C56:  VSTR            S4, [SP,#0x38+var_34]
590C5A:  VSTR            S2, [SP,#0x38+var_30]
590C5E:  VSTR            S12, [SP,#0x38+var_2C]
590C62:  BLX             j__ZN8CShadows19StoreCarLightShadowEP8CVehicleiP9RwTextureP7CVectorffffhhhf; CShadows::StoreCarLightShadow(CVehicle *,int,RwTexture *,CVector *,float,float,float,float,uchar,uchar,uchar,float)
590C66:  ADD             SP, SP, #0x30 ; '0'
590C68:  POP             {R7,PC}
