; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCar14ControlSubTaskEP4CPed
; Address            : 0x50C6D0 - 0x50C89E
; =========================================================

50C6D0:  PUSH            {R4-R7,LR}
50C6D2:  ADD             R7, SP, #0xC
50C6D4:  PUSH.W          {R8}; CTask *
50C6D8:  MOV             R5, R0
50C6DA:  MOV             R4, R1
50C6DC:  LDRB            R0, [R5,#0xD]
50C6DE:  TST.W           R0, #2
50C6E2:  BNE             loc_50C722
50C6E4:  MOV             R0, R4; this
50C6E6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50C6EA:  CMP             R0, #1
50C6EC:  BNE             loc_50C73A
50C6EE:  LDR             R1, [R5,#0x1C]; CPed *
50C6F0:  CMP             R1, #0
50C6F2:  ITT NE
50C6F4:  LDRNE           R2, [R5,#0x54]; CVehicle *
50C6F6:  ADDSNE.W        R0, R2, #1
50C6FA:  BEQ             loc_50C73A
50C6FC:  LDR             R3, [R5,#8]; int
50C6FE:  MOV             R0, R4; this
50C700:  BLX             j__ZN13CCarEnterExit22IsPlayerToQuitCarEnterERK4CPedRK8CVehicleiP5CTask; CCarEnterExit::IsPlayerToQuitCarEnter(CPed const&,CVehicle const&,int,CTask *)
50C704:  CMP             R0, #1
50C706:  BNE             loc_50C73A
50C708:  LDR             R0, [R5,#8]
50C70A:  LDR             R1, [R0]
50C70C:  LDR             R1, [R1,#0x14]
50C70E:  BLX             R1
50C710:  MOVW            R1, #0x389
50C714:  CMP             R0, R1
50C716:  BNE             loc_50C73A
50C718:  MOVW            R0, #0x516
50C71C:  MOV.W           R8, #1
50C720:  B               loc_50C78A
50C722:  LDR             R1, [R5]
50C724:  AND.W           R0, R0, #0xFD
50C728:  STRB            R0, [R5,#0xD]
50C72A:  MOV             R0, R5
50C72C:  LDR             R2, [R1,#0x2C]
50C72E:  MOV             R1, R4
50C730:  POP.W           {R8}
50C734:  POP.W           {R4-R7,LR}
50C738:  BX              R2
50C73A:  LDR             R0, [R5,#8]
50C73C:  LDR             R1, [R0]
50C73E:  LDR             R1, [R1,#0x14]
50C740:  BLX             R1
50C742:  MOVW            R1, #0x389
50C746:  CMP             R0, R1
50C748:  BNE             loc_50C76A
50C74A:  LDRB.W          R0, [R5,#0x2C]
50C74E:  CBZ             R0, loc_50C76A
50C750:  LDRB.W          R0, [R5,#0x2D]
50C754:  CBZ             R0, loc_50C76E
50C756:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x50C75E)
50C758:  MOVS            R2, #0
50C75A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
50C75C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
50C75E:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
50C760:  STRB.W          R2, [R5,#0x2D]
50C764:  STR             R1, [R5,#0x24]
50C766:  MOV             R0, R1
50C768:  B               loc_50C778
50C76A:  MOVS            R0, #0xC8
50C76C:  B               loc_50C786
50C76E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x50C774)
50C770:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
50C772:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
50C774:  LDR             R0, [R5,#0x24]
50C776:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
50C778:  LDR             R2, [R5,#0x28]
50C77A:  ADD             R2, R0
50C77C:  MOVS            R0, #0xC8
50C77E:  CMP             R2, R1
50C780:  IT LS
50C782:  MOVWLS          R0, #0x516
50C786:  MOV.W           R8, #0
50C78A:  LDR             R2, [R5,#0x1C]
50C78C:  CMP             R2, #0
50C78E:  BEQ             loc_50C84A
50C790:  LDR             R1, [R2,#0x14]
50C792:  VLDR            S0, [R5,#0x30]
50C796:  ADD.W           R3, R1, #0x30 ; '0'
50C79A:  CMP             R1, #0
50C79C:  IT EQ
50C79E:  ADDEQ           R3, R2, #4
50C7A0:  VLDR            D16, [R5,#0x34]
50C7A4:  VLDR            S2, [R3]
50C7A8:  VLDR            D17, [R3,#4]
50C7AC:  VSUB.F32        S0, S0, S2
50C7B0:  VSUB.F32        D16, D16, D17
50C7B4:  VMUL.F32        D1, D16, D16
50C7B8:  VMUL.F32        S0, S0, S0
50C7BC:  VADD.F32        S0, S0, S2
50C7C0:  VADD.F32        S0, S0, S3
50C7C4:  VLDR            S2, =0.0625
50C7C8:  VCMPE.F32       S0, S2
50C7CC:  VMRS            APSR_nzcv, FPSCR
50C7D0:  BGT             loc_50C84A
50C7D2:  VLDR            S0, [R1,#0x10]
50C7D6:  VLDR            S6, [R5,#0x3C]
50C7DA:  VLDR            S2, [R1,#0x14]
50C7DE:  VLDR            S8, [R5,#0x40]
50C7E2:  VMUL.F32        S0, S6, S0
50C7E6:  VLDR            S4, [R1,#0x18]
50C7EA:  VMUL.F32        S2, S8, S2
50C7EE:  VLDR            S10, [R5,#0x44]
50C7F2:  VMUL.F32        S4, S10, S4
50C7F6:  VADD.F32        S0, S0, S2
50C7FA:  VADD.F32        S2, S0, S4
50C7FE:  VLDR            S0, =0.9
50C802:  VCMPE.F32       S2, S0
50C806:  VMRS            APSR_nzcv, FPSCR
50C80A:  BLT             loc_50C84A
50C80C:  CMP             R0, #0xC8
50C80E:  BNE             loc_50C84A
50C810:  VLDR            S2, [R1]
50C814:  VLDR            S8, [R5,#0x48]
50C818:  VLDR            S4, [R1,#4]
50C81C:  VLDR            S10, [R5,#0x4C]
50C820:  VMUL.F32        S2, S8, S2
50C824:  VLDR            S6, [R1,#8]
50C828:  VMUL.F32        S4, S10, S4
50C82C:  VLDR            S12, [R5,#0x50]
50C830:  VMUL.F32        S6, S12, S6
50C834:  VADD.F32        S2, S2, S4
50C838:  VADD.F32        S2, S2, S6
50C83C:  VCMPE.F32       S2, S0
50C840:  VMRS            APSR_nzcv, FPSCR
50C844:  BLT             loc_50C84A
50C846:  ADDS            R5, #8
50C848:  B               loc_50C890
50C84A:  LDR.W           R0, [R5,#8]!
50C84E:  MOVS            R2, #1
50C850:  MOVS            R3, #0
50C852:  LDR             R1, [R0]
50C854:  LDR             R6, [R1,#0x1C]
50C856:  MOV             R1, R4
50C858:  BLX             R6
50C85A:  CMP             R0, #1
50C85C:  BNE             loc_50C890
50C85E:  CMP.W           R8, #1
50C862:  BNE             loc_50C894
50C864:  LDR.W           R0, [R4,#0x440]
50C868:  LDR             R6, [R0,#0x10]
50C86A:  CBZ             R6, loc_50C894
50C86C:  LDR             R0, [R6]
50C86E:  LDR             R1, [R0,#0x14]
50C870:  MOV             R0, R6
50C872:  BLX             R1
50C874:  MOVW            R1, #0x2BD
50C878:  CMP             R0, R1
50C87A:  BNE             loc_50C894
50C87C:  LDR             R0, [R6]
50C87E:  MOV             R1, R4
50C880:  MOVS            R2, #0
50C882:  MOVS            R3, #0
50C884:  MOVS            R5, #0
50C886:  LDR.W           R12, [R0,#0x1C]
50C88A:  MOV             R0, R6
50C88C:  BLX             R12
50C88E:  B               loc_50C896
50C890:  LDR             R5, [R5]
50C892:  B               loc_50C896
50C894:  MOVS            R5, #0
50C896:  MOV             R0, R5
50C898:  POP.W           {R8}
50C89C:  POP             {R4-R7,PC}
