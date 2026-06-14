; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner18CreateFirstSubTaskEP4CPed
; Address            : 0x53498C - 0x5349EA
; =========================================================

53498C:  PUSH            {R4,R5,R7,LR}
53498E:  ADD             R7, SP, #8
534990:  SUB             SP, SP, #8
534992:  MOV             R5, R0
534994:  MOV             R4, R1
534996:  LDRB.W          R0, [R5,#0x58]
53499A:  CBZ             R0, loc_5349CA
53499C:  LDR             R0, [R5,#0x34]
53499E:  MOVW            R1, #0x4B4
5349A2:  CMP             R0, R1
5349A4:  BNE             loc_5349CA
5349A6:  LDRB.W          R0, [R5,#0x72]
5349AA:  CBZ             R0, loc_5349CA
5349AC:  LDR             R1, [R5,#0x38]; CPed *
5349AE:  MOV             R0, R4; this
5349B0:  BLX             j__ZN23CAEPedSpeechAudioEntity22RequestPedConversationEP4CPedS1_; CAEPedSpeechAudioEntity::RequestPedConversation(CPed *,CPed *)
5349B4:  CBZ             R0, loc_5349BE
5349B6:  MOVS            R0, #1
5349B8:  STRB.W          R0, [R5,#0x74]
5349BC:  B               loc_5349CA
5349BE:  LDRB.W          R1, [R5,#0x73]
5349C2:  MOVS            R0, #0
5349C4:  CBZ             R1, loc_5349E6
5349C6:  STRB.W          R0, [R5,#0x72]
5349CA:  MOV             R0, R4; this
5349CC:  BLX             j__ZN4CPed21StopPlayingHandSignalEv; CPed::StopPlayingHandSignal(void)
5349D0:  MOVS            R0, #dword_20; this
5349D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5349D6:  MOV.W           R1, #0x41000000
5349DA:  MOVS            R2, #0; bool
5349DC:  STR             R1, [SP,#0x10+var_10]; float
5349DE:  MOVS            R1, #0x32 ; '2'; int
5349E0:  MOVS            R3, #0; bool
5349E2:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5349E6:  ADD             SP, SP, #8
5349E8:  POP             {R4,R5,R7,PC}
