; =========================================================
; Game Engine Function: _ZN10CCullZones36FindZoneWithStairsAttributeForPlayerEv
; Address            : 0x5CFEE0 - 0x5D0000
; =========================================================

5CFEE0:  PUSH            {R4,R6,R7,LR}
5CFEE2:  ADD             R7, SP, #8
5CFEE4:  SUB             SP, SP, #0x10
5CFEE6:  ADD             R0, SP, #0x18+var_14; int
5CFEE8:  MOV.W           R1, #0xFFFFFFFF
5CFEEC:  BLX.W           j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5CFEF0:  LDR             R0, =(_ZN10CCullZones17NumAttributeZonesE_ptr - 0x5CFEF6)
5CFEF2:  ADD             R0, PC; _ZN10CCullZones17NumAttributeZonesE_ptr
5CFEF4:  LDR             R0, [R0]; CCullZones::NumAttributeZones ...
5CFEF6:  LDR             R1, [R0]; CCullZones::NumAttributeZones
5CFEF8:  CMP             R1, #1
5CFEFA:  BLT             loc_5CFFFA
5CFEFC:  LDR             R0, =(_ZN10CCullZones15aAttributeZonesE_ptr - 0x5CFF08)
5CFEFE:  MOVS            R2, #0
5CFF00:  VLDR            S0, [SP,#0x18+var_14]
5CFF04:  ADD             R0, PC; _ZN10CCullZones15aAttributeZonesE_ptr
5CFF06:  VLDR            S2, [SP,#0x18+var_10]
5CFF0A:  VLDR            S4, [SP,#0x18+var_C]
5CFF0E:  LDR             R0, [R0]; CCullZones::aAttributeZones ...
5CFF10:  LDRB            R3, [R0,#0x10]
5CFF12:  LSLS            R3, R3, #0x1E
5CFF14:  BPL             loc_5CFFF2
5CFF16:  LDRSH.W         R3, [R0,#0xC]
5CFF1A:  VMOV            S6, R3
5CFF1E:  VCVT.F32.S32    S6, S6
5CFF22:  VCMPE.F32       S4, S6
5CFF26:  VMRS            APSR_nzcv, FPSCR
5CFF2A:  BLE             loc_5CFFF2
5CFF2C:  LDRSH.W         R3, [R0,#0xE]
5CFF30:  VMOV            S6, R3
5CFF34:  VCVT.F32.S32    S6, S6
5CFF38:  VCMPE.F32       S4, S6
5CFF3C:  VMRS            APSR_nzcv, FPSCR
5CFF40:  BGE             loc_5CFFF2
5CFF42:  LDRSH.W         R3, [R0]; CCullZones::aAttributeZones
5CFF46:  LDRSH.W         R4, [R0,#2]
5CFF4A:  LDRSH.W         R12, [R0,#4]
5CFF4E:  VMOV            S8, R3
5CFF52:  LDRSH.W         LR, [R0,#6]
5CFF56:  VMOV            S6, R4
5CFF5A:  VMOV            S12, R12
5CFF5E:  VCVT.F32.S32    S6, S6
5CFF62:  VCVT.F32.S32    S8, S8
5CFF66:  VMOV            S10, LR
5CFF6A:  VCVT.F32.S32    S10, S10
5CFF6E:  VCVT.F32.S32    S12, S12
5CFF72:  VSUB.F32        S6, S2, S6
5CFF76:  VSUB.F32        S8, S0, S8
5CFF7A:  VMUL.F32        S10, S6, S10
5CFF7E:  VMUL.F32        S12, S8, S12
5CFF82:  VADD.F32        S10, S12, S10
5CFF86:  VCMPE.F32       S10, #0.0
5CFF8A:  VMRS            APSR_nzcv, FPSCR
5CFF8E:  BLT             loc_5CFFF2
5CFF90:  SMULBB.W        R3, LR, LR
5CFF94:  SMLABB.W        R3, R12, R12, R3
5CFF98:  VMOV            S12, R3
5CFF9C:  VCVT.F32.S32    S12, S12
5CFFA0:  VCMPE.F32       S10, S12
5CFFA4:  VMRS            APSR_nzcv, FPSCR
5CFFA8:  BGT             loc_5CFFF2
5CFFAA:  LDRSH.W         R12, [R0,#8]
5CFFAE:  LDRSH.W         R3, [R0,#0xA]
5CFFB2:  VMOV            S12, R12
5CFFB6:  VMOV            S10, R3
5CFFBA:  VCVT.F32.S32    S10, S10
5CFFBE:  VCVT.F32.S32    S12, S12
5CFFC2:  VMUL.F32        S6, S6, S10
5CFFC6:  VMUL.F32        S8, S8, S12
5CFFCA:  VADD.F32        S6, S8, S6
5CFFCE:  VCMPE.F32       S6, #0.0
5CFFD2:  VMRS            APSR_nzcv, FPSCR
5CFFD6:  BLT             loc_5CFFF2
5CFFD8:  SMULBB.W        R3, R3, R3
5CFFDC:  SMLABB.W        R3, R12, R12, R3
5CFFE0:  VMOV            S8, R3
5CFFE4:  VCVT.F32.S32    S8, S8
5CFFE8:  VCMPE.F32       S6, S8
5CFFEC:  VMRS            APSR_nzcv, FPSCR
5CFFF0:  BLE             loc_5CFFFC
5CFFF2:  ADDS            R2, #1
5CFFF4:  ADDS            R0, #0x12
5CFFF6:  CMP             R2, R1
5CFFF8:  BLT             loc_5CFF10
5CFFFA:  MOVS            R0, #0
5CFFFC:  ADD             SP, SP, #0x10
5CFFFE:  POP             {R4,R6,R7,PC}
