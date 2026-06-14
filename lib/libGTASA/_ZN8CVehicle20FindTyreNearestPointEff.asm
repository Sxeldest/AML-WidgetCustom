; =========================================================
; Game Engine Function: _ZN8CVehicle20FindTyreNearestPointEff
; Address            : 0x583A10 - 0x583ABA
; =========================================================

583A10:  LDR             R3, [R0,#0x14]
583A12:  VMOV            S0, R2
583A16:  VMOV            S6, R1
583A1A:  ADD.W           R2, R3, #0x30 ; '0'
583A1E:  CMP             R3, #0
583A20:  IT EQ
583A22:  ADDEQ           R2, R0, #4
583A24:  VLDR            S8, [R3,#0x18]
583A28:  VLDR            S2, [R2,#4]
583A2C:  VLDR            S4, [R2]
583A30:  VSUB.F32        S2, S0, S2
583A34:  LDR.W           R0, [R0,#0x5A0]
583A38:  VSUB.F32        S0, S6, S4
583A3C:  VLDR            S4, [R3,#0x10]
583A40:  VLDR            S6, [R3,#0x14]
583A44:  CMP             R0, #9
583A46:  VMUL.F32        S10, S2, S6
583A4A:  VLDR            S6, =0.0
583A4E:  VMUL.F32        S4, S0, S4
583A52:  VMUL.F32        S8, S8, S6
583A56:  VADD.F32        S4, S4, S10
583A5A:  VADD.F32        S4, S4, S8
583A5E:  BNE             loc_583A70
583A60:  VCMPE.F32       S4, #0.0
583A64:  MOVS            R0, #2
583A66:  VMRS            APSR_nzcv, FPSCR
583A6A:  IT GT
583A6C:  MOVGT           R0, #0
583A6E:  BX              LR
583A70:  VLDR            S8, [R3]
583A74:  VCMPE.F32       S4, #0.0
583A78:  VLDR            S10, [R3,#4]
583A7C:  VMUL.F32        S0, S0, S8
583A80:  VLDR            S12, [R3,#8]
583A84:  VMUL.F32        S2, S2, S10
583A88:  VMRS            APSR_nzcv, FPSCR
583A8C:  VMUL.F32        S6, S12, S6
583A90:  VADD.F32        S0, S0, S2
583A94:  VADD.F32        S0, S0, S6
583A98:  BLE             loc_583AAA
583A9A:  VCMPE.F32       S0, #0.0
583A9E:  MOVS            R0, #0
583AA0:  VMRS            APSR_nzcv, FPSCR
583AA4:  IT GT
583AA6:  MOVGT           R0, #1
583AA8:  BX              LR
583AAA:  VCMPE.F32       S0, #0.0
583AAE:  MOVS            R0, #2
583AB0:  VMRS            APSR_nzcv, FPSCR
583AB4:  IT GT
583AB6:  MOVGT           R0, #3
583AB8:  BX              LR
