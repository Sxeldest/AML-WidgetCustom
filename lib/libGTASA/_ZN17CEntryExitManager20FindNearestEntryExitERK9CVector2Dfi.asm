; =========================================================
; Game Engine Function: _ZN17CEntryExitManager20FindNearestEntryExitERK9CVector2Dfi
; Address            : 0x3075E0 - 0x3076C6
; =========================================================

3075E0:  PUSH            {R4-R7,LR}
3075E2:  ADD             R7, SP, #0xC
3075E4:  PUSH.W          {R11}
3075E8:  VPUSH           {D8}
3075EC:  SUB             SP, SP, #0x18
3075EE:  MOVS            R6, #0
3075F0:  MOV             R5, R0
3075F2:  STR             R6, [SP,#0x30+var_1C]
3075F4:  VMOV            S16, R1
3075F8:  LDR             R0, =(_ZN17CEntryExitManager11mp_QuadTreeE_ptr - 0x30760A)
3075FA:  MOV             R4, R2
3075FC:  VLDR            S0, [R5]
307600:  ADD             R1, SP, #0x30+var_2C
307602:  VLDR            S2, [R5,#4]
307606:  ADD             R0, PC; _ZN17CEntryExitManager11mp_QuadTreeE_ptr
307608:  VSUB.F32        S6, S0, S16
30760C:  ADD             R2, SP, #0x30+var_1C
30760E:  VSUB.F32        S4, S2, S16
307612:  LDR             R0, [R0]; CEntryExitManager::mp_QuadTree ...
307614:  VADD.F32        S0, S0, S16
307618:  VADD.F32        S2, S2, S16
30761C:  LDR             R0, [R0]; CEntryExitManager::mp_QuadTree
30761E:  VSTR            S4, [SP,#0x30+var_20]
307622:  VSTR            S6, [SP,#0x30+var_2C]
307626:  VSTR            S0, [SP,#0x30+var_24]
30762A:  VSTR            S2, [SP,#0x30+var_28]
30762E:  BLX             j__ZN13CQuadTreeNode14GetAllMatchingERK5CRectR18CPtrListSingleLink; CQuadTreeNode::GetAllMatching(CRect const&,CPtrListSingleLink &)
307632:  VADD.F32        S0, S16, S16
307636:  LDR             R0, [SP,#0x30+var_1C]
307638:  VMOV.I32        D17, #0x3F000000
30763C:  VLDR            D16, [R5]
307640:  B               loc_307676
307642:  VLDR            D18, [R1,#8]
307646:  VLDR            D19, [R1,#0x10]
30764A:  VADD.F32        D18, D18, D19
30764E:  VMUL.F32        D18, D18, D17
307652:  VSUB.F32        D18, D16, D18
307656:  VMUL.F32        D1, D18, D18
30765A:  VADD.F32        S2, S2, S3
30765E:  VSQRT.F32       S2, S2
307662:  VCMPE.F32       S2, S0
307666:  VMRS            APSR_nzcv, FPSCR
30766A:  VMIN.F32        D2, D1, D0
30766E:  VMOV            D0, D2
307672:  IT LT
307674:  MOVLT           R6, R1
307676:  CBZ             R0, loc_307690
307678:  LDRD.W          R1, R0, [R0]
30767C:  LDR             R2, [R1,#0x38]
30767E:  CMP             R2, #0
307680:  ITE NE
307682:  LDRBNE.W        R2, [R2,#0x32]
307686:  LDRBEQ.W        R2, [R1,#0x32]
30768A:  CMP             R2, R4
30768C:  BEQ             loc_307676
30768E:  B               loc_307642
307690:  CBZ             R6, loc_3076AE
307692:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3076A0)
307694:  MOV             R1, #0xEEEEEEEF
30769C:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30769E:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3076A0:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
3076A2:  LDR             R0, [R0]
3076A4:  SUBS            R0, R6, R0
3076A6:  ASRS            R0, R0, #2
3076A8:  MUL.W           R4, R0, R1
3076AC:  B               loc_3076B2
3076AE:  MOV.W           R4, #0xFFFFFFFF
3076B2:  ADD             R0, SP, #0x30+var_1C; this
3076B4:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
3076B8:  MOV             R0, R4
3076BA:  ADD             SP, SP, #0x18
3076BC:  VPOP            {D8}
3076C0:  POP.W           {R11}
3076C4:  POP             {R4-R7,PC}
