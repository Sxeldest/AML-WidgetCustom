; =========================================================
; Game Engine Function: _ZN8CGarages26IsPointWithinHideOutGarageER7CVector
; Address            : 0x3144E0 - 0x3145AE
; =========================================================

3144E0:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x3144F2)
3144E2:  MOVW            R3, #0xFF07
3144E6:  VLDR            S0, [R0]
3144EA:  MOV.W           R12, #1
3144EE:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
3144F0:  VLDR            S2, [R0,#4]
3144F4:  VLDR            S4, [R0,#8]
3144F8:  MOVT            R3, #0x2781
3144FC:  LDR             R1, [R1]; CGarages::aGarages ...
3144FE:  ADD.W           R0, R1, #0x4C ; 'L'
314502:  MOV.W           R1, #0xFFFFFFFF
314506:  B               loc_314514
314508:  ADDS            R1, #1
31450A:  ADDS            R0, #0xD8
31450C:  CMP             R1, #0x31 ; '1'
31450E:  ITT GE
314510:  MOVGE           R0, #0
314512:  BXGE            LR
314514:  LDRB            R2, [R0]
314516:  SUBS            R2, #0x10
314518:  CMP             R2, #0x1D
31451A:  BHI             loc_314508
31451C:  LSL.W           R2, R12, R2
314520:  TST             R2, R3
314522:  BEQ             loc_314508
314524:  VLDR            S6, [R0,#-0x44]
314528:  VCMPE.F32       S6, S4
31452C:  VMRS            APSR_nzcv, FPSCR
314530:  BGT             loc_314508
314532:  VLDR            S6, [R0,#-0x30]
314536:  VCMPE.F32       S6, S4
31453A:  VMRS            APSR_nzcv, FPSCR
31453E:  BLT             loc_314508
314540:  VLDR            S6, [R0,#-0x4C]
314544:  VLDR            S8, [R0,#-0x48]
314548:  VSUB.F32        S6, S0, S6
31454C:  VLDR            S10, [R0,#-0x40]
314550:  VSUB.F32        S8, S2, S8
314554:  VLDR            S12, [R0,#-0x3C]
314558:  VMUL.F32        S10, S6, S10
31455C:  VMUL.F32        S12, S8, S12
314560:  VADD.F32        S10, S10, S12
314564:  VCMPE.F32       S10, #0.0
314568:  VMRS            APSR_nzcv, FPSCR
31456C:  BLT             loc_314508
31456E:  VLDR            S12, [R0,#-0x2C]
314572:  VCMPE.F32       S10, S12
314576:  VMRS            APSR_nzcv, FPSCR
31457A:  BGT             loc_314508
31457C:  VLDR            S10, [R0,#-0x38]
314580:  VLDR            S12, [R0,#-0x34]
314584:  VMUL.F32        S6, S6, S10
314588:  VMUL.F32        S8, S8, S12
31458C:  VADD.F32        S6, S6, S8
314590:  VCMPE.F32       S6, #0.0
314594:  VMRS            APSR_nzcv, FPSCR
314598:  BLT             loc_314508
31459A:  VLDR            S8, [R0,#-0x28]
31459E:  VCMPE.F32       S6, S8
3145A2:  VMRS            APSR_nzcv, FPSCR
3145A6:  ITT LE
3145A8:  MOVLE           R0, #1
3145AA:  BXLE            LR
3145AC:  B               loc_314508
