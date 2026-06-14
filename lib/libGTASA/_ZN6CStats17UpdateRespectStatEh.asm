; =========================================================
; Game Engine Function: _ZN6CStats17UpdateRespectStatEh
; Address            : 0x41A628 - 0x41A908
; =========================================================

41A628:  PUSH            {R4,R6,R7,LR}
41A62A:  ADD             R7, SP, #8
41A62C:  VPUSH           {D8-D14}
41A630:  CBZ             R0, loc_41A654
41A632:  LDR             R0, =(_ZN6CStats17usingRespectCheatE_ptr - 0x41A640)
41A634:  MOVS            R3, #0
41A636:  LDR             R1, =(dword_6AB388 - 0x41A644)
41A638:  MOVT            R3, #0xC2C6
41A63C:  ADD             R0, PC; _ZN6CStats17usingRespectCheatE_ptr
41A63E:  LDR             R2, =(dword_6AB384 - 0x41A648)
41A640:  ADD             R1, PC; dword_6AB388
41A642:  LDR             R0, [R0]; CStats::usingRespectCheat ...
41A644:  ADD             R2, PC; dword_6AB384
41A646:  STR             R3, [R1]
41A648:  MOVS            R1, #0
41A64A:  STR             R3, [R2]
41A64C:  STRB            R1, [R0]; CStats::usingRespectCheat
41A64E:  VPOP            {D8-D14}
41A652:  POP             {R4,R6,R7,PC}; float
41A654:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41A660)
41A656:  MOV.W           R3, #0x194
41A65A:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x41A664)
41A65C:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41A65E:  LDR             R2, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x41A66C)
41A660:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
41A662:  VLDR            S16, =1000.0
41A666:  LDR             R0, [R0]; CStats::StatTypesInt ...
41A668:  ADD             R2, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
41A66A:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
41A66C:  LDR             R2, [R2]; CGangWars::TerritoryUnderControlPercentage ...
41A66E:  VLDR            S0, [R0,#0x1A0]
41A672:  VLDR            S2, [R0,#0x1B0]
41A676:  VCVT.F32.S32    S4, S0
41A67A:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x41A68E)
41A67C:  LDR             R1, [R1]; CWorld::PlayerInFocus
41A67E:  VMOV.F32        S0, #1.0
41A682:  VLDR            S8, [R2]
41A686:  VCVT.F32.S32    S2, S2
41A68A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
41A68C:  VLDR            S6, =-0.2
41A690:  LDR.W           R12, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41A69E)
41A694:  LDR             R0, [R0]; CWorld::Players ...
41A696:  VADD.F32        S6, S8, S6
41A69A:  ADD             R12, PC; _ZN6CStats14StatTypesFloatE_ptr
41A69C:  VLDR            S18, =0.0
41A6A0:  VMUL.F32        S4, S4, S16
41A6A4:  SMLABB.W        R0, R1, R3, R0; this
41A6A8:  VMAX.F32        D1, D1, D0
41A6AC:  LDR.W           R1, [R12]; CStats::StatTypesFloat ...
41A6B0:  VLDR            S8, =1.0e7
41A6B4:  VLDR            S10, =0.4
41A6B8:  VMAX.F32        D3, D3, D9
41A6BC:  VLDR            S14, [R1,#0x5C]
41A6C0:  VLDR            S12, [R0,#0xB8]
41A6C4:  VLDR            S5, [R1,#0x104]
41A6C8:  VDIV.F32        S2, S4, S2
41A6CC:  VLDR            S9, [R1,#0x110]
41A6D0:  VMUL.F32        S6, S6, S16
41A6D4:  VLDR            S20, [R1,#0x108]
41A6D8:  VCVT.F32.S32    S12, S12
41A6DC:  VLDR            S7, =0.8
41A6E0:  VMUL.F32        S4, S9, S10
41A6E4:  VLDR            S22, =0.03
41A6E8:  VLDR            S24, =0.05
41A6EC:  VMUL.F32        S26, S14, S22
41A6F0:  VDIV.F32        S6, S6, S7
41A6F4:  VDIV.F32        S12, S12, S8
41A6F8:  VLDR            S8, =0.36
41A6FC:  VADD.F32        S4, S4, S18
41A700:  VMIN.F32        D0, D6, D0
41A704:  VMUL.F32        S2, S2, S8
41A708:  VMUL.F32        S8, S5, S22
41A70C:  VMUL.F32        S0, S0, S16
41A710:  VADD.F32        S2, S4, S2
41A714:  VMUL.F32        S4, S6, S24
41A718:  VMUL.F32        S0, S0, S24
41A71C:  VADD.F32        S2, S8, S2
41A720:  VADD.F32        S2, S2, S4
41A724:  VADD.F32        S28, S2, S0
41A728:  BLX             j__ZN11CTagManager19GetPercentageTaggedEv; CTagManager::GetPercentageTagged(void)
41A72C:  ADD.W           R0, R0, R0,LSL#2
41A730:  VMUL.F32        S2, S20, S22
41A734:  VADD.F32        S4, S26, S28
41A738:  LSLS            R0, R0, #1
41A73A:  VMOV            S0, R0
41A73E:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x41A748)
41A740:  VCVT.F32.S32    S0, S0
41A744:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
41A746:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
41A748:  VADD.F32        S2, S2, S4
41A74C:  LDRB            R0, [R0]; CLoadingScreen::m_bActive
41A74E:  VMUL.F32        S0, S0, S24
41A752:  CMP             R0, #0
41A754:  VADD.F32        S0, S0, S2
41A758:  VMAX.F32        D0, D0, D9
41A75C:  BEQ             loc_41A764
41A75E:  VMOV.F32        S16, S0
41A762:  B               loc_41A78E
41A764:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x41A76A)
41A766:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
41A768:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
41A76A:  LDRB.W          R0, [R0,#(byte_79684B - 0x7967F4)]
41A76E:  CBZ             R0, loc_41A774
41A770:  MOVS            R0, #1
41A772:  B               loc_41A786
41A774:  LDR             R0, =(_ZN6CStats17usingRespectCheatE_ptr - 0x41A77A)
41A776:  ADD             R0, PC; _ZN6CStats17usingRespectCheatE_ptr
41A778:  LDR             R0, [R0]; CStats::usingRespectCheat ...
41A77A:  LDRB            R0, [R0]; CStats::usingRespectCheat
41A77C:  CMP             R0, #0
41A77E:  BEQ             loc_41A75E
41A780:  VMOV.F32        S16, S0
41A784:  MOVS            R0, #0
41A786:  LDR             R1, =(_ZN6CStats17usingRespectCheatE_ptr - 0x41A78C)
41A788:  ADD             R1, PC; _ZN6CStats17usingRespectCheatE_ptr
41A78A:  LDR             R1, [R1]; CStats::usingRespectCheat ...
41A78C:  STRB            R0, [R1]; CStats::usingRespectCheat
41A78E:  LDR             R0, =(dword_6AB388 - 0x41A794)
41A790:  ADD             R0, PC; dword_6AB388
41A792:  VLDR            S0, [R0]
41A796:  VCVT.S32.F32    S2, S16
41A79A:  VCVT.S32.F32    S0, S0
41A79E:  VMOV            R0, S2
41A7A2:  VMOV            R1, S0; bool
41A7A6:  CMP             R1, R0
41A7A8:  BEQ.W           loc_41A902
41A7AC:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41A7B4)
41A7AE:  MOVS            R4, #0
41A7B0:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41A7B2:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41A7B4:  VSTR            S16, [R0,#0x100]
41A7B8:  MOVS            R0, #0; this
41A7BA:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41A7BE:  LDR             R0, =(dword_6AB388 - 0x41A7C8)
41A7C0:  VLDR            S4, =-99.0
41A7C4:  ADD             R0, PC; dword_6AB388
41A7C6:  LDR             R1, =(dword_6AB384 - 0x41A7D0)
41A7C8:  VLDR            S0, [R0]
41A7CC:  ADD             R1, PC; dword_6AB384
41A7CE:  MOVS            R0, #0
41A7D0:  VCMP.F32        S0, S4
41A7D4:  VLDR            S2, [R1]
41A7D8:  VMRS            APSR_nzcv, FPSCR
41A7DC:  VCMP.F32        S2, S4
41A7E0:  IT NE
41A7E2:  MOVNE           R0, #1
41A7E4:  VMRS            APSR_nzcv, FPSCR
41A7E8:  VCMPE.F32       S16, S2
41A7EC:  IT NE
41A7EE:  MOVNE           R4, #1
41A7F0:  VMRS            APSR_nzcv, FPSCR
41A7F4:  AND.W           R0, R0, R4
41A7F8:  BGT             loc_41A842
41A7FA:  VMOV.F32        S4, #2.0
41A7FE:  VCMPE.F32       S0, S4
41A802:  VMRS            APSR_nzcv, FPSCR
41A806:  BLT             loc_41A842
41A808:  CMP             R0, #1
41A80A:  BNE             loc_41A8AC
41A80C:  VLDR            S6, =40.0
41A810:  VADD.F32        S6, S2, S6
41A814:  VCMPE.F32       S6, S16
41A818:  VMRS            APSR_nzcv, FPSCR
41A81C:  BLT             loc_41A880
41A81E:  VLDR            S6, =-40.0
41A822:  VADD.F32        S2, S2, S6
41A826:  VCMPE.F32       S2, S16
41A82A:  VMRS            APSR_nzcv, FPSCR
41A82E:  BGT             loc_41A880
41A830:  VCMPE.F32       S16, S4
41A834:  VMRS            APSR_nzcv, FPSCR
41A838:  BGE             loc_41A8AC
41A83A:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41A840)
41A83C:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41A83E:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41A840:  B               loc_41A88E
41A842:  CMP             R0, #1
41A844:  BNE             loc_41A8E8
41A846:  VLDR            S4, =40.0
41A84A:  VADD.F32        S4, S2, S4
41A84E:  VCMPE.F32       S4, S16
41A852:  VMRS            APSR_nzcv, FPSCR
41A856:  BLT             loc_41A8BC
41A858:  VLDR            S4, =-40.0
41A85C:  VADD.F32        S2, S2, S4
41A860:  VCMPE.F32       S2, S16
41A864:  VMRS            APSR_nzcv, FPSCR
41A868:  BGT             loc_41A8BC
41A86A:  VMOV.F32        S2, #2.0
41A86E:  VCMPE.F32       S0, S2
41A872:  VMRS            APSR_nzcv, FPSCR
41A876:  BGE             loc_41A8E8
41A878:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41A87E)
41A87A:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41A87C:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41A87E:  B               loc_41A8CA
41A880:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41A888)
41A882:  LDR             R1, =(dword_6AB384 - 0x41A88A)
41A884:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41A886:  ADD             R1, PC; dword_6AB384
41A888:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41A88A:  VSTR            S16, [R1]
41A88E:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41A890:  CBZ             R0, loc_41A8AC
41A892:  VMOV            R2, S16; unsigned __int16
41A896:  MOVS            R3, #0x447A0000; float
41A89C:  MOVS            R0, #0; this
41A89E:  MOVS            R1, #0x40 ; '@'; unsigned __int8
41A8A0:  BLX             j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
41A8A4:  LDR             R0, =(dword_6AB388 - 0x41A8AA)
41A8A6:  ADD             R0, PC; dword_6AB388
41A8A8:  VLDR            S0, [R0]
41A8AC:  VCMPE.F32       S16, S0
41A8B0:  VMRS            APSR_nzcv, FPSCR
41A8B4:  BLE             loc_41A8FA
41A8B6:  LDR             R0, =(dword_6AB384 - 0x41A8BC)
41A8B8:  ADD             R0, PC; dword_6AB384
41A8BA:  B               loc_41A8F6
41A8BC:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41A8C4)
41A8BE:  LDR             R1, =(dword_6AB384 - 0x41A8C6)
41A8C0:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41A8C2:  ADD             R1, PC; dword_6AB384
41A8C4:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41A8C6:  VSTR            S16, [R1]
41A8CA:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41A8CC:  CBZ             R0, loc_41A8E8
41A8CE:  VMOV            R2, S16; unsigned __int16
41A8D2:  MOVS            R3, #0x447A0000; float
41A8D8:  MOVS            R0, #(stderr+1); this
41A8DA:  MOVS            R1, #0x40 ; '@'; unsigned __int8
41A8DC:  BLX             j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
41A8E0:  LDR             R0, =(dword_6AB388 - 0x41A8E6)
41A8E2:  ADD             R0, PC; dword_6AB388
41A8E4:  VLDR            S0, [R0]
41A8E8:  VCMPE.F32       S16, S0
41A8EC:  VMRS            APSR_nzcv, FPSCR
41A8F0:  BGE             loc_41A8FA
41A8F2:  LDR             R0, =(dword_6AB384 - 0x41A8F8)
41A8F4:  ADD             R0, PC; dword_6AB384
41A8F6:  VSTR            S16, [R0]
41A8FA:  LDR             R0, =(dword_6AB388 - 0x41A900)
41A8FC:  ADD             R0, PC; dword_6AB388
41A8FE:  VSTR            S16, [R0]
41A902:  VPOP            {D8-D14}
41A906:  POP             {R4,R6,R7,PC}
