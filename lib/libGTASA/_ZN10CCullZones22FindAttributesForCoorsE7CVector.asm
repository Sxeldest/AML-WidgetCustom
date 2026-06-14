; =========================================================
; Game Engine Function: _ZN10CCullZones22FindAttributesForCoorsE7CVector
; Address            : 0x5CF91C - 0x5CFA3C
; =========================================================

5CF91C:  PUSH            {R4,R5,R7,LR}
5CF91E:  ADD             R7, SP, #8
5CF920:  LDR             R3, =(_ZN10CCullZones17NumAttributeZonesE_ptr - 0x5CF926)
5CF922:  ADD             R3, PC; _ZN10CCullZones17NumAttributeZonesE_ptr
5CF924:  LDR             R3, [R3]; CCullZones::NumAttributeZones ...
5CF926:  LDR.W           R12, [R3]; CCullZones::NumAttributeZones
5CF92A:  CMP.W           R12, #1
5CF92E:  BLT.W           loc_5CFA38
5CF932:  LDR             R3, =(_ZN10CCullZones15aAttributeZonesE_ptr - 0x5CF942)
5CF934:  VMOV            S0, R0
5CF938:  VMOV            S4, R2
5CF93C:  MOVS            R2, #0
5CF93E:  ADD             R3, PC; _ZN10CCullZones15aAttributeZonesE_ptr
5CF940:  VMOV            S2, R1
5CF944:  LDR             R0, [R3]; CCullZones::aAttributeZones ...
5CF946:  ADD.W           R1, R0, #0x10
5CF94A:  MOVS            R0, #0
5CF94C:  LDRSH.W         R3, [R1,#-4]
5CF950:  VMOV            S6, R3
5CF954:  VCVT.F32.S32    S6, S6
5CF958:  VCMPE.F32       S4, S6
5CF95C:  VMRS            APSR_nzcv, FPSCR
5CF960:  BLE             loc_5CFA2E
5CF962:  LDRSH.W         R3, [R1,#-2]
5CF966:  VMOV            S6, R3
5CF96A:  VCVT.F32.S32    S6, S6
5CF96E:  VCMPE.F32       S4, S6
5CF972:  VMRS            APSR_nzcv, FPSCR
5CF976:  BGE             loc_5CFA2E
5CF978:  LDRSH.W         R4, [R1,#-0x10]; CCullZones::aAttributeZones
5CF97C:  LDRSH.W         R5, [R1,#-0xE]
5CF980:  LDRSH.W         LR, [R1,#-0xC]
5CF984:  VMOV            S8, R4
5CF988:  LDRSH.W         R3, [R1,#-0xA]
5CF98C:  VMOV            S6, R5
5CF990:  VMOV            S12, LR
5CF994:  VCVT.F32.S32    S6, S6
5CF998:  VCVT.F32.S32    S8, S8
5CF99C:  VMOV            S10, R3
5CF9A0:  VCVT.F32.S32    S10, S10
5CF9A4:  VCVT.F32.S32    S12, S12
5CF9A8:  VSUB.F32        S6, S2, S6
5CF9AC:  VSUB.F32        S8, S0, S8
5CF9B0:  VMUL.F32        S10, S6, S10
5CF9B4:  VMUL.F32        S12, S8, S12
5CF9B8:  VADD.F32        S10, S12, S10
5CF9BC:  VCMPE.F32       S10, #0.0
5CF9C0:  VMRS            APSR_nzcv, FPSCR
5CF9C4:  BLT             loc_5CFA2E
5CF9C6:  SMULBB.W        R3, R3, R3
5CF9CA:  SMLABB.W        R3, LR, LR, R3
5CF9CE:  VMOV            S12, R3
5CF9D2:  VCVT.F32.S32    S12, S12
5CF9D6:  VCMPE.F32       S10, S12
5CF9DA:  VMRS            APSR_nzcv, FPSCR
5CF9DE:  BGT             loc_5CFA2E
5CF9E0:  LDRSH.W         LR, [R1,#-8]
5CF9E4:  LDRSH.W         R3, [R1,#-6]
5CF9E8:  VMOV            S12, LR
5CF9EC:  VMOV            S10, R3
5CF9F0:  VCVT.F32.S32    S10, S10
5CF9F4:  VCVT.F32.S32    S12, S12
5CF9F8:  VMUL.F32        S6, S6, S10
5CF9FC:  VMUL.F32        S8, S8, S12
5CFA00:  VADD.F32        S6, S8, S6
5CFA04:  VCMPE.F32       S6, #0.0
5CFA08:  VMRS            APSR_nzcv, FPSCR
5CFA0C:  BLT             loc_5CFA2E
5CFA0E:  SMULBB.W        R3, R3, R3
5CFA12:  SMLABB.W        R3, LR, LR, R3
5CFA16:  VMOV            S8, R3
5CFA1A:  VCVT.F32.S32    S8, S8
5CFA1E:  VCMPE.F32       S6, S8
5CFA22:  VMRS            APSR_nzcv, FPSCR
5CFA26:  ITT LE
5CFA28:  LDRSHLE.W       R3, [R1]
5CFA2C:  ORRLE           R0, R3
5CFA2E:  ADDS            R2, #1
5CFA30:  ADDS            R1, #0x12
5CFA32:  CMP             R2, R12
5CFA34:  BLT             loc_5CF94C
5CFA36:  POP             {R4,R5,R7,PC}
5CFA38:  MOVS            R0, #0
5CFA3A:  POP             {R4,R5,R7,PC}
