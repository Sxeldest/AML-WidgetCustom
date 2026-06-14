; =========================================================
; Game Engine Function: _ZN14CConversations10AwkwardSayEiP4CPed
; Address            : 0x300D38 - 0x300D64
; =========================================================

300D38:  PUSH            {R4,R5,R7,LR}
300D3A:  ADD             R7, SP, #8
300D3C:  MOV             R2, R0; int
300D3E:  LDR             R0, =(AudioEngine_ptr - 0x300D48)
300D40:  MOV             R4, R1
300D42:  MOVS            R1, #0; unsigned __int8
300D44:  ADD             R0, PC; AudioEngine_ptr
300D46:  LDR             R5, [R0]; AudioEngine
300D48:  MOV             R0, R5; this
300D4A:  BLX             j__ZN12CAudioEngine19PreloadMissionAudioEhi; CAudioEngine::PreloadMissionAudio(uchar,int)
300D4E:  MOV             R0, R5; this
300D50:  MOVS            R1, #0; unsigned __int8
300D52:  MOV             R2, R4; CPed *
300D54:  BLX             j__ZN12CAudioEngine23AttachMissionAudioToPedEhP4CPed; CAudioEngine::AttachMissionAudioToPed(uchar,CPed *)
300D58:  LDR             R0, =(_ZN14CConversations18m_AwkwardSayStatusE_ptr - 0x300D60)
300D5A:  MOVS            R1, #1
300D5C:  ADD             R0, PC; _ZN14CConversations18m_AwkwardSayStatusE_ptr
300D5E:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus ...
300D60:  STR             R1, [R0]; CConversations::m_AwkwardSayStatus
300D62:  POP             {R4,R5,R7,PC}
