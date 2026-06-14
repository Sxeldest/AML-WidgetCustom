; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCouple14GetPartnerSideEP4CPed
; Address            : 0x536EC0 - 0x536F42
; =========================================================

536EC0:  LDR.W           R12, [R0,#0x10]
536EC4:  LDR             R2, [R1,#0x14]
536EC6:  LDR.W           R0, [R12,#0x14]
536ECA:  ADD.W           R3, R2, #0x30 ; '0'
536ECE:  CMP             R2, #0
536ED0:  IT EQ
536ED2:  ADDEQ           R3, R1, #4
536ED4:  ADD.W           R1, R0, #0x30 ; '0'
536ED8:  CMP             R0, #0
536EDA:  VLDR            S0, [R3]
536EDE:  VLDR            S6, [R0]
536EE2:  VLDR            S2, [R3,#4]
536EE6:  VLDR            S8, [R0,#4]
536EEA:  VMUL.F32        S0, S6, S0
536EEE:  VLDR            S10, [R0,#8]
536EF2:  MOV.W           R0, #1
536EF6:  VLDR            S4, [R3,#8]
536EFA:  IT EQ
536EFC:  ADDEQ.W         R1, R12, #4
536F00:  VLDR            S12, [R1]
536F04:  VMUL.F32        S2, S8, S2
536F08:  VLDR            S14, [R1,#4]
536F0C:  VMUL.F32        S4, S10, S4
536F10:  VMUL.F32        S6, S6, S12
536F14:  VLDR            S1, [R1,#8]
536F18:  VMUL.F32        S8, S8, S14
536F1C:  VADD.F32        S0, S0, S2
536F20:  VMUL.F32        S2, S10, S1
536F24:  VADD.F32        S6, S6, S8
536F28:  VADD.F32        S0, S0, S4
536F2C:  VADD.F32        S2, S6, S2
536F30:  VSUB.F32        S0, S0, S2
536F34:  VCMPE.F32       S0, #0.0
536F38:  VMRS            APSR_nzcv, FPSCR
536F3C:  IT LT
536F3E:  MOVLT           R0, #2
536F40:  BX              LR
