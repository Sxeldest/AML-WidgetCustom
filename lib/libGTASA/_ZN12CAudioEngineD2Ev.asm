; =========================================================
; Game Engine Function: _ZN12CAudioEngineD2Ev
; Address            : 0x3BD968 - 0x3BD9FE
; =========================================================

3BD968:  PUSH            {R4,R5,R7,LR}
3BD96A:  ADD             R7, SP, #8
3BD96C:  MOV             R4, R0
3BD96E:  LDR             R0, =(_ZTV14CAEAudioEntity_ptr - 0x3BD974)
3BD970:  ADD             R0, PC; _ZTV14CAEAudioEntity_ptr
3BD972:  LDR             R0, [R0]; `vtable for'CAEAudioEntity ...
3BD974:  ADD.W           R5, R0, #8
3BD978:  MOVW            R0, #0x1F50
3BD97C:  STR             R5, [R4,R0]
3BD97E:  MOVW            R0, #0x1F58
3BD982:  ADD             R0, R4; this
3BD984:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BD988:  MOVW            R0, #0x1E38
3BD98C:  STR             R5, [R4,R0]
3BD98E:  ADD.W           R0, R4, #0x1E40; this
3BD992:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BD996:  ADDW            R0, R4, #0x4C4; this
3BD99A:  STR.W           R5, [R4,#0x4BC]
3BD99E:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BD9A2:  LDR             R0, =(_ZTV20CAEScriptAudioEntity_ptr - 0x3BD9AC)
3BD9A4:  STR.W           R5, [R4,#0x43C]
3BD9A8:  ADD             R0, PC; _ZTV20CAEScriptAudioEntity_ptr
3BD9AA:  LDR             R0, [R0]; `vtable for'CAEScriptAudioEntity ...
3BD9AC:  ADDS            R0, #8
3BD9AE:  STR.W           R0, [R4,#0x2A0]
3BD9B2:  ADDW            R0, R4, #0x444; this
3BD9B6:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BD9BA:  ADD.W           R0, R4, #0x3BC; this
3BD9BE:  STR.W           R5, [R4,#0x3B4]
3BD9C2:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BD9C6:  ADD.W           R0, R4, #0x2A8; this
3BD9CA:  STR.W           R5, [R4,#0x2A0]
3BD9CE:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BD9D2:  LDR             R0, =(_ZTV22CAEFrontendAudioEntity_ptr - 0x3BD9D8)
3BD9D4:  ADD             R0, PC; _ZTV22CAEFrontendAudioEntity_ptr
3BD9D6:  LDR             R0, [R0]; `vtable for'CAEFrontendAudioEntity ...
3BD9D8:  ADDS            R0, #8
3BD9DA:  STR.W           R0, [R4,#0xB4]
3BD9DE:  ADD.W           R0, R4, #0x1F8; this
3BD9E2:  BLX             j__ZN22CAETwinLoopSoundEntityD2Ev; CAETwinLoopSoundEntity::~CAETwinLoopSoundEntity()
3BD9E6:  ADD.W           R0, R4, #0x150; this
3BD9EA:  BLX             j__ZN22CAETwinLoopSoundEntityD2Ev; CAETwinLoopSoundEntity::~CAETwinLoopSoundEntity()
3BD9EE:  ADD.W           R0, R4, #0xBC; this
3BD9F2:  STR.W           R5, [R4,#0xB4]
3BD9F6:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BD9FA:  MOV             R0, R4
3BD9FC:  POP             {R4,R5,R7,PC}
