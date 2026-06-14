; =========================================================
; Game Engine Function: _ZNK18CTaskComplexWander18ScanForBlockedNodeERK7CVectorPK7CEntity
; Address            : 0x5217B8 - 0x521824
; =========================================================

5217B8:  MOVS            R0, #0
5217BA:  CMP             R2, #0
5217BC:  IT EQ
5217BE:  BXEQ            LR
5217C0:  PUSH            {R7,LR}
5217C2:  MOV             R7, SP
5217C4:  LDR.W           R12, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5217D2)
5217C8:  VMOV.F32        S0, #1.0
5217CC:  LDR             R3, [R2,#0x14]
5217CE:  ADD             R12, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5217D0:  LDRSH.W         LR, [R2,#0x26]
5217D4:  VLDR            D16, [R1]
5217D8:  ADD.W           R1, R3, #0x30 ; '0'
5217DC:  LDR.W           R12, [R12]; CModelInfo::ms_modelInfoPtrs ...
5217E0:  CMP             R3, #0
5217E2:  LDR.W           R12, [R12,LR,LSL#2]
5217E6:  IT EQ
5217E8:  ADDEQ           R1, R2, #4
5217EA:  VLDR            D17, [R1]
5217EE:  VSUB.F32        D16, D16, D17
5217F2:  LDR.W           R1, [R12,#0x2C]
5217F6:  VLDR            S4, [R1,#0x24]
5217FA:  VMUL.F32        D1, D16, D16
5217FE:  VADD.F32        S0, S4, S0
521802:  VLDR            S4, =0.0
521806:  VADD.F32        S2, S2, S3
52180A:  VMUL.F32        S0, S0, S0
52180E:  VADD.F32        S2, S2, S4
521812:  VCMPE.F32       S2, S0
521816:  VMRS            APSR_nzcv, FPSCR
52181A:  IT LT
52181C:  MOVLT           R0, #1
52181E:  POP.W           {R7,LR}
521822:  BX              LR
