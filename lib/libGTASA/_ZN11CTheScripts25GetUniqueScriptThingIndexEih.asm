; =========================================================
; Game Engine Function: _ZN11CTheScripts25GetUniqueScriptThingIndexEih
; Address            : 0x34A5E8 - 0x34A632
; =========================================================

34A5E8:  PUSH            {R4,R6,R7,LR}
34A5EA:  ADD             R7, SP, #8
34A5EC:  MOV             R4, R0
34A5EE:  CMP             R1, #7
34A5F0:  BEQ             loc_34A602
34A5F2:  CMP             R1, #8
34A5F4:  ITT NE
34A5F6:  MOVNE.W         R0, #0xFFFFFFFF
34A5FA:  POPNE           {R4,R6,R7,PC}
34A5FC:  LDR             R0, =(_ZN10CPedGroups20ScriptReferenceIndexE_ptr - 0x34A602)
34A5FE:  ADD             R0, PC; _ZN10CPedGroups20ScriptReferenceIndexE_ptr
34A600:  B               loc_34A624
34A602:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x34A608)
34A604:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
34A606:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
34A608:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
34A60A:  CBNZ            R0, loc_34A620
34A60C:  MOVW            R0, #0xF1C0; unsigned int
34A610:  BLX             _Znwj; operator new(uint)
34A614:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
34A618:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x34A61E)
34A61A:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
34A61C:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
34A61E:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
34A620:  LDR             R0, =(_ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr - 0x34A626)
34A622:  ADD             R0, PC; _ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr
34A624:  LDR             R0, [R0]; CPedGroups::ScriptReferenceIndex
34A626:  ADD.W           R0, R0, R4,LSL#1
34A62A:  LDRH            R0, [R0]
34A62C:  ORR.W           R0, R4, R0,LSL#16
34A630:  POP             {R4,R6,R7,PC}
