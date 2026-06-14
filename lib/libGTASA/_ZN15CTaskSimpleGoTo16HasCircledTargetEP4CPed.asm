; =========================================================
; Game Engine Function: _ZN15CTaskSimpleGoTo16HasCircledTargetEP4CPed
; Address            : 0x51C7E6 - 0x51C88E
; =========================================================

51C7E6:  LDR             R3, [R1,#0x14]
51C7E8:  LDRB.W          R12, [R1,#0x490]
51C7EC:  ADD.W           R2, R3, #0x30 ; '0'
51C7F0:  CMP             R3, #0
51C7F2:  IT EQ
51C7F4:  ADDEQ           R2, R1, #4
51C7F6:  VLDR            S2, [R2]
51C7FA:  MOVS.W          R1, R12,LSL#25
51C7FE:  VLDR            S0, [R2,#4]
51C802:  BMI             loc_51C822
51C804:  VLDR            S4, [R0,#0x14]
51C808:  VLDR            S6, [R2,#8]
51C80C:  VSUB.F32        S4, S6, S4
51C810:  VMOV.F32        S6, #2.0
51C814:  VABS.F32        S4, S4
51C818:  VCMPE.F32       S4, S6
51C81C:  VMRS            APSR_nzcv, FPSCR
51C820:  BGE             loc_51C88A
51C822:  VLDR            S4, [R0,#0xC]
51C826:  VCMPE.F32       S2, S4
51C82A:  VMRS            APSR_nzcv, FPSCR
51C82E:  BGE             loc_51C834
51C830:  MOVS            R1, #1
51C832:  B               loc_51C840
51C834:  VCMPE.F32       S2, S4
51C838:  VMRS            APSR_nzcv, FPSCR
51C83C:  BLE             loc_51C850
51C83E:  MOVS            R1, #2
51C840:  LDRB            R2, [R0,#0x1C]
51C842:  ORRS            R1, R2
51C844:  AND.W           R2, R2, #0xF0
51C848:  AND.W           R1, R1, #0xF
51C84C:  ORRS            R1, R2
51C84E:  STRB            R1, [R0,#0x1C]
51C850:  VLDR            S2, [R0,#0x10]
51C854:  VCMPE.F32       S0, S2
51C858:  VMRS            APSR_nzcv, FPSCR
51C85C:  BGE             loc_51C862
51C85E:  MOVS            R1, #4
51C860:  B               loc_51C86E
51C862:  VCMPE.F32       S0, S2
51C866:  VMRS            APSR_nzcv, FPSCR
51C86A:  BLE             loc_51C87C
51C86C:  MOVS            R1, #8
51C86E:  LDRB            R2, [R0,#0x1C]
51C870:  ORRS            R1, R2
51C872:  LSRS            R2, R2, #4
51C874:  BFI.W           R1, R2, #4, #0x1C
51C878:  STRB            R1, [R0,#0x1C]
51C87A:  B               loc_51C87E
51C87C:  LDRB            R1, [R0,#0x1C]
51C87E:  AND.W           R0, R1, #0xF
51C882:  CMP             R0, #0xF
51C884:  ITT EQ
51C886:  MOVEQ           R0, #1
51C888:  BXEQ            LR
51C88A:  MOVS            R0, #0
51C88C:  BX              LR
