; =========================================================
; Game Engine Function: _ZN6CCover13AddCoverPointEiP7CEntityP7CVectorah
; Address            : 0x4D5614 - 0x4D5786
; =========================================================

4D5614:  PUSH            {R4-R7,LR}
4D5616:  ADD             R7, SP, #0xC
4D5618:  PUSH.W          {R8,R9,R11}
4D561C:  MOV             R9, R2
4D561E:  LDR             R2, =(_ZN6CCover11m_NumPointsE_ptr - 0x4D5624)
4D5620:  ADD             R2, PC; _ZN6CCover11m_NumPointsE_ptr
4D5622:  LDR             R2, [R2]; CCover::m_NumPoints ...
4D5624:  LDR.W           LR, [R2]; CCover::m_NumPoints
4D5628:  CMP.W           LR, #0x63 ; 'c'
4D562C:  BGT.W           loc_4D5780
4D5630:  LDR             R2, =(_ZN6CCover9m_aPointsE_ptr - 0x4D5642)
4D5632:  VMOV.F32        S2, #2.0
4D5636:  LDR.W           R12, [R7,#arg_0]
4D563A:  MOV             R8, #0xFFFFFFE0
4D563E:  ADD             R2, PC; _ZN6CCover9m_aPointsE_ptr
4D5640:  VLDR            S0, =0.8
4D5644:  LDR             R2, [R2]; CCover::m_aPoints ...
4D5646:  ADD.W           R5, R2, #0x10
4D564A:  MOV.W           R2, #0xFFFFFFFF
4D564E:  LDRSB.W         R6, [R5,#-0x10]; CCover::m_aPoints
4D5652:  CMP             R6, R0
4D5654:  BNE             loc_4D566A
4D5656:  CMP             R0, #3
4D5658:  BEQ             loc_4D56DE
4D565A:  CMP             R0, #2
4D565C:  IT NE
4D565E:  CMPNE           R0, #1
4D5660:  BNE             loc_4D566A
4D5662:  LDR             R4, [R5]
4D5664:  CMP             R4, R1
4D5666:  BEQ.W           loc_4D5780
4D566A:  UXTB            R4, R6
4D566C:  CBZ             R4, loc_4D56D4
4D566E:  CMP.W           R9, #0
4D5672:  MOV             R6, R9
4D5674:  BNE             loc_4D5684
4D5676:  CBZ             R1, loc_4D568C
4D5678:  LDR             R4, [R1,#0x14]
4D567A:  ADD.W           R6, R4, #0x30 ; '0'
4D567E:  CMP             R4, #0
4D5680:  IT EQ
4D5682:  ADDEQ           R6, R1, #4
4D5684:  VLDR            D16, [R6,#4]
4D5688:  VLDR            S4, [R6]
4D568C:  VLDR            S6, [R5,#-0xC]
4D5690:  VLDR            D17, [R5,#-8]
4D5694:  VSUB.F32        S6, S6, S4
4D5698:  VSUB.F32        D17, D17, D16
4D569C:  VMUL.F32        D4, D17, D17
4D56A0:  VMUL.F32        S6, S6, S6
4D56A4:  VADD.F32        S6, S6, S8
4D56A8:  VADD.F32        S6, S6, S9
4D56AC:  VSQRT.F32       S6, S6
4D56B0:  VCMPE.F32       S6, S0
4D56B4:  VMRS            APSR_nzcv, FPSCR
4D56B8:  BLT             loc_4D5780
4D56BA:  VCMPE.F32       S6, S2
4D56BE:  VMRS            APSR_nzcv, FPSCR
4D56C2:  BGE             loc_4D56D4
4D56C4:  LDRB.W          R4, [R5,#-0xE]
4D56C8:  SUB.W           R4, R4, R12
4D56CC:  UXTAB.W         R4, R8, R4
4D56D0:  CMP             R4, #0xBF
4D56D2:  BHI             loc_4D5780
4D56D4:  ADDS            R2, #1
4D56D6:  ADDS            R5, #0x1C
4D56D8:  CMP             R2, #0x63 ; 'c'
4D56DA:  BLT             loc_4D564E
4D56DC:  B               loc_4D5716
4D56DE:  VLDR            S6, [R5,#-0xC]
4D56E2:  VLDR            S8, [R9]
4D56E6:  VCMP.F32        S8, S6
4D56EA:  VMRS            APSR_nzcv, FPSCR
4D56EE:  BNE             loc_4D566A
4D56F0:  VLDR            S6, [R5,#-8]
4D56F4:  VLDR            S8, [R9,#4]
4D56F8:  VCMP.F32        S8, S6
4D56FC:  VMRS            APSR_nzcv, FPSCR
4D5700:  BNE             loc_4D566A
4D5702:  VLDR            S6, [R5,#-4]
4D5706:  VLDR            S8, [R9,#8]
4D570A:  VCMP.F32        S8, S6
4D570E:  VMRS            APSR_nzcv, FPSCR
4D5712:  BNE             loc_4D566A
4D5714:  B               loc_4D5780
4D5716:  LDR             R2, =(_ZN6CCover9m_aPointsE_ptr - 0x4D571C)
4D5718:  ADD             R2, PC; _ZN6CCover9m_aPointsE_ptr
4D571A:  LDR             R2, [R2]; CCover::m_aPoints ...
4D571C:  SUB.W           R5, R2, #0xC
4D5720:  LDRB            R2, [R5,#0xC]; CCover::m_aPoints
4D5722:  ADDS            R5, #0x1C
4D5724:  CMP             R2, #0
4D5726:  BNE             loc_4D5720
4D5728:  LDR             R2, =(_ZN6CCover11m_NumPointsE_ptr - 0x4D5734)
4D572A:  CMP             R1, #0
4D572C:  STRB.W          R3, [R5,#-0xF]
4D5730:  ADD             R2, PC; _ZN6CCover11m_NumPointsE_ptr
4D5732:  STRB.W          R12, [R5,#-0xE]
4D5736:  STRB.W          R0, [R5,#-0x10]
4D573A:  ADD.W           R0, LR, #1
4D573E:  LDR             R2, [R2]; CCover::m_NumPoints ...
4D5740:  STR             R0, [R2]; CCover::m_NumPoints
4D5742:  MOV.W           R0, #0
4D5746:  STRD.W          R1, R0, [R5]
4D574A:  STR             R0, [R5,#8]
4D574C:  BEQ             loc_4D576A
4D574E:  LDRB.W          R0, [R1,#0x3A]
4D5752:  AND.W           R0, R0, #7
4D5756:  CMP             R0, #1
4D5758:  ITT EQ
4D575A:  LDRHEQ.W        R0, [R1,#0x38]
4D575E:  CMPEQ           R0, #0
4D5760:  BEQ             loc_4D576A
4D5762:  MOV             R0, R1; this
4D5764:  MOV             R1, R5; CEntity **
4D5766:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4D576A:  CMP.W           R9, #0
4D576E:  ITTTT NE
4D5770:  VLDRNE          D16, [R9]
4D5774:  LDRNE.W         R0, [R9,#8]
4D5778:  STRNE.W         R0, [R5,#-4]
4D577C:  VSTRNE          D16, [R5,#-0xC]
4D5780:  POP.W           {R8,R9,R11}
4D5784:  POP             {R4-R7,PC}
