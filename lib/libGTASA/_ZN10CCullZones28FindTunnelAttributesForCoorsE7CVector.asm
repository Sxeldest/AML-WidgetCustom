; =========================================================
; Game Engine Function: _ZN10CCullZones28FindTunnelAttributesForCoorsE7CVector
; Address            : 0x5CFCA0 - 0x5CFDC0
; =========================================================

5CFCA0:  PUSH            {R4,R5,R7,LR}
5CFCA2:  ADD             R7, SP, #8
5CFCA4:  LDR             R3, =(_ZN10CCullZones23NumTunnelAttributeZonesE_ptr - 0x5CFCAA)
5CFCA6:  ADD             R3, PC; _ZN10CCullZones23NumTunnelAttributeZonesE_ptr
5CFCA8:  LDR             R3, [R3]; CCullZones::NumTunnelAttributeZones ...
5CFCAA:  LDR.W           R12, [R3]; CCullZones::NumTunnelAttributeZones
5CFCAE:  CMP.W           R12, #1
5CFCB2:  BLT.W           loc_5CFDBC
5CFCB6:  LDR             R3, =(_ZN10CCullZones21aTunnelAttributeZonesE_ptr - 0x5CFCC6)
5CFCB8:  VMOV            S0, R0
5CFCBC:  VMOV            S4, R2
5CFCC0:  MOVS            R2, #0
5CFCC2:  ADD             R3, PC; _ZN10CCullZones21aTunnelAttributeZonesE_ptr
5CFCC4:  VMOV            S2, R1
5CFCC8:  LDR             R0, [R3]; CCullZones::aTunnelAttributeZones ...
5CFCCA:  ADD.W           R1, R0, #0x10
5CFCCE:  MOVS            R0, #0
5CFCD0:  LDRSH.W         R3, [R1,#-4]
5CFCD4:  VMOV            S6, R3
5CFCD8:  VCVT.F32.S32    S6, S6
5CFCDC:  VCMPE.F32       S4, S6
5CFCE0:  VMRS            APSR_nzcv, FPSCR
5CFCE4:  BLE             loc_5CFDB2
5CFCE6:  LDRSH.W         R3, [R1,#-2]
5CFCEA:  VMOV            S6, R3
5CFCEE:  VCVT.F32.S32    S6, S6
5CFCF2:  VCMPE.F32       S4, S6
5CFCF6:  VMRS            APSR_nzcv, FPSCR
5CFCFA:  BGE             loc_5CFDB2
5CFCFC:  LDRSH.W         R4, [R1,#-0x10]; CCullZones::aTunnelAttributeZones
5CFD00:  LDRSH.W         R5, [R1,#-0xE]
5CFD04:  LDRSH.W         LR, [R1,#-0xC]
5CFD08:  VMOV            S8, R4
5CFD0C:  LDRSH.W         R3, [R1,#-0xA]
5CFD10:  VMOV            S6, R5
5CFD14:  VMOV            S12, LR
5CFD18:  VCVT.F32.S32    S6, S6
5CFD1C:  VCVT.F32.S32    S8, S8
5CFD20:  VMOV            S10, R3
5CFD24:  VCVT.F32.S32    S10, S10
5CFD28:  VCVT.F32.S32    S12, S12
5CFD2C:  VSUB.F32        S6, S2, S6
5CFD30:  VSUB.F32        S8, S0, S8
5CFD34:  VMUL.F32        S10, S6, S10
5CFD38:  VMUL.F32        S12, S8, S12
5CFD3C:  VADD.F32        S10, S12, S10
5CFD40:  VCMPE.F32       S10, #0.0
5CFD44:  VMRS            APSR_nzcv, FPSCR
5CFD48:  BLT             loc_5CFDB2
5CFD4A:  SMULBB.W        R3, R3, R3
5CFD4E:  SMLABB.W        R3, LR, LR, R3
5CFD52:  VMOV            S12, R3
5CFD56:  VCVT.F32.S32    S12, S12
5CFD5A:  VCMPE.F32       S10, S12
5CFD5E:  VMRS            APSR_nzcv, FPSCR
5CFD62:  BGT             loc_5CFDB2
5CFD64:  LDRSH.W         LR, [R1,#-8]
5CFD68:  LDRSH.W         R3, [R1,#-6]
5CFD6C:  VMOV            S12, LR
5CFD70:  VMOV            S10, R3
5CFD74:  VCVT.F32.S32    S10, S10
5CFD78:  VCVT.F32.S32    S12, S12
5CFD7C:  VMUL.F32        S6, S6, S10
5CFD80:  VMUL.F32        S8, S8, S12
5CFD84:  VADD.F32        S6, S8, S6
5CFD88:  VCMPE.F32       S6, #0.0
5CFD8C:  VMRS            APSR_nzcv, FPSCR
5CFD90:  BLT             loc_5CFDB2
5CFD92:  SMULBB.W        R3, R3, R3
5CFD96:  SMLABB.W        R3, LR, LR, R3
5CFD9A:  VMOV            S8, R3
5CFD9E:  VCVT.F32.S32    S8, S8
5CFDA2:  VCMPE.F32       S6, S8
5CFDA6:  VMRS            APSR_nzcv, FPSCR
5CFDAA:  ITT LE
5CFDAC:  LDRSHLE.W       R3, [R1]
5CFDB0:  ORRLE           R0, R3
5CFDB2:  ADDS            R2, #1
5CFDB4:  ADDS            R1, #0x12
5CFDB6:  CMP             R2, R12
5CFDB8:  BLT             loc_5CFCD0
5CFDBA:  POP             {R4,R5,R7,PC}
5CFDBC:  MOVS            R0, #0
5CFDBE:  POP             {R4,R5,R7,PC}
