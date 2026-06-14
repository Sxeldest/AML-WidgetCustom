; =========================================================
; Game Engine Function: _ZN23CEventBuildingCollision24CanTreatBuildingAsObjectERK9CBuilding
; Address            : 0x3718B0 - 0x371942
; =========================================================

3718B0:  LDRB            R1, [R0,#0x1E]
3718B2:  LSLS            R1, R1, #0x19
3718B4:  ITT MI
3718B6:  MOVMI           R0, #1
3718B8:  BXMI            LR
3718BA:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3718C4)
3718BC:  LDRSH.W         R0, [R0,#0x26]
3718C0:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3718C2:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3718C4:  LDR.W           R0, [R1,R0,LSL#2]
3718C8:  LDR             R0, [R0,#0x2C]
3718CA:  VLDR            S0, [R0]
3718CE:  VLDR            S6, [R0,#0xC]
3718D2:  VLDR            S2, [R0,#4]
3718D6:  VLDR            S8, [R0,#0x10]
3718DA:  VSUB.F32        S0, S6, S0
3718DE:  VLDR            S4, [R0,#8]
3718E2:  VMOV.F32        S6, #2.0
3718E6:  VSUB.F32        S2, S8, S2
3718EA:  VLDR            S10, [R0,#0x14]
3718EE:  VSUB.F32        S4, S10, S4
3718F2:  VABS.F32        S0, S0
3718F6:  VABS.F32        S2, S2
3718FA:  VCMPE.F32       S4, S6
3718FE:  VMRS            APSR_nzcv, FPSCR
371902:  BGE             loc_37191E
371904:  VMOV.F32        S4, #6.0
371908:  MOVS            R0, #1
37190A:  VCMPE.F32       S0, S4
37190E:  VMRS            APSR_nzcv, FPSCR
371912:  ITT GE
371914:  VCMPEGE.F32     S2, S4
371918:  VMRSGE          APSR_nzcv, FPSCR
37191C:  BLT             locret_371940
37191E:  VMOV.F32        S4, #6.0
371922:  MOVS            R1, #0
371924:  MOVS            R0, #0
371926:  VCMPE.F32       S2, S4
37192A:  VMRS            APSR_nzcv, FPSCR
37192E:  VCMPE.F32       S0, S4
371932:  IT LT
371934:  MOVLT           R1, #1
371936:  VMRS            APSR_nzcv, FPSCR
37193A:  IT LT
37193C:  MOVLT           R0, #1
37193E:  ANDS            R0, R1
371940:  BX              LR
