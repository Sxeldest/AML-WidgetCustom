; =========================================================
; Game Engine Function: _ZN8CGarages19FindGarageForObjectEP7CObject
; Address            : 0x314670 - 0x3147E2
; =========================================================

314670:  PUSH            {R7,LR}
314672:  MOV             R7, SP
314674:  VPUSH           {D8-D11}
314678:  LDR             R1, =(_ZN8CGarages10NumGaragesE_ptr - 0x31467E)
31467A:  ADD             R1, PC; _ZN8CGarages10NumGaragesE_ptr
31467C:  LDR             R1, [R1]; CGarages::NumGarages ...
31467E:  LDR             R1, [R1]; CGarages::NumGarages
314680:  CMP             R1, #0
314682:  BEQ.W           loc_3147D8
314686:  LDR             R3, =(_ZN8CGarages8aGaragesE_ptr - 0x31469C)
314688:  VMOV.F32        S8, #-7.0
31468C:  VMOV.F32        S10, #7.0
314690:  LDR.W           R12, [R0,#0x14]
314694:  VMOV.F32        S12, #0.5
314698:  ADD             R3, PC; _ZN8CGarages8aGaragesE_ptr
31469A:  ADD.W           LR, R12, #0x30 ; '0'
31469E:  CMP.W           R12, #0
3146A2:  IT EQ
3146A4:  ADDEQ.W         LR, R0, #4
3146A8:  LDR             R3, [R3]; CGarages::aGarages ...
3146AA:  VLDR            S2, =100000.0
3146AE:  MOVS            R2, #0
3146B0:  VLDR            S0, [LR]
3146B4:  MOV.W           R0, #0xFFFFFFFF
3146B8:  VLDR            S4, [LR,#4]
3146BC:  VLDR            S6, [LR,#8]
3146C0:  VLDR            S14, =0.0
3146C4:  VLDR            S1, [R3,#8]
3146C8:  VADD.F32        S5, S1, S8
3146CC:  VCMPE.F32       S5, S6
3146D0:  VMRS            APSR_nzcv, FPSCR
3146D4:  BGT             loc_3147C8
3146D6:  VLDR            S5, [R3,#0x1C]
3146DA:  VADD.F32        S5, S5, S10
3146DE:  VCMPE.F32       S5, S6
3146E2:  VMRS            APSR_nzcv, FPSCR
3146E6:  BLT             loc_3147C8
3146E8:  VLDR            S5, [R3]
3146EC:  VLDR            S7, [R3,#4]
3146F0:  VSUB.F32        S18, S0, S5
3146F4:  VLDR            S9, [R3,#0xC]
3146F8:  VSUB.F32        S20, S4, S7
3146FC:  VLDR            S11, [R3,#0x10]
314700:  VMUL.F32        S15, S18, S9
314704:  VMUL.F32        S13, S20, S11
314708:  VADD.F32        S13, S15, S13
31470C:  VCMPE.F32       S13, S8
314710:  VMRS            APSR_nzcv, FPSCR
314714:  BLT             loc_3147C8
314716:  VLDR            S15, [R3,#0x20]
31471A:  VADD.F32        S16, S15, S10
31471E:  VCMPE.F32       S13, S16
314722:  VMRS            APSR_nzcv, FPSCR
314726:  BGT             loc_3147C8
314728:  VLDR            S13, [R3,#0x14]
31472C:  VLDR            S16, [R3,#0x18]
314730:  VMUL.F32        S18, S18, S13
314734:  VMUL.F32        S20, S20, S16
314738:  VADD.F32        S18, S18, S20
31473C:  VCMPE.F32       S18, S8
314740:  VMRS            APSR_nzcv, FPSCR
314744:  BLT             loc_3147C8
314746:  VLDR            S20, [R3,#0x24]
31474A:  VADD.F32        S22, S20, S10
31474E:  VCMPE.F32       S18, S22
314752:  VMRS            APSR_nzcv, FPSCR
314756:  BGT             loc_3147C8
314758:  VMUL.F32        S15, S15, S12
31475C:  VMUL.F32        S18, S20, S12
314760:  VMUL.F32        S11, S11, S15
314764:  VMUL.F32        S9, S9, S15
314768:  VMUL.F32        S15, S15, S14
31476C:  VMUL.F32        S16, S16, S18
314770:  VADD.F32        S7, S7, S11
314774:  VADD.F32        S5, S5, S9
314778:  VMUL.F32        S11, S13, S18
31477C:  VMUL.F32        S9, S18, S14
314780:  VADD.F32        S1, S1, S15
314784:  VADD.F32        S7, S7, S16
314788:  VADD.F32        S5, S5, S11
31478C:  VADD.F32        S1, S1, S9
314790:  VSUB.F32        S7, S4, S7
314794:  VSUB.F32        S5, S0, S5
314798:  VSUB.F32        S1, S6, S1
31479C:  VMUL.F32        S7, S7, S7
3147A0:  VMUL.F32        S5, S5, S5
3147A4:  VMUL.F32        S1, S1, S1
3147A8:  VADD.F32        S5, S5, S7
3147AC:  VADD.F32        S1, S5, S1
3147B0:  VSQRT.F32       S16, S1
3147B4:  VCMPE.F32       S16, S2
3147B8:  VMRS            APSR_nzcv, FPSCR
3147BC:  VMIN.F32        D9, D8, D1
3147C0:  VMOV            D1, D9
3147C4:  IT LT
3147C6:  MOVLT           R0, R2
3147C8:  ADDS            R2, #1
3147CA:  ADDS            R3, #0xD8
3147CC:  CMP             R2, R1
3147CE:  BCC.W           loc_3146C4
3147D2:  VPOP            {D8-D11}
3147D6:  POP             {R7,PC}
3147D8:  MOV.W           R0, #0xFFFFFFFF
3147DC:  VPOP            {D8-D11}
3147E0:  POP             {R7,PC}
