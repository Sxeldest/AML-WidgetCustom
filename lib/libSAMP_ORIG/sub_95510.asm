; =========================================================
; Game Engine Function: sub_95510
; Address            : 0x95510 - 0x95596
; =========================================================

95510:  LDR             R2, =(dword_1ACF68 - 0x95516)
95512:  ADD             R2, PC; dword_1ACF68
95514:  LDR             R2, [R2]
95516:  ADD.W           R0, R2, R0,LSL#2
9551A:  VLDR            S0, [R0,#0x3F4]
9551E:  MOVS            R0, #0
95520:  VCMP.F32        S0, #0.0
95524:  VMRS            APSR_nzcv, FPSCR
95528:  ITE EQ
9552A:  MOVEQ           R0, #1
9552C:  CMPNE           R1, #0
9552E:  BNE             loc_95532
95530:  BX              LR
95532:  VLDR            S2, [R2,#0x88]
95536:  VCMP.F32        S0, S2
9553A:  VMRS            APSR_nzcv, FPSCR
9553E:  BLE             loc_95592
95540:  VCMP.F32        S0, S2
95544:  VMRS            APSR_nzcv, FPSCR
95548:  ITTTT HI
9554A:  VMOVHI.F32      S4, #0.5
9554E:  VLDRHI          S6, [R2,#0x8C]
95552:  VMULHI.F32      S4, S6, S4
95556:  VCMPHI.F32      S4, #0.0
9555A:  IT HI
9555C:  VMRSHI          APSR_nzcv, FPSCR
95560:  BLS             loc_95592
95562:  VLDR            S6, [R2,#0x18]
95566:  VSUB.F32        S6, S0, S6
9556A:  VSUB.F32        S0, S0, S2
9556E:  VSUB.F32        S2, S6, S2
95572:  VDIV.F32        S0, S0, S4
95576:  VDIV.F32        S2, S2, S4
9557A:  VCVT.S32.F32    S0, S0
9557E:  VCVT.S32.F32    S2, S2
95582:  VMOV            R0, S0
95586:  VMOV            R1, S2
9558A:  CMP             R0, R1
9558C:  ITT GT
9558E:  MOVGT           R0, #1
95590:  BXGT            LR
95592:  MOVS            R0, #0
95594:  BX              LR
