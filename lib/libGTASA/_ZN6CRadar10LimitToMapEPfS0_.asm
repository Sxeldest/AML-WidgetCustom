; =========================================================
; Game Engine Function: _ZN6CRadar10LimitToMapEPfS0_
; Address            : 0x442494 - 0x4425BA
; =========================================================

442494:  PUSH            {R4,R5,R7,LR}
442496:  ADD             R7, SP, #8
442498:  MOV             R4, R1
44249A:  MOV             R5, R0
44249C:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
4424A0:  CMP             R0, #1
4424A2:  IT EQ
4424A4:  POPEQ           {R4,R5,R7,PC}
4424A6:  LDR             R0, =(gMobileMenu_ptr - 0x4424AC)
4424A8:  ADD             R0, PC; gMobileMenu_ptr
4424AA:  LDR             R0, [R0]; gMobileMenu
4424AC:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
4424AE:  CMP             R1, #0
4424B0:  ITT EQ
4424B2:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
4424B4:  CMPEQ           R0, #0
4424B6:  BNE             loc_4424BE
4424B8:  VLDR            S0, =140.0
4424BC:  B               loc_4424D0
4424BE:  LDR             R0, =(gMobileMenu_ptr - 0x4424C4)
4424C0:  ADD             R0, PC; gMobileMenu_ptr
4424C2:  LDR             R0, [R0]; gMobileMenu
4424C4:  VLDR            S0, [R0,#0x58]
4424C8:  VCVT.S32.F32    S0, S0
4424CC:  VCVT.F32.S32    S0, S0
4424D0:  LDR             R0, =(RsGlobal_ptr - 0x4424D8)
4424D2:  LDR             R1, =(gMobileMenu_ptr - 0x4424DA)
4424D4:  ADD             R0, PC; RsGlobal_ptr
4424D6:  ADD             R1, PC; gMobileMenu_ptr
4424D8:  LDR             R0, [R0]; RsGlobal
4424DA:  LDR             R1, [R1]; gMobileMenu
4424DC:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
4424DE:  VMOV            S2, R0
4424E2:  VCVT.F32.S32    S4, S2
4424E6:  VLDR            S2, =640.0
4424EA:  VDIV.F32        S6, S4, S2
4424EE:  VLDR            S4, [R1,#0x5C]
4424F2:  VSUB.F32        S8, S4, S0
4424F6:  VMUL.F32        S6, S8, S6
4424FA:  VLDR            S8, [R5]
4424FE:  VCMPE.F32       S8, S6
442502:  VMRS            APSR_nzcv, FPSCR
442506:  BGE             loc_442522
442508:  LDR             R0, =(RsGlobal_ptr - 0x442514)
44250A:  VMOV.F32        S8, S6
44250E:  LDR             R1, =(gMobileMenu_ptr - 0x44251A)
442510:  ADD             R0, PC; RsGlobal_ptr
442512:  VSTR            S6, [R5]
442516:  ADD             R1, PC; gMobileMenu_ptr
442518:  LDR             R0, [R0]; RsGlobal
44251A:  LDR             R1, [R1]; gMobileMenu
44251C:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
44251E:  VLDR            S4, [R1,#0x5C]
442522:  VMOV            S6, R0
442526:  LDR             R0, =(RsGlobal_ptr - 0x442536)
442528:  VADD.F32        S4, S0, S4
44252C:  LDR             R1, =(gMobileMenu_ptr - 0x442538)
44252E:  VCVT.F32.S32    S6, S6
442532:  ADD             R0, PC; RsGlobal_ptr
442534:  ADD             R1, PC; gMobileMenu_ptr
442536:  LDR             R0, [R0]; RsGlobal
442538:  LDR             R1, [R1]; gMobileMenu
44253A:  VDIV.F32        S2, S6, S2
44253E:  VMUL.F32        S2, S4, S2
442542:  VCMPE.F32       S8, S2
442546:  VMRS            APSR_nzcv, FPSCR
44254A:  IT GT
44254C:  VSTRGT          S2, [R5]
442550:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
442552:  VMOV            S2, R0
442556:  VCVT.F32.S32    S4, S2
44255A:  VLDR            S2, =448.0
44255E:  VDIV.F32        S6, S4, S2
442562:  VLDR            S4, [R1,#0x60]
442566:  VSUB.F32        S8, S4, S0
44256A:  VMUL.F32        S6, S8, S6
44256E:  VLDR            S8, [R4]
442572:  VCMPE.F32       S8, S6
442576:  VMRS            APSR_nzcv, FPSCR
44257A:  BGE             loc_442596
44257C:  LDR             R0, =(RsGlobal_ptr - 0x442588)
44257E:  VMOV.F32        S8, S6
442582:  LDR             R1, =(gMobileMenu_ptr - 0x44258E)
442584:  ADD             R0, PC; RsGlobal_ptr
442586:  VSTR            S6, [R4]
44258A:  ADD             R1, PC; gMobileMenu_ptr
44258C:  LDR             R0, [R0]; RsGlobal
44258E:  LDR             R1, [R1]; gMobileMenu
442590:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
442592:  VLDR            S4, [R1,#0x60]
442596:  VMOV            S6, R0
44259A:  VADD.F32        S0, S0, S4
44259E:  VCVT.F32.S32    S6, S6
4425A2:  VDIV.F32        S2, S6, S2
4425A6:  VMUL.F32        S0, S0, S2
4425AA:  VCMPE.F32       S8, S0
4425AE:  VMRS            APSR_nzcv, FPSCR
4425B2:  IT GT
4425B4:  VSTRGT          S0, [R4]
4425B8:  POP             {R4,R5,R7,PC}
