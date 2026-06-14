; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim16ProcessControlAIEP4CPed
; Address            : 0x53A564 - 0x53A8E0
; =========================================================

53A564:  PUSH            {R4-R7,LR}
53A566:  ADD             R7, SP, #0xC
53A568:  PUSH.W          {R11}
53A56C:  VPUSH           {D8}
53A570:  SUB             SP, SP, #0x10
53A572:  MOV             R5, R0
53A574:  MOV             R4, R1
53A576:  LDR             R0, [R5,#0x20]
53A578:  MOVS            R1, #0
53A57A:  STRH            R1, [R5,#0xA]
53A57C:  CMP             R0, #0
53A57E:  BEQ             loc_53A64C
53A580:  LDR             R1, [R4,#0x14]
53A582:  LDR             R2, [R0,#0x14]
53A584:  ADD.W           R3, R1, #0x30 ; '0'
53A588:  CMP             R1, #0
53A58A:  IT EQ
53A58C:  ADDEQ           R3, R4, #4
53A58E:  ADD.W           R1, R2, #0x30 ; '0'
53A592:  CMP             R2, #0
53A594:  VLDR            S0, [R3]
53A598:  VLDR            S2, [R3,#4]
53A59C:  VLDR            S4, [R3,#8]
53A5A0:  IT EQ
53A5A2:  ADDEQ           R1, R0, #4
53A5A4:  VLDR            S6, [R1]
53A5A8:  ADD             R0, SP, #0x28+var_24; this
53A5AA:  VLDR            S8, [R1,#4]
53A5AE:  VLDR            S10, [R1,#8]
53A5B2:  VSUB.F32        S0, S6, S0
53A5B6:  VSUB.F32        S2, S8, S2
53A5BA:  VSUB.F32        S4, S10, S4
53A5BE:  VSTR            S2, [SP,#0x28+var_20]
53A5C2:  VSTR            S0, [SP,#0x28+var_24]
53A5C6:  VSTR            S4, [SP,#0x28+var_1C]
53A5CA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
53A5CE:  VLDR            S0, [R5,#0x54]
53A5D2:  VCMP.F32        S0, #0.0
53A5D6:  VMRS            APSR_nzcv, FPSCR
53A5DA:  BNE             loc_53A600
53A5DC:  BLX             rand
53A5E0:  AND.W           R0, R0, #3
53A5E4:  VMOV.F32        S0, #0.5
53A5E8:  VMOV.F32        S4, #1.5
53A5EC:  VMOV            S2, R0
53A5F0:  VCVT.F32.S32    S2, S2
53A5F4:  VMUL.F32        S0, S2, S0
53A5F8:  VADD.F32        S0, S0, S4
53A5FC:  VSTR            S0, [R5,#0x54]
53A600:  VLDR            S2, [SP,#0x28+var_24]
53A604:  VLDR            S4, [SP,#0x28+var_20]
53A608:  VLDR            S6, [SP,#0x28+var_1C]
53A60C:  VMUL.F32        S2, S0, S2
53A610:  LDR             R0, [R5,#0x20]
53A612:  VMUL.F32        S4, S0, S4
53A616:  VMUL.F32        S6, S0, S6
53A61A:  LDR             R1, [R0,#0x14]
53A61C:  ADD.W           R2, R1, #0x30 ; '0'
53A620:  CMP             R1, #0
53A622:  IT EQ
53A624:  ADDEQ           R2, R0, #4
53A626:  VLDR            S0, [R2]
53A62A:  VLDR            S8, [R2,#4]
53A62E:  VLDR            S10, [R2,#8]
53A632:  VSUB.F32        S0, S0, S2
53A636:  VSUB.F32        S4, S8, S4
53A63A:  VSUB.F32        S2, S10, S6
53A63E:  VSTR            S0, [R5,#0x14]
53A642:  VSTR            S4, [R5,#0x18]
53A646:  VSTR            S2, [R5,#0x1C]
53A64A:  B               loc_53A650
53A64C:  VLDR            S0, [R5,#0x14]
53A650:  VCMP.F32        S0, #0.0
53A654:  VLDR            S2, [R5,#0x18]
53A658:  VMRS            APSR_nzcv, FPSCR
53A65C:  MOV.W           R1, #0
53A660:  VCMP.F32        S2, #0.0
53A664:  MOV.W           R0, #0
53A668:  IT NE
53A66A:  MOVNE           R1, #1
53A66C:  VMRS            APSR_nzcv, FPSCR
53A670:  IT NE
53A672:  MOVNE           R0, #1
53A674:  ORRS            R0, R1
53A676:  BNE             loc_53A688
53A678:  VLDR            S4, [R5,#0x1C]
53A67C:  VCMP.F32        S4, #0.0
53A680:  VMRS            APSR_nzcv, FPSCR
53A684:  BEQ.W           loc_53A788
53A688:  LDR             R0, [R4,#0x14]
53A68A:  ADDS            R6, R4, #4
53A68C:  CMP             R0, #0
53A68E:  MOV             R1, R6
53A690:  IT NE
53A692:  ADDNE.W         R1, R0, #0x30 ; '0'
53A696:  VLDR            S4, [R1]
53A69A:  VLDR            S6, [R1,#4]
53A69E:  VSUB.F32        S0, S0, S4
53A6A2:  VSUB.F32        S2, S2, S6
53A6A6:  VMOV            R0, S0
53A6AA:  VMOV            R1, S2; x
53A6AE:  EOR.W           R0, R0, #0x80000000; y
53A6B2:  BLX             atan2f
53A6B6:  STR.W           R0, [R4,#0x560]
53A6BA:  MOV             R0, R4; this
53A6BC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53A6C0:  LDR             R1, [R4,#0x14]
53A6C2:  MOV             R2, R6
53A6C4:  VLDR            S0, [R5,#0x14]
53A6C8:  VMOV.F32        S16, #1.0
53A6CC:  CMP             R1, #0
53A6CE:  VLDR            S2, [R5,#0x18]
53A6D2:  IT NE
53A6D4:  ADDNE.W         R2, R1, #0x30 ; '0'
53A6D8:  CMP             R0, #0
53A6DA:  VLDR            S4, [R2]
53A6DE:  VLDR            S6, [R2,#4]
53A6E2:  VSUB.F32        S0, S0, S4
53A6E6:  VSUB.F32        S2, S2, S6
53A6EA:  VMOV.F32        S4, S16
53A6EE:  VMUL.F32        S0, S0, S0
53A6F2:  VMUL.F32        S2, S2, S2
53A6F6:  VADD.F32        S0, S0, S2
53A6FA:  VMOV.F32        S2, #0.5
53A6FE:  VSQRT.F32       S0, S0
53A702:  IT NE
53A704:  VMOVNE.F32      S4, S2
53A708:  VCMPE.F32       S0, S4
53A70C:  VMRS            APSR_nzcv, FPSCR
53A710:  BLE             loc_53A788
53A712:  LDR             R0, [R5,#0x20]
53A714:  MOVS            R1, #(stderr+1); CPed *
53A716:  STRH            R1, [R5,#0xA]
53A718:  CBZ             R0, loc_53A736
53A71A:  MOV             R0, R4; this
53A71C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
53A720:  CBZ             R0, loc_53A736
53A722:  MOV             R0, R4; this
53A724:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
53A728:  ADDS            R0, #8; this
53A72A:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
53A72E:  LDR             R1, [R5,#0x20]
53A730:  CMP             R0, R1
53A732:  BEQ.W           loc_53A87A
53A736:  VLDR            S0, [R5,#0x10]
53A73A:  VCMPE.F32       S0, S16
53A73E:  VMRS            APSR_nzcv, FPSCR
53A742:  BLE             loc_53A788
53A744:  LDR             R0, [R4,#0x14]
53A746:  VLDR            S0, [R5,#0x14]
53A74A:  CMP             R0, #0
53A74C:  VLDR            S2, [R5,#0x18]
53A750:  IT NE
53A752:  ADDNE.W         R6, R0, #0x30 ; '0'
53A756:  VLDR            S4, [R6]
53A75A:  VLDR            S6, [R6,#4]
53A75E:  VSUB.F32        S0, S0, S4
53A762:  VSUB.F32        S2, S2, S6
53A766:  VMUL.F32        S0, S0, S0
53A76A:  VMUL.F32        S2, S2, S2
53A76E:  VADD.F32        S0, S0, S2
53A772:  VMOV.F32        S2, #2.0
53A776:  VSQRT.F32       S0, S0
53A77A:  VCMPE.F32       S0, S2
53A77E:  VMRS            APSR_nzcv, FPSCR
53A782:  ITT GT
53A784:  MOVGT           R0, #2
53A786:  STRHGT          R0, [R5,#0xA]
53A788:  MOVS            R6, #0
53A78A:  LDR             R0, [R5,#0x20]
53A78C:  CMP             R0, #0
53A78E:  ITT NE
53A790:  LDRBNE.W        R1, [R0,#0x484]
53A794:  MOVSNE.W        R1, R1,LSL#31
53A798:  BEQ             loc_53A7A8
53A79A:  LDRB.W          R1, [R0,#0x45]
53A79E:  LSLS            R1, R1, #0x1F
53A7A0:  BNE             loc_53A7A8
53A7A2:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x53A7A8)
53A7A4:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
53A7A6:  B               loc_53A7FE
53A7A8:  LDRB.W          R1, [R4,#0x491]
53A7AC:  LSLS            R1, R1, #0x1A
53A7AE:  BPL             loc_53A82A
53A7B0:  LDRB.W          R0, [R0,#0x45]
53A7B4:  LSLS            R0, R0, #0x1F
53A7B6:  BNE             loc_53A82A
53A7B8:  LDR             R0, [R4,#0x14]
53A7BA:  VLDR            S0, [R5,#0x14]
53A7BE:  ADD.W           R1, R0, #0x30 ; '0'
53A7C2:  CMP             R0, #0
53A7C4:  VLDR            S2, [R5,#0x18]
53A7C8:  IT EQ
53A7CA:  ADDEQ           R1, R4, #4
53A7CC:  VLDR            S4, [R1]
53A7D0:  VLDR            S6, [R1,#4]
53A7D4:  VSUB.F32        S0, S0, S4
53A7D8:  VSUB.F32        S2, S2, S6
53A7DC:  VMUL.F32        S0, S0, S0
53A7E0:  VMUL.F32        S2, S2, S2
53A7E4:  VADD.F32        S0, S0, S2
53A7E8:  VMOV.F32        S2, #1.0
53A7EC:  VSQRT.F32       S0, S0
53A7F0:  VCMPE.F32       S0, S2
53A7F4:  VMRS            APSR_nzcv, FPSCR
53A7F8:  BGE             loc_53A82A
53A7FA:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x53A800)
53A7FC:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
53A7FE:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
53A800:  LDRH            R1, [R4,#0x24]
53A802:  LDR             R0, [R0]; CTimer::m_FrameCounter
53A804:  ADD             R0, R1
53A806:  ADDS            R0, #0x7C ; '|'
53A808:  LSLS            R0, R0, #0x19
53A80A:  BNE             loc_53A82A
53A80C:  MOVS            R0, #(stderr+1)
53A80E:  ADD.W           R1, R5, #0x40 ; '@'; CPed *
53A812:  ADD.W           R2, R5, #0x4C ; 'L'; CVector *
53A816:  ADD.W           R3, R5, #0x50 ; 'P'; float *
53A81A:  STR             R0, [SP,#0x28+var_28]; unsigned __int8 *
53A81C:  MOV             R0, R4; this
53A81E:  BLX             j__ZN16CTaskSimpleClimb12TestForClimbEP4CPedR7CVectorRfRhb; CTaskSimpleClimb::TestForClimb(CPed *,CVector &,float &,uchar &,bool)
53A822:  CMP             R0, #0
53A824:  ITT NE
53A826:  MOVNE           R0, #5
53A828:  STRHNE          R0, [R5,#0xA]
53A82A:  MOVS            R0, #0
53A82C:  CMP             R6, #0
53A82E:  STRD.W          R0, R0, [R5,#0x2C]
53A832:  BNE             loc_53A86E
53A834:  MOV             R0, R4; this
53A836:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53A83A:  CBNZ            R0, loc_53A86E
53A83C:  VLDR            S0, [R5,#0x10]
53A840:  VCMPE.F32       S0, #0.0
53A844:  VMRS            APSR_nzcv, FPSCR
53A848:  BGE             loc_53A86E
53A84A:  VMOV.F32        S0, #0.5
53A84E:  ADDW            R0, R4, #0x4E4
53A852:  ADD.W           R1, R4, #0x4E8
53A856:  VLDR            S2, [R0]
53A85A:  VLDR            S4, [R1]
53A85E:  VMUL.F32        S2, S2, S0
53A862:  VMUL.F32        S0, S4, S0
53A866:  VSTR            S2, [R0]
53A86A:  VSTR            S0, [R1]
53A86E:  ADD             SP, SP, #0x10
53A870:  VPOP            {D8}
53A874:  POP.W           {R11}
53A878:  POP             {R4-R7,PC}
53A87A:  LDR.W           R0, [R0,#0x440]; this
53A87E:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
53A882:  CBZ             R0, loc_53A8DC
53A884:  LDR             R0, [R5,#0x20]
53A886:  LDR.W           R0, [R0,#0x440]; this
53A88A:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
53A88E:  LDRH            R0, [R0,#0xA]
53A890:  CMP             R0, #2
53A892:  BNE             loc_53A8DC
53A894:  LDR             R0, [R4,#0x14]
53A896:  VLDR            S0, [R5,#0x14]
53A89A:  CMP             R0, #0
53A89C:  VLDR            S2, [R5,#0x18]
53A8A0:  IT NE
53A8A2:  ADDNE.W         R6, R0, #0x30 ; '0'
53A8A6:  VLDR            S4, [R6]
53A8AA:  VLDR            S6, [R6,#4]
53A8AE:  MOVS            R6, #1
53A8B0:  VSUB.F32        S0, S0, S4
53A8B4:  VSUB.F32        S2, S2, S6
53A8B8:  VMUL.F32        S0, S0, S0
53A8BC:  VMUL.F32        S2, S2, S2
53A8C0:  VADD.F32        S0, S0, S2
53A8C4:  VMOV.F32        S2, #5.0
53A8C8:  VSQRT.F32       S0, S0
53A8CC:  VCMPE.F32       S0, S2
53A8D0:  VMRS            APSR_nzcv, FPSCR
53A8D4:  ITT GT
53A8D6:  MOVGT           R0, #2
53A8D8:  STRHGT          R0, [R5,#0xA]
53A8DA:  B               loc_53A78A
53A8DC:  MOVS            R6, #1
53A8DE:  B               loc_53A78A
