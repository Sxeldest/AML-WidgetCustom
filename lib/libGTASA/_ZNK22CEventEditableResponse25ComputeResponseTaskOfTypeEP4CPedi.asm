; =========================================================
; Game Engine Function: _ZNK22CEventEditableResponse25ComputeResponseTaskOfTypeEP4CPedi
; Address            : 0x37077C - 0x370808
; =========================================================

37077C:  PUSH            {R4-R7,LR}
37077E:  ADD             R7, SP, #0xC
370780:  PUSH.W          {R8-R10}
370784:  SUB             SP, SP, #0x28
370786:  MOV             R6, R0
370788:  MOV             R5, R1
37078A:  LDR             R0, [R6]
37078C:  MOV             R10, R2
37078E:  LDR             R1, [R0,#8]
370790:  MOV             R0, R6
370792:  BLX             R1
370794:  MOV             R8, R0
370796:  MOV             R0, R6; this
370798:  MOV             R1, R5; CEvent *
37079A:  BLX             j__ZN12CEventSource22ComputeEventSourceTypeERK6CEventRK4CPed; CEventSource::ComputeEventSourceType(CEvent const&,CPed const&)
37079E:  MOV             R9, R0
3707A0:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3707AA)
3707A2:  LDR.W           R1, [R5,#0x484]
3707A6:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
3707A8:  AND.W           R4, R1, #0x100
3707AC:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
3707AE:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
3707B0:  CBNZ            R0, loc_3707C6
3707B2:  MOVW            R0, #0xF1C0; unsigned int
3707B6:  BLX             _Znwj; operator new(uint)
3707BA:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
3707BE:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3707C4)
3707C0:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
3707C2:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
3707C4:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
3707C6:  CMP             R4, #0
3707C8:  ADD             R1, SP, #0x40+var_1C
3707CA:  SUB.W           R2, R7, #-var_1A
3707CE:  MOV.W           R6, #0
3707D2:  MOV.W           R3, #0xFFFFFFFF
3707D6:  IT NE
3707D8:  MOVNE           R4, #1
3707DA:  STRD.W          R4, R3, [SP,#0x40+var_40]; bool
3707DE:  STRD.W          R3, R3, [SP,#0x40+var_38]; int
3707E2:  MOV             R3, R9; int
3707E4:  STRD.W          R10, R6, [SP,#0x40+var_30]; int
3707E8:  STRD.W          R2, R1, [SP,#0x40+var_28]; __int16 *
3707EC:  MOV             R1, R5; CPed *
3707EE:  MOV             R2, R8; int
3707F0:  BLX             j__ZNK19CDecisionMakerTypes12MakeDecisionERK4CPediibiiiibRsS3_; CDecisionMakerTypes::MakeDecision(CPed const&,int,int,bool,int,int,int,int,bool,short &,short &)
3707F4:  LDRSH.W         R0, [R7,#var_1A]
3707F8:  CMP             R0, R10
3707FA:  IT EQ
3707FC:  MOVEQ           R6, #1
3707FE:  MOV             R0, R6
370800:  ADD             SP, SP, #0x28 ; '('
370802:  POP.W           {R8-R10}
370806:  POP             {R4-R7,PC}
