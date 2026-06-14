; =========================================================
; Game Engine Function: _ZN10CCullZones28FindMirrorAttributesForCoorsE7CVector
; Address            : 0x5CFDC8 - 0x5CFED8
; =========================================================

5CFDC8:  PUSH            {R4,R6,R7,LR}
5CFDCA:  ADD             R7, SP, #8
5CFDCC:  LDR             R3, =(_ZN10CCullZones23NumMirrorAttributeZonesE_ptr - 0x5CFDD2)
5CFDCE:  ADD             R3, PC; _ZN10CCullZones23NumMirrorAttributeZonesE_ptr
5CFDD0:  LDR             R3, [R3]; CCullZones::NumMirrorAttributeZones ...
5CFDD2:  LDR.W           R12, [R3]; CCullZones::NumMirrorAttributeZones
5CFDD6:  CMP.W           R12, #1
5CFDDA:  BLT             loc_5CFED4
5CFDDC:  LDR             R3, =(_ZN10CCullZones21aMirrorAttributeZonesE_ptr - 0x5CFDEC)
5CFDDE:  VMOV            S0, R0
5CFDE2:  VMOV            S2, R1
5CFDE6:  MOVS            R1, #0
5CFDE8:  ADD             R3, PC; _ZN10CCullZones21aMirrorAttributeZonesE_ptr
5CFDEA:  VMOV            S4, R2
5CFDEE:  LDR             R0, [R3]; CCullZones::aMirrorAttributeZones ...
5CFDF0:  LDRSH.W         R2, [R0,#0xC]
5CFDF4:  VMOV            S6, R2
5CFDF8:  VCVT.F32.S32    S6, S6
5CFDFC:  VCMPE.F32       S4, S6
5CFE00:  VMRS            APSR_nzcv, FPSCR
5CFE04:  BLE             loc_5CFECC
5CFE06:  LDRSH.W         R2, [R0,#0xE]
5CFE0A:  VMOV            S6, R2
5CFE0E:  VCVT.F32.S32    S6, S6
5CFE12:  VCMPE.F32       S4, S6
5CFE16:  VMRS            APSR_nzcv, FPSCR
5CFE1A:  BGE             loc_5CFECC
5CFE1C:  LDRSH.W         R2, [R0]; CCullZones::aMirrorAttributeZones
5CFE20:  LDRSH.W         R4, [R0,#2]
5CFE24:  LDRSH.W         LR, [R0,#4]
5CFE28:  VMOV            S8, R2
5CFE2C:  LDRSH.W         R3, [R0,#6]
5CFE30:  VMOV            S6, R4
5CFE34:  VMOV            S12, LR
5CFE38:  VCVT.F32.S32    S6, S6
5CFE3C:  VCVT.F32.S32    S8, S8
5CFE40:  VMOV            S10, R3
5CFE44:  VCVT.F32.S32    S10, S10
5CFE48:  VCVT.F32.S32    S12, S12
5CFE4C:  VSUB.F32        S6, S2, S6
5CFE50:  VSUB.F32        S8, S0, S8
5CFE54:  VMUL.F32        S10, S6, S10
5CFE58:  VMUL.F32        S12, S8, S12
5CFE5C:  VADD.F32        S10, S12, S10
5CFE60:  VCMPE.F32       S10, #0.0
5CFE64:  VMRS            APSR_nzcv, FPSCR
5CFE68:  BLT             loc_5CFECC
5CFE6A:  SMULBB.W        R2, R3, R3
5CFE6E:  SMLABB.W        R2, LR, LR, R2
5CFE72:  VMOV            S12, R2
5CFE76:  VCVT.F32.S32    S12, S12
5CFE7A:  VCMPE.F32       S10, S12
5CFE7E:  VMRS            APSR_nzcv, FPSCR
5CFE82:  BGT             loc_5CFECC
5CFE84:  LDRSH.W         R2, [R0,#8]
5CFE88:  LDRSH.W         R3, [R0,#0xA]
5CFE8C:  VMOV            S12, R2
5CFE90:  VMOV            S10, R3
5CFE94:  VCVT.F32.S32    S10, S10
5CFE98:  VCVT.F32.S32    S12, S12
5CFE9C:  VMUL.F32        S6, S6, S10
5CFEA0:  VMUL.F32        S8, S8, S12
5CFEA4:  VADD.F32        S6, S8, S6
5CFEA8:  VCMPE.F32       S6, #0.0
5CFEAC:  VMRS            APSR_nzcv, FPSCR
5CFEB0:  BLT             loc_5CFECC
5CFEB2:  SMULBB.W        R3, R3, R3
5CFEB6:  SMLABB.W        R2, R2, R2, R3
5CFEBA:  VMOV            S8, R2
5CFEBE:  VCVT.F32.S32    S8, S8
5CFEC2:  VCMPE.F32       S6, S8
5CFEC6:  VMRS            APSR_nzcv, FPSCR
5CFECA:  BLE             locret_5CFED6
5CFECC:  ADDS            R1, #1
5CFECE:  ADDS            R0, #0x18
5CFED0:  CMP             R1, R12
5CFED2:  BLT             loc_5CFDF0
5CFED4:  MOVS            R0, #0
5CFED6:  POP             {R4,R6,R7,PC}
