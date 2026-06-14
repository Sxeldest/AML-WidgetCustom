; =========================================================
; Game Engine Function: _ZNK25CTaskComplexHitPedWithCar11HitHurtsPedEP4CPed
; Address            : 0x50B814 - 0x50B870
; =========================================================

50B814:  PUSH            {R4,R5,R7,LR}
50B816:  ADD             R7, SP, #8
50B818:  MOV             R4, R1
50B81A:  MOV             R5, R0
50B81C:  MOV             R0, R4; this
50B81E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50B822:  VMOV.F32        S0, #10.0
50B826:  CMP             R0, #0
50B828:  VMOV.F32        S2, #6.0
50B82C:  IT NE
50B82E:  VMOVNE.F32      S2, S0
50B832:  VLDR            S0, [R5,#0x10]
50B836:  VCMPE.F32       S0, S2
50B83A:  VMRS            APSR_nzcv, FPSCR
50B83E:  ITT GT
50B840:  MOVGT           R0, #1
50B842:  POPGT           {R4,R5,R7,PC}
50B844:  VLDR            S4, =-0.8
50B848:  VMOV.F32        S2, #3.0
50B84C:  VLDR            S6, [R4,#0xEC]
50B850:  MOVS            R1, #0
50B852:  MOVS            R0, #0
50B854:  VCMPE.F32       S6, S4
50B858:  VMRS            APSR_nzcv, FPSCR
50B85C:  VCMPE.F32       S0, S2
50B860:  IT LT
50B862:  MOVLT           R1, #1
50B864:  VMRS            APSR_nzcv, FPSCR
50B868:  IT GT
50B86A:  MOVGT           R0, #1
50B86C:  ANDS            R0, R1
50B86E:  POP             {R4,R5,R7,PC}
