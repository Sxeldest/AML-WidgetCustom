; =========================================================
; Game Engine Function: _ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi
; Address            : 0x4BE61C - 0x4BE70A
; =========================================================

4BE61C:  PUSH            {R4-R7,LR}
4BE61E:  ADD             R7, SP, #0xC
4BE620:  PUSH.W          {R8-R10}
4BE624:  SUB.W           SP, SP, #0x9A0
4BE628:  ADD.W           R10, SP, #0x9B8+var_9B4
4BE62C:  MOV             R5, R0
4BE62E:  MOV             R6, R3
4BE630:  MOV             R4, R2
4BE632:  MOV             R0, R10; this
4BE634:  MOV             R8, R1
4BE636:  BLX             j__ZN14CDecisionMakerC2Ev; CDecisionMaker::CDecisionMaker(void)
4BE63A:  MOV             R0, R5; this
4BE63C:  MOV             R1, R10; char *
4BE63E:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKcR14CDecisionMaker; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,CDecisionMaker &)
4BE642:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE648)
4BE644:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE646:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE648:  LDR.W           R9, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE64C:  CMP.W           R9, #0
4BE650:  BNE             loc_4BE66A
4BE652:  MOVW            R0, #0xF1C0; unsigned int
4BE656:  BLX             _Znwj; operator new(uint)
4BE65A:  MOV             R9, R0
4BE65C:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE660:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE666)
4BE662:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE664:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE666:  STR.W           R9, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE66A:  MOVS            R0, #0x14
4BE66C:  CMP             R4, #0
4BE66E:  ITE EQ
4BE670:  MOVEQ           R0, #0xF
4BE672:  MOVNE           R4, #0xF
4BE674:  CMP             R4, R0
4BE676:  BCS             loc_4BE6C2
4BE678:  MOVW            R1, #0x99C
4BE67C:  SMLABB.W        R1, R4, R1, R9
4BE680:  ADDS            R5, R1, #4
4BE682:  LDR             R1, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x4BE688)
4BE684:  ADD             R1, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
4BE686:  LDR.W           R12, [R1]; CDecisionMakerTypes::m_bIsActive ...
4BE68A:  LDRB.W          R2, [R12,R4]
4BE68E:  CMP             R6, R4
4BE690:  MOV.W           R3, #0
4BE694:  ORN.W           R2, R2, R6
4BE698:  IT EQ
4BE69A:  MOVEQ           R3, #1
4BE69C:  CMP             R2, #0
4BE69E:  MOV.W           R2, #0
4BE6A2:  IT EQ
4BE6A4:  MOVEQ           R2, #1
4BE6A6:  CMP             R6, #0
4BE6A8:  MOV.W           R1, #0
4BE6AC:  IT GT
4BE6AE:  MOVGT           R1, #1
4BE6B0:  TST             R1, R3
4BE6B2:  BNE             loc_4BE6C8
4BE6B4:  CMP             R2, #1
4BE6B6:  BEQ             loc_4BE6C8
4BE6B8:  ADDS            R4, #1
4BE6BA:  ADDW            R5, R5, #0x99C
4BE6BE:  CMP             R4, R0
4BE6C0:  BLT             loc_4BE68A
4BE6C2:  MOV.W           R4, #0xFFFFFFFF
4BE6C6:  B               loc_4BE6FE
4BE6C8:  LDR             R0, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x4BE6D4)
4BE6CA:  MOVS            R6, #4
4BE6CC:  LDR             R1, =(_ZN19CDecisionMakerTypes7m_typesE_ptr - 0x4BE6D6)
4BE6CE:  MOVS            R2, #1
4BE6D0:  ADD             R0, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
4BE6D2:  ADD             R1, PC; _ZN19CDecisionMakerTypes7m_typesE_ptr
4BE6D4:  LDR             R0, [R0]; CDecisionMakerTypes::m_bIsActive ...
4BE6D6:  LDR             R1, [R1]; CDecisionMakerTypes::m_types ...
4BE6D8:  STRB            R2, [R0,R4]
4BE6DA:  STRB.W          R8, [R1,R4]
4BE6DE:  ADD.W           R0, R10, R6
4BE6E2:  SUBS            R1, R0, #4
4BE6E4:  MOV             R0, R5
4BE6E6:  BLX             j__ZN9CDecisionaSERKS_; CDecision::operator=(CDecision const&)
4BE6EA:  ADDS            R6, #0x3C ; '<'
4BE6EC:  ADDS            R5, #0x3C ; '<'
4BE6EE:  CMP.W           R6, #0x9A0
4BE6F2:  BNE             loc_4BE6DE
4BE6F4:  LDR.W           R0, [R9]
4BE6F8:  ADDS            R0, #1
4BE6FA:  STR.W           R0, [R9]
4BE6FE:  MOV             R0, R4
4BE700:  ADD.W           SP, SP, #0x9A0
4BE704:  POP.W           {R8-R10}
4BE708:  POP             {R4-R7,PC}
