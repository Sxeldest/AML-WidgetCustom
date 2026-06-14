; =========================================================
; Game Engine Function: _ZN8CVehicle25DoHeadLightReflectionTwinER7CMatrix
; Address            : 0x590C74 - 0x590D6A
; =========================================================

590C74:  PUSH            {R7,LR}
590C76:  MOV             R7, SP
590C78:  SUB             SP, SP, #0x30; float
590C7A:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x590C84)
590C7C:  LDRSH.W         R3, [R0,#0x26]
590C80:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
590C82:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
590C84:  LDR.W           R2, [R2,R3,LSL#2]
590C88:  LDR             R2, [R2,#0x74]
590C8A:  VLDR            S2, [R2]
590C8E:  VLDR            S0, [R2,#4]
590C92:  LDR             R2, [R0,#0x14]
590C94:  ADD.W           R3, R2, #0x30 ; '0'
590C98:  CMP             R2, #0
590C9A:  IT EQ
590C9C:  ADDEQ           R3, R0, #4
590C9E:  VLDR            D16, [R3]
590CA2:  LDR             R2, [R3,#8]
590CA4:  STR             R2, [SP,#0x38+var_10]
590CA6:  VSTR            D16, [SP,#0x38+var_18]
590CAA:  VLDR            S6, [R1,#0x10]
590CAE:  VLDR            S4, [R1,#0x14]
590CB2:  VMUL.F32        S10, S6, S6
590CB6:  VMUL.F32        S8, S4, S4
590CBA:  VADD.F32        S8, S10, S8
590CBE:  VCMP.F32        S8, #0.0
590CC2:  VMRS            APSR_nzcv, FPSCR
590CC6:  BEQ             loc_590CD4
590CC8:  VSQRT.F32       S8, S8
590CCC:  VMOV.F32        S10, #1.0
590CD0:  VDIV.F32        S8, S10, S8
590CD4:  VMOV.F32        S10, #4.0
590CD8:  VLDR            S3, [SP,#0x38+var_10]
590CDC:  VMUL.F32        S6, S6, S8
590CE0:  VLDR            S14, [SP,#0x38+var_18]
590CE4:  VMUL.F32        S4, S4, S8
590CE8:  VLDR            S1, [SP,#0x38+var_18+4]
590CEC:  VMOV.F32        S8, #2.0
590CF0:  LDR             R1, =(gpShadowHeadLightsTex_ptr - 0x590CF8)
590CF2:  MOVS            R3, #0
590CF4:  ADD             R1, PC; gpShadowHeadLightsTex_ptr
590CF6:  MOVT            R3, #0x40E0
590CFA:  VMUL.F32        S2, S2, S10
590CFE:  LDR             R1, [R1]; gpShadowHeadLightsTex
590D00:  VMOV.F32        S10, #1.0
590D04:  VADD.F32        S8, S3, S8
590D08:  LDR             R2, [R1]; int
590D0A:  MOVS            R1, #0x2D ; '-'
590D0C:  VADD.F32        S12, S2, S2
590D10:  VSTR            S8, [SP,#0x38+var_10]
590D14:  VMUL.F32        S8, S2, S4
590D18:  VNMUL.F32       S2, S2, S6
590D1C:  VADD.F32        S10, S12, S10
590D20:  VADD.F32        S0, S0, S10
590D24:  VMUL.F32        S10, S0, S6
590D28:  VMUL.F32        S0, S0, S4
590D2C:  VMUL.F32        S6, S12, S6
590D30:  VMUL.F32        S4, S12, S4
590D34:  VADD.F32        S10, S14, S10
590D38:  VADD.F32        S0, S0, S1
590D3C:  VSTR            S10, [SP,#0x38+var_18]
590D40:  VSTR            S0, [SP,#0x38+var_18+4]
590D44:  STRD.W          R1, R1, [SP,#0x38+var_28]; int
590D48:  STRD.W          R1, R3, [SP,#0x38+var_20]; int
590D4C:  ADD.W           R1, R0, #0x16; int
590D50:  ADD             R3, SP, #0x38+var_18; int
590D52:  VSTR            S6, [SP,#0x38+var_38]
590D56:  VSTR            S4, [SP,#0x38+var_34]
590D5A:  VSTR            S8, [SP,#0x38+var_30]
590D5E:  VSTR            S2, [SP,#0x38+var_2C]
590D62:  BLX             j__ZN8CShadows19StoreCarLightShadowEP8CVehicleiP9RwTextureP7CVectorffffhhhf; CShadows::StoreCarLightShadow(CVehicle *,int,RwTexture *,CVector *,float,float,float,float,uchar,uchar,uchar,float)
590D66:  ADD             SP, SP, #0x30 ; '0'
590D68:  POP             {R7,PC}
