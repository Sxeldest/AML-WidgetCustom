; =========================================================
; Game Engine Function: _ZN22CEventEditableResponse23ComputeResponseTaskTypeEP4CPedb
; Address            : 0x3706E4 - 0x370774
; =========================================================

3706E4:  PUSH            {R4-R7,LR}
3706E6:  ADD             R7, SP, #0xC
3706E8:  PUSH.W          {R8-R11}
3706EC:  SUB             SP, SP, #0x24
3706EE:  MOV             R6, R0
3706F0:  MOV             R10, R2
3706F2:  MOV             R5, R6
3706F4:  MOV             R11, R1
3706F6:  LDRH.W          R0, [R5,#0xA]!
3706FA:  CMP             R0, #0xC8
3706FC:  BNE             loc_37076C
3706FE:  LDR             R0, [R6]
370700:  LDR             R1, [R0,#8]
370702:  MOV             R0, R6
370704:  BLX             R1
370706:  MOV             R8, R0
370708:  MOV             R0, R6; this
37070A:  MOV             R1, R11; CEvent *
37070C:  BLX             j__ZN12CEventSource22ComputeEventSourceTypeERK6CEventRK4CPed; CEventSource::ComputeEventSourceType(CEvent const&,CPed const&)
370710:  MOV             R9, R0
370712:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x37071C)
370714:  LDR.W           R1, [R11,#0x484]
370718:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
37071A:  AND.W           R4, R1, #0x100
37071E:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
370720:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
370722:  CBNZ            R0, loc_370738
370724:  MOVW            R0, #0xF1C0; unsigned int
370728:  BLX             _Znwj; operator new(uint)
37072C:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
370730:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x370736)
370732:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
370734:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
370736:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
370738:  CMP             R4, #0
37073A:  ADD.W           R1, R6, #0xC
37073E:  MOV.W           R12, #0xFFFFFFFF
370742:  MOV.W           R3, #0x12C
370746:  MOV.W           R6, #0x4B0
37074A:  MOVW            R2, #0x6A4
37074E:  IT NE
370750:  MOVNE           R4, #1
370752:  STRD.W          R4, R2, [SP,#0x40+var_40]; bool
370756:  MOV             R2, R8; int
370758:  STRD.W          R6, R3, [SP,#0x40+var_38]; int
37075C:  MOV             R3, R9; int
37075E:  STRD.W          R12, R10, [SP,#0x40+var_30]; int
370762:  STRD.W          R5, R1, [SP,#0x40+var_28]; __int16 *
370766:  MOV             R1, R11; CPed *
370768:  BLX             j__ZNK19CDecisionMakerTypes12MakeDecisionERK4CPediibiiiibRsS3_; CDecisionMakerTypes::MakeDecision(CPed const&,int,int,bool,int,int,int,int,bool,short &,short &)
37076C:  ADD             SP, SP, #0x24 ; '$'
37076E:  POP.W           {R8-R11}
370772:  POP             {R4-R7,PC}
