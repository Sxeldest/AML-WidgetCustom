; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerDeal18CreateFirstSubTaskEP4CPed
; Address            : 0x534BF8 - 0x534C56
; =========================================================

534BF8:  PUSH            {R4,R5,R7,LR}
534BFA:  ADD             R7, SP, #8
534BFC:  SUB             SP, SP, #8
534BFE:  MOV             R5, R0
534C00:  MOV             R4, R1
534C02:  LDRB.W          R0, [R5,#0x58]
534C06:  CBZ             R0, loc_534C36
534C08:  LDR             R0, [R5,#0x34]
534C0A:  MOVW            R1, #0x4B4
534C0E:  CMP             R0, R1
534C10:  BNE             loc_534C36
534C12:  LDRB.W          R0, [R5,#0x72]
534C16:  CBZ             R0, loc_534C36
534C18:  LDR             R1, [R5,#0x38]; CPed *
534C1A:  MOV             R0, R4; this
534C1C:  BLX             j__ZN23CAEPedSpeechAudioEntity22RequestPedConversationEP4CPedS1_; CAEPedSpeechAudioEntity::RequestPedConversation(CPed *,CPed *)
534C20:  CBZ             R0, loc_534C2A
534C22:  MOVS            R0, #1
534C24:  STRB.W          R0, [R5,#0x74]
534C28:  B               loc_534C36
534C2A:  LDRB.W          R1, [R5,#0x73]
534C2E:  MOVS            R0, #0
534C30:  CBZ             R1, loc_534C52
534C32:  STRB.W          R0, [R5,#0x72]
534C36:  MOV             R0, R4; this
534C38:  BLX             j__ZN4CPed21StopPlayingHandSignalEv; CPed::StopPlayingHandSignal(void)
534C3C:  MOVS            R0, #dword_20; this
534C3E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534C42:  MOV.W           R1, #0x41000000
534C46:  MOVS            R2, #0; bool
534C48:  STR             R1, [SP,#0x10+var_10]; float
534C4A:  MOVS            R1, #0x32 ; '2'; int
534C4C:  MOVS            R3, #0; bool
534C4E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
534C52:  ADD             SP, SP, #8
534C54:  POP             {R4,R5,R7,PC}
