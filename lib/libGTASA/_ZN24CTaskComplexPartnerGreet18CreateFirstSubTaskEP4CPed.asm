; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerGreet18CreateFirstSubTaskEP4CPed
; Address            : 0x534E18 - 0x534E76
; =========================================================

534E18:  PUSH            {R4,R5,R7,LR}
534E1A:  ADD             R7, SP, #8
534E1C:  SUB             SP, SP, #8
534E1E:  MOV             R5, R0
534E20:  MOV             R4, R1
534E22:  LDRB.W          R0, [R5,#0x58]
534E26:  CBZ             R0, loc_534E56
534E28:  LDR             R0, [R5,#0x34]
534E2A:  MOVW            R1, #0x4B4
534E2E:  CMP             R0, R1
534E30:  BNE             loc_534E56
534E32:  LDRB.W          R0, [R5,#0x72]
534E36:  CBZ             R0, loc_534E56
534E38:  LDR             R1, [R5,#0x38]; CPed *
534E3A:  MOV             R0, R4; this
534E3C:  BLX             j__ZN23CAEPedSpeechAudioEntity22RequestPedConversationEP4CPedS1_; CAEPedSpeechAudioEntity::RequestPedConversation(CPed *,CPed *)
534E40:  CBZ             R0, loc_534E4A
534E42:  MOVS            R0, #1
534E44:  STRB.W          R0, [R5,#0x74]
534E48:  B               loc_534E56
534E4A:  LDRB.W          R1, [R5,#0x73]
534E4E:  MOVS            R0, #0
534E50:  CBZ             R1, loc_534E72
534E52:  STRB.W          R0, [R5,#0x72]
534E56:  MOV             R0, R4; this
534E58:  BLX             j__ZN4CPed21StopPlayingHandSignalEv; CPed::StopPlayingHandSignal(void)
534E5C:  MOVS            R0, #dword_20; this
534E5E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534E62:  MOV.W           R1, #0x41000000
534E66:  MOVS            R2, #0; bool
534E68:  STR             R1, [SP,#0x10+var_10]; float
534E6A:  MOVS            R1, #0x32 ; '2'; int
534E6C:  MOVS            R3, #0; bool
534E6E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
534E72:  ADD             SP, SP, #8
534E74:  POP             {R4,R5,R7,PC}
