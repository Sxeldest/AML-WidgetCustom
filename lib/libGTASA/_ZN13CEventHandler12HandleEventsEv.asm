; =========================================================
; Game Engine Function: _ZN13CEventHandler12HandleEventsEv
; Address            : 0x37B7C8 - 0x37BB0E
; =========================================================

37B7C8:  PUSH            {R4-R7,LR}
37B7CA:  ADD             R7, SP, #0xC
37B7CC:  PUSH.W          {R8-R11}
37B7D0:  SUB             SP, SP, #0xC
37B7D2:  LDR             R2, [R0,#0x10]
37B7D4:  CBZ             R2, loc_37B7E2
37B7D6:  LDR             R1, [R0,#0xC]
37B7D8:  CMP             R1, #0
37B7DA:  ITTT EQ
37B7DC:  MOVEQ           R1, #0
37B7DE:  STREQ           R1, [R0,#0x10]
37B7E0:  STREQ           R2, [R0,#8]
37B7E2:  LDRD.W          R2, R9, [R0]
37B7E6:  ADD.W           R8, R0, #4
37B7EA:  LDR.W           R3, [R2,#0x440]
37B7EE:  LDRD.W          R4, R6, [R3,#4]
37B7F2:  CMP             R4, #0
37B7F4:  MOV             R5, R4
37B7F6:  BNE             loc_37B802
37B7F8:  CMP             R6, #0
37B7FA:  MOV             R4, R6
37B7FC:  IT EQ
37B7FE:  LDREQ           R4, [R3,#0xC]
37B800:  LDR             R5, [R3,#0xC]
37B802:  ADD.W           R10, R3, #0x68 ; 'h'
37B806:  STR             R0, [SP,#0x28+var_20]
37B808:  STR             R3, [SP,#0x28+var_28]
37B80A:  MOV             R0, R10; this
37B80C:  BLX             j__ZNK11CEventGroup23GetHighestPriorityEventEv; CEventGroup::GetHighestPriorityEvent(void)
37B810:  MOV             R11, R0
37B812:  MOV             R0, R10; this
37B814:  STR.W           R10, [SP,#0x28+var_24]
37B818:  MOV             R10, R8
37B81A:  MOV             R8, R4
37B81C:  BLX             j__ZN11CEventGroup10TickEventsEv; CEventGroup::TickEvents(void)
37B820:  CMP.W           R9, #0
37B824:  BEQ             loc_37B83A
37B826:  CMP             R9, R8
37B828:  MOV             R0, R9
37B82A:  IT NE
37B82C:  MOVNE           R0, #0
37B82E:  CMP.W           R8, #0
37B832:  IT EQ
37B834:  MOVEQ           R0, R8
37B836:  STR.W           R0, [R10]
37B83A:  ORRS.W          R0, R6, R5
37B83E:  ITT EQ
37B840:  MOVEQ           R0, #0
37B842:  STREQ.W         R0, [R10]
37B846:  CMP             R6, #0
37B848:  LDR             R4, [SP,#0x28+var_20]
37B84A:  MOV             R6, R11
37B84C:  BEQ             loc_37B8F2
37B84E:  CMP             R5, #0
37B850:  BEQ             loc_37B906
37B852:  CMP             R6, #0
37B854:  BEQ             loc_37B91A
37B856:  LDR             R0, [R6]
37B858:  LDR             R1, [R0,#8]
37B85A:  MOV             R0, R6
37B85C:  BLX             R1
37B85E:  CMP             R0, #9
37B860:  BNE             loc_37B86C
37B862:  LDR             R0, [R4]
37B864:  LDR             R1, [R0]
37B866:  LDR             R2, [R1,#0x14]
37B868:  MOVS            R1, #0
37B86A:  BLX             R2
37B86C:  LDR             R0, [R4,#0xC]
37B86E:  CMP             R0, #0
37B870:  ITT EQ
37B872:  LDREQ           R0, [R4,#8]
37B874:  CMPEQ           R0, #0
37B876:  BEQ             loc_37B8DE
37B878:  LDR             R1, [R0]
37B87A:  LDR             R1, [R1,#0x40]
37B87C:  BLX             R1
37B87E:  CBNZ            R0, loc_37B8DE
37B880:  LDR             R0, [R4,#0xC]
37B882:  CMP             R0, #0
37B884:  IT EQ
37B886:  LDREQ           R0, [R4,#8]
37B888:  LDR             R1, [R0]
37B88A:  LDR             R1, [R1,#8]
37B88C:  BLX             R1
37B88E:  MOV             R5, R0
37B890:  LDR             R0, [R6]
37B892:  LDR             R1, [R0,#8]
37B894:  MOV             R0, R6
37B896:  BLX             R1
37B898:  CMP             R5, R0
37B89A:  BNE             loc_37B8DE
37B89C:  LDR             R5, [SP,#0x28+var_24]
37B89E:  MOV             R1, R6; CEvent *
37B8A0:  MOV             R0, R5; this
37B8A2:  BLX             j__ZN11CEventGroup6RemoveEP6CEvent; CEventGroup::Remove(CEvent *)
37B8A6:  MOV             R0, R5; this
37B8A8:  MOVS            R1, #0; bool
37B8AA:  MOVS            R6, #0
37B8AC:  BLX             j__ZN11CEventGroup19RemoveInvalidEventsEb; CEventGroup::RemoveInvalidEvents(bool)
37B8B0:  MOV             R0, R5; this
37B8B2:  BLX             j__ZN11CEventGroup10ReorganiseEv; CEventGroup::Reorganise(void)
37B8B6:  CMP.W           R8, #0
37B8BA:  BNE             loc_37B942
37B8BC:  LDR             R0, [R4,#0xC]
37B8BE:  STR             R6, [R4,#4]
37B8C0:  CMP             R0, #0
37B8C2:  ITTT NE
37B8C4:  LDRNE           R1, [R0]
37B8C6:  LDRNE           R1, [R1,#4]
37B8C8:  BLXNE           R1
37B8CA:  LDR             R0, [R4,#8]
37B8CC:  MOVS            R5, #0
37B8CE:  STR             R5, [R4,#0xC]
37B8D0:  CMP             R0, #0
37B8D2:  ITTT NE
37B8D4:  LDRNE           R1, [R0]
37B8D6:  LDRNE           R1, [R1,#4]
37B8D8:  BLXNE           R1
37B8DA:  STR             R5, [R4,#8]
37B8DC:  B               loc_37B942
37B8DE:  LDR             R1, [R4,#8]
37B8E0:  CBZ             R1, loc_37B94A
37B8E2:  LDR             R0, [R6]
37B8E4:  LDR             R2, [R0,#0x30]
37B8E6:  MOV             R0, R6
37B8E8:  BLX             R2
37B8EA:  CMP             R0, #0
37B8EC:  BNE.W           loc_37BA40
37B8F0:  B               loc_37BAF0
37B8F2:  LDR             R0, [R4,#0xC]
37B8F4:  CMP             R0, #0
37B8F6:  ITTT NE
37B8F8:  LDRNE           R1, [R0]
37B8FA:  LDRNE           R1, [R1,#4]
37B8FC:  BLXNE           R1
37B8FE:  MOVS            R0, #0
37B900:  STR             R0, [R4,#0xC]
37B902:  CMP             R5, #0
37B904:  BNE             loc_37B852
37B906:  LDR             R0, [R4,#8]
37B908:  CMP             R0, #0
37B90A:  ITTT NE
37B90C:  LDRNE           R1, [R0]
37B90E:  LDRNE           R1, [R1,#4]
37B910:  BLXNE           R1
37B912:  MOVS            R0, #0
37B914:  STR             R0, [R4,#8]
37B916:  CMP             R6, #0
37B918:  BNE             loc_37B856
37B91A:  CMP.W           R8, #0
37B91E:  BNE             loc_37B942
37B920:  LDR             R0, [R4,#0xC]
37B922:  MOVS            R5, #0
37B924:  STR             R5, [R4,#4]
37B926:  CMP             R0, #0
37B928:  ITTT NE
37B92A:  LDRNE           R1, [R0]
37B92C:  LDRNE           R1, [R1,#4]
37B92E:  BLXNE           R1
37B930:  LDR             R0, [R4,#8]
37B932:  STR             R5, [R4,#0xC]
37B934:  CMP             R0, #0
37B936:  ITTT NE
37B938:  LDRNE           R1, [R0]
37B93A:  LDRNE           R1, [R1,#4]
37B93C:  BLXNE           R1
37B93E:  MOVS            R0, #0
37B940:  STR             R0, [R4,#8]
37B942:  ADD             SP, SP, #0xC
37B944:  POP.W           {R8-R11}
37B948:  POP             {R4-R7,PC}
37B94A:  LDR             R0, [R4,#0xC]
37B94C:  CMP             R0, #0
37B94E:  BEQ.W           loc_37BA40
37B952:  LDR             R0, [R6]
37B954:  LDR             R1, [R0,#8]
37B956:  MOV             R0, R6
37B958:  BLX             R1
37B95A:  SUBS            R0, #1; switch 93 cases
37B95C:  CMP             R0, #0x5C ; '\'
37B95E:  BHI.W           def_37B964; jumptable 0037B964 default case, cases 7-11,14-32,34-43,45,47-55,57,58,61-66,68-73,75-92
37B962:  MOVS            R5, #1
37B964:  TBH.W           [PC,R0,LSL#1]; switch jump
37B968:  DCW 0x5D; jump table for switch statement
37B96A:  DCW 0x5D
37B96C:  DCW 0x5D
37B96E:  DCW 0x5D
37B970:  DCW 0x5D
37B972:  DCW 0x5D
37B974:  DCW 0xD1
37B976:  DCW 0xD1
37B978:  DCW 0xD1
37B97A:  DCW 0xD1
37B97C:  DCW 0xD1
37B97E:  DCW 0x5D
37B980:  DCW 0x5D
37B982:  DCW 0xD1
37B984:  DCW 0xD1
37B986:  DCW 0xD1
37B988:  DCW 0xD1
37B98A:  DCW 0xD1
37B98C:  DCW 0xD1
37B98E:  DCW 0xD1
37B990:  DCW 0xD1
37B992:  DCW 0xD1
37B994:  DCW 0xD1
37B996:  DCW 0xD1
37B998:  DCW 0xD1
37B99A:  DCW 0xD1
37B99C:  DCW 0xD1
37B99E:  DCW 0xD1
37B9A0:  DCW 0xD1
37B9A2:  DCW 0xD1
37B9A4:  DCW 0xD1
37B9A6:  DCW 0xD1
37B9A8:  DCW 0x5D
37B9AA:  DCW 0xD1
37B9AC:  DCW 0xD1
37B9AE:  DCW 0xD1
37B9B0:  DCW 0xD1
37B9B2:  DCW 0xD1
37B9B4:  DCW 0xD1
37B9B6:  DCW 0xD1
37B9B8:  DCW 0xD1
37B9BA:  DCW 0xD1
37B9BC:  DCW 0xD1
37B9BE:  DCW 0x5D
37B9C0:  DCW 0xD1
37B9C2:  DCW 0x5D
37B9C4:  DCW 0xD1
37B9C6:  DCW 0xD1
37B9C8:  DCW 0xD1
37B9CA:  DCW 0xD1
37B9CC:  DCW 0xD1
37B9CE:  DCW 0xD1
37B9D0:  DCW 0xD1
37B9D2:  DCW 0xD1
37B9D4:  DCW 0xD1
37B9D6:  DCW 0x5D
37B9D8:  DCW 0xD1
37B9DA:  DCW 0xD1
37B9DC:  DCW 0x5D
37B9DE:  DCW 0x5D
37B9E0:  DCW 0xD1
37B9E2:  DCW 0xD1
37B9E4:  DCW 0xD1
37B9E6:  DCW 0xD1
37B9E8:  DCW 0xD1
37B9EA:  DCW 0xD1
37B9EC:  DCW 0x5D
37B9EE:  DCW 0xD1
37B9F0:  DCW 0xD1
37B9F2:  DCW 0xD1
37B9F4:  DCW 0xD1
37B9F6:  DCW 0xD1
37B9F8:  DCW 0xD1
37B9FA:  DCW 0x5D
37B9FC:  DCW 0xD1
37B9FE:  DCW 0xD1
37BA00:  DCW 0xD1
37BA02:  DCW 0xD1
37BA04:  DCW 0xD1
37BA06:  DCW 0xD1
37BA08:  DCW 0xD1
37BA0A:  DCW 0xD1
37BA0C:  DCW 0xD1
37BA0E:  DCW 0xD1
37BA10:  DCW 0xD1
37BA12:  DCW 0xD1
37BA14:  DCW 0xD1
37BA16:  DCW 0xD1
37BA18:  DCW 0xD1
37BA1A:  DCW 0xD1
37BA1C:  DCW 0xD1
37BA1E:  DCW 0xD1
37BA20:  DCW 0x5D
37BA22:  LDR             R0, [R6]; jumptable 0037B964 cases 1-6,12,13,33,44,46,56,59,60,67,74,93
37BA24:  LDR             R1, [R4,#0xC]
37BA26:  LDR             R2, [R0,#0x30]
37BA28:  MOV             R0, R6
37BA2A:  BLX             R2
37BA2C:  CBNZ            R5, loc_37BA3A
37BA2E:  CBZ             R0, loc_37BA3A
37BA30:  LDR             R1, [R4,#0x10]
37BA32:  CMP             R1, #0
37BA34:  BNE.W           loc_37B8E2
37BA38:  B               loc_37BA40
37BA3A:  ANDS            R0, R5
37BA3C:  CMP             R0, #1
37BA3E:  BNE             loc_37BAF0
37BA40:  LDR             R0, [SP,#0x28+var_28]
37BA42:  ADDS            R5, R0, #4
37BA44:  MOV             R0, R5; this
37BA46:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37BA4A:  MOV             R11, R0
37BA4C:  CMP.W           R11, #0
37BA50:  BEQ             loc_37BA68
37BA52:  LDR.W           R0, [R11]
37BA56:  MOVS            R2, #1
37BA58:  LDR             R1, [R4]
37BA5A:  MOV             R3, R6
37BA5C:  LDR.W           R12, [R0,#0x1C]
37BA60:  MOV             R0, R11
37BA62:  BLX             R12
37BA64:  CMP             R0, #1
37BA66:  BNE             loc_37BA9A
37BA68:  MOV             R0, R5; this
37BA6A:  MOV             R1, R6; CEvent *
37BA6C:  BLX             j__ZN12CTaskManager10StopTimersEPK6CEvent; CTaskManager::StopTimers(CEvent const*)
37BA70:  MOVS            R0, #1
37BA72:  ORRS.W          R1, R9, R8
37BA76:  BEQ             loc_37BAA2
37BA78:  CMP.W           R9, #0
37BA7C:  BEQ             loc_37BA84
37BA7E:  CMP.W           R8, #0
37BA82:  BEQ             loc_37BA88
37BA84:  CMP             R0, #1
37BA86:  BNE             loc_37BAD6
37BA88:  MOV             R0, R4; this
37BA8A:  MOV             R1, R6; CEvent *
37BA8C:  MOV             R2, R9; CTask *
37BA8E:  BLX             j__ZN13CEventHandler24ComputeEventResponseTaskEP6CEventP5CTask; CEventHandler::ComputeEventResponseTask(CEvent *,CTask *)
37BA92:  MOVS            R1, #0
37BA94:  LDR             R0, [R4,#0x24]
37BA96:  STR             R1, [R4,#4]
37BA98:  B               loc_37BAB0
37BA9A:  MOVS            R0, #0
37BA9C:  ORRS.W          R1, R9, R8
37BAA0:  BNE             loc_37BA78
37BAA2:  CBZ             R0, loc_37BACE
37BAA4:  MOV             R0, R4; this
37BAA6:  MOV             R1, R6; CEvent *
37BAA8:  MOVS            R2, #0; CTask *
37BAAA:  BLX             j__ZN13CEventHandler24ComputeEventResponseTaskEP6CEventP5CTask; CEventHandler::ComputeEventResponseTask(CEvent *,CTask *)
37BAAE:  LDR             R0, [R4,#0x24]
37BAB0:  CMP             R0, #0
37BAB2:  ITTT NE
37BAB4:  MOVNE           R0, R10; this
37BAB6:  MOVNE           R2, R6; CEvent *
37BAB8:  BLXNE           j__ZN20CEventHandlerHistory18RecordCurrentEventEP4CPedRK6CEvent; CEventHandlerHistory::RecordCurrentEvent(CPed *,CEvent const&)
37BABC:  MOV             R0, R4; this
37BABE:  MOV             R1, R6; CEvent *
37BAC0:  BLX             j__ZNK13CEventHandler20SetEventResponseTaskERK6CEvent; CEventHandler::SetEventResponseTask(CEvent const&)
37BAC4:  LDR             R0, [SP,#0x28+var_24]; this
37BAC6:  MOV             R1, R6; CEvent *
37BAC8:  BLX             j__ZN11CEventGroup6RemoveEP6CEvent; CEventGroup::Remove(CEvent *)
37BACC:  B               loc_37BAF0
37BACE:  LDR             R0, [R6,#4]
37BAD0:  SUBS            R0, #1
37BAD2:  STR             R0, [R6,#4]
37BAD4:  B               loc_37BAF0
37BAD6:  LDR             R0, [R6,#4]
37BAD8:  MOVS            R2, #0
37BADA:  MOV             R3, R6
37BADC:  SUBS            R0, #1
37BADE:  STR             R0, [R6,#4]
37BAE0:  LDR.W           R0, [R11]
37BAE4:  LDR             R1, [R4]
37BAE6:  LDR             R5, [R0,#0x1C]
37BAE8:  MOV             R0, R11
37BAEA:  BLX             R5
37BAEC:  STR.W           R8, [R4,#4]
37BAF0:  LDR             R4, [SP,#0x28+var_24]
37BAF2:  MOVS            R1, #0; bool
37BAF4:  MOV             R0, R4; this
37BAF6:  BLX             j__ZN11CEventGroup19RemoveInvalidEventsEb; CEventGroup::RemoveInvalidEvents(bool)
37BAFA:  MOV             R0, R4; this
37BAFC:  ADD             SP, SP, #0xC
37BAFE:  POP.W           {R8-R11}
37BB02:  POP.W           {R4-R7,LR}
37BB06:  B.W             sub_19F474
37BB0A:  MOVS            R5, #0; jumptable 0037B964 default case, cases 7-11,14-32,34-43,45,47-55,57,58,61-66,68-73,75-92
37BB0C:  B               loc_37BA22; jumptable 0037B964 cases 1-6,12,13,33,44,46,56,59,60,67,74,93
