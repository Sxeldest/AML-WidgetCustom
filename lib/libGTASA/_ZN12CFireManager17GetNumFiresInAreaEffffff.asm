; =========================================================
; Game Engine Function: _ZN12CFireManager17GetNumFiresInAreaEffffff
; Address            : 0x3F3548 - 0x3F35D6
; =========================================================

3F3548:  VMOV            S8, R2
3F354C:  VLDR            S0, [SP,#arg_8]
3F3550:  VLDR            S2, [SP,#arg_4]
3F3554:  VMOV            S6, R3
3F3558:  VLDR            S4, [SP,#arg_0]
3F355C:  VMOV            S10, R1
3F3560:  MOVS            R2, #0
3F3562:  MOV.W           R12, #0
3F3566:  B               loc_3F3574
3F3568:  ADDS            R2, #0x28 ; '('
3F356A:  CMP.W           R2, #0x960
3F356E:  ITT EQ
3F3570:  MOVEQ           R0, R12
3F3572:  BXEQ            LR
3F3574:  LDRB            R3, [R0,R2]
3F3576:  AND.W           R3, R3, #3
3F357A:  CMP             R3, #1
3F357C:  BNE             loc_3F3568
3F357E:  ADDS            R3, R0, R2
3F3580:  VLDR            S12, [R3,#4]
3F3584:  VCMPE.F32       S12, S10
3F3588:  VMRS            APSR_nzcv, FPSCR
3F358C:  BLT             loc_3F3568
3F358E:  VCMPE.F32       S12, S4
3F3592:  VMRS            APSR_nzcv, FPSCR
3F3596:  BGT             loc_3F3568
3F3598:  VLDR            S12, [R3,#8]
3F359C:  VCMPE.F32       S12, S8
3F35A0:  VMRS            APSR_nzcv, FPSCR
3F35A4:  BLT             loc_3F3568
3F35A6:  VCMPE.F32       S12, S2
3F35AA:  VMRS            APSR_nzcv, FPSCR
3F35AE:  BGT             loc_3F3568
3F35B0:  VLDR            S12, [R3,#0xC]
3F35B4:  MOVS            R3, #0
3F35B6:  MOVS            R1, #0
3F35B8:  VCMPE.F32       S12, S6
3F35BC:  VMRS            APSR_nzcv, FPSCR
3F35C0:  VCMPE.F32       S12, S0
3F35C4:  IT GE
3F35C6:  MOVGE           R3, #1
3F35C8:  VMRS            APSR_nzcv, FPSCR
3F35CC:  IT LE
3F35CE:  MOVLE           R1, #1
3F35D0:  ANDS            R1, R3
3F35D2:  ADD             R12, R1
3F35D4:  B               loc_3F3568
