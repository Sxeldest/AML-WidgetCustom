; =========================================================
; Game Engine Function: _ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi
; Address            : 0x4BE5E8 - 0x4BE614
; =========================================================

4BE5E8:  PUSH            {R4,R6,R7,LR}
4BE5EA:  ADD             R7, SP, #8
4BE5EC:  MOV             R4, R0
4BE5EE:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE5F4)
4BE5F0:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE5F2:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE5F4:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE5F6:  CBNZ            R0, loc_4BE60C
4BE5F8:  MOVW            R0, #0xF1C0; unsigned int
4BE5FC:  BLX             _Znwj; operator new(uint)
4BE600:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE604:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE60A)
4BE606:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE608:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE60A:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE60C:  MOV             R1, R4; int
4BE60E:  POP.W           {R4,R6,R7,LR}
4BE612:  B               _ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
