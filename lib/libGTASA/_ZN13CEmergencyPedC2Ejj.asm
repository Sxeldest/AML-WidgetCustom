; =========================================================
; Game Engine Function: _ZN13CEmergencyPedC2Ejj
; Address            : 0x49ED58 - 0x49ED84
; =========================================================

49ED58:  PUSH            {R4,R5,R7,LR}
49ED5A:  ADD             R7, SP, #8
49ED5C:  MOV             R4, R2
49ED5E:  MOV             R5, R0
49ED60:  BLX             j__ZN4CPedC2Ej; CPed::CPed(uint)
49ED64:  LDR             R0, =(_ZTV13CEmergencyPed_ptr - 0x49ED6C)
49ED66:  MOV             R1, R4; unsigned int
49ED68:  ADD             R0, PC; _ZTV13CEmergencyPed_ptr
49ED6A:  LDR             R0, [R0]; `vtable for'CEmergencyPed ...
49ED6C:  ADDS            R0, #8
49ED6E:  STR             R0, [R5]
49ED70:  MOV             R0, R5; this
49ED72:  BLX             j__ZN4CPed13SetModelIndexEj; CPed::SetModelIndex(uint)
49ED76:  ADD.W           R0, R5, #0x298; this
49ED7A:  MOV             R1, R5; CEntity *
49ED7C:  BLX             j__ZN23CAEPedSpeechAudioEntity10InitialiseEP7CEntity; CAEPedSpeechAudioEntity::Initialise(CEntity *)
49ED80:  MOV             R0, R5
49ED82:  POP             {R4,R5,R7,PC}
