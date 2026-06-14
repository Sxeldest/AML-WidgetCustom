; =========================================================
; Game Engine Function: _ZN6CStats27FindMaxNumberOfGroupMembersEv
; Address            : 0x41A598 - 0x41A610
; =========================================================

41A598:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41A5A2)
41A59A:  VMOV.F32        S2, #10.0
41A59E:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41A5A0:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41A5A2:  VLDR            S0, [R0,#0x100]
41A5A6:  VCMPE.F32       S0, S2
41A5AA:  VMRS            APSR_nzcv, FPSCR
41A5AE:  ITT LT
41A5B0:  MOVLT           R0, #0
41A5B2:  BXLT            LR
41A5B4:  VLDR            S2, =60.0
41A5B8:  VCMPE.F32       S0, S2
41A5BC:  VMRS            APSR_nzcv, FPSCR
41A5C0:  BGE             loc_41A5C6
41A5C2:  MOVS            R0, #2
41A5C4:  BX              LR
41A5C6:  VLDR            S2, =160.0
41A5CA:  VCMPE.F32       S0, S2
41A5CE:  VMRS            APSR_nzcv, FPSCR
41A5D2:  ITT LT
41A5D4:  MOVLT           R0, #3
41A5D6:  BXLT            LR
41A5D8:  VLDR            S2, =330.0
41A5DC:  VCMPE.F32       S0, S2
41A5E0:  VMRS            APSR_nzcv, FPSCR
41A5E4:  BGE             loc_41A5EA
41A5E6:  MOVS            R0, #4
41A5E8:  BX              LR
41A5EA:  VLDR            S2, =540.0
41A5EE:  VCMPE.F32       S0, S2
41A5F2:  VMRS            APSR_nzcv, FPSCR
41A5F6:  ITT LT
41A5F8:  MOVLT           R0, #5
41A5FA:  BXLT            LR
41A5FC:  VLDR            S2, =800.0
41A600:  MOVS            R0, #7
41A602:  VCMPE.F32       S0, S2
41A606:  VMRS            APSR_nzcv, FPSCR
41A60A:  IT LT
41A60C:  MOVLT           R0, #6
41A60E:  BX              LR
