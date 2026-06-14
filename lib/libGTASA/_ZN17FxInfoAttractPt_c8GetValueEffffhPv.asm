; =========================================================
; Game Engine Function: _ZN17FxInfoAttractPt_c8GetValueEffffhPv
; Address            : 0x36AB18 - 0x36AC02
; =========================================================

36AB18:  PUSH            {R4,R5,R7,LR}
36AB1A:  ADD             R7, SP, #8
36AB1C:  VPUSH           {D8}
36AB20:  SUB             SP, SP, #0x50
36AB22:  VMOV            S2, R1
36AB26:  VLDR            S0, [R7,#arg_0]
36AB2A:  LDRB            R1, [R0,#6]
36AB2C:  ADDS            R0, #8; this
36AB2E:  VDIV.F32        S0, S2, S0
36AB32:  MOV             R4, R3
36AB34:  CMP             R1, #0
36AB36:  ADD             R1, SP, #0x60+var_50; float *
36AB38:  VMOV            S2, R2
36AB3C:  IT EQ
36AB3E:  VMOVEQ.F32      S2, S0
36AB42:  VMOV            R2, S2; float
36AB46:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36AB4A:  LDR             R5, [R7,#arg_8]
36AB4C:  ADD             R0, SP, #0x60+var_5C
36AB4E:  VLDR            S0, [SP,#0x60+var_50]
36AB52:  VLDR            S2, [SP,#0x60+var_4C]
36AB56:  VLDR            S6, [R5]
36AB5A:  VLDR            S8, [R5,#4]
36AB5E:  VSUB.F32        S0, S0, S6
36AB62:  VLDR            S10, [R5,#8]
36AB66:  VLDR            S4, [SP,#0x60+var_48]
36AB6A:  VSTR            S0, [SP,#0x60+var_5C]
36AB6E:  VSUB.F32        S0, S2, S8
36AB72:  VSTR            S0, [SP,#0x60+var_58]
36AB76:  VSUB.F32        S0, S4, S10
36AB7A:  VSTR            S0, [SP,#0x60+var_54]
36AB7E:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
36AB82:  VMOV            S16, R0
36AB86:  VCMPE.F32       S16, #0.0
36AB8A:  VMRS            APSR_nzcv, FPSCR
36AB8E:  BLE             loc_36AB98
36AB90:  ADD             R0, SP, #0x60+var_5C
36AB92:  MOV             R1, R0
36AB94:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36AB98:  VLDR            S0, =0.1
36AB9C:  VCMPE.F32       S16, S0
36ABA0:  VMRS            APSR_nzcv, FPSCR
36ABA4:  BLE             loc_36ABFA
36ABA6:  VMOV            S0, R4
36ABAA:  VLDR            S2, [SP,#0x60+var_50]
36ABAE:  VLDR            S4, [SP,#0x60+var_58]
36ABB2:  VMUL.F32        S0, S2, S0
36ABB6:  VLDR            S2, [SP,#0x60+var_5C]
36ABBA:  VLDR            S6, [SP,#0x60+var_54]
36ABBE:  VMUL.F32        S2, S2, S0
36ABC2:  VMUL.F32        S4, S0, S4
36ABC6:  VMUL.F32        S0, S6, S0
36ABCA:  VSTR            S2, [SP,#0x60+var_5C]
36ABCE:  VSTR            S4, [SP,#0x60+var_58]
36ABD2:  VSTR            S0, [SP,#0x60+var_54]
36ABD6:  VLDR            S6, [R5,#0xC]
36ABDA:  VLDR            S8, [R5,#0x10]
36ABDE:  VLDR            S10, [R5,#0x14]
36ABE2:  VADD.F32        S2, S6, S2
36ABE6:  VADD.F32        S4, S8, S4
36ABEA:  VADD.F32        S0, S10, S0
36ABEE:  VSTR            S2, [R5,#0xC]
36ABF2:  VSTR            S4, [R5,#0x10]
36ABF6:  VSTR            S0, [R5,#0x14]
36ABFA:  ADD             SP, SP, #0x50 ; 'P'
36ABFC:  VPOP            {D8}
36AC00:  POP             {R4,R5,R7,PC}
