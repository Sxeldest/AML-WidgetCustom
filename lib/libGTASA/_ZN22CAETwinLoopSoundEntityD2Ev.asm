; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntityD2Ev
; Address            : 0x3AA7E4 - 0x3AA83C
; =========================================================

3AA7E4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CAETwinLoopSoundEntity::~CAETwinLoopSoundEntity()'
3AA7E6:  ADD             R7, SP, #8
3AA7E8:  MOV             R4, R0
3AA7EA:  LDR             R0, =(_ZTV22CAETwinLoopSoundEntity_ptr - 0x3AA7F4)
3AA7EC:  LDRH.W          R1, [R4,#0x88]
3AA7F0:  ADD             R0, PC; _ZTV22CAETwinLoopSoundEntity_ptr
3AA7F2:  CMP             R1, #0
3AA7F4:  LDR             R0, [R0]; `vtable for'CAETwinLoopSoundEntity ...
3AA7F6:  ADD.W           R0, R0, #8
3AA7FA:  STR             R0, [R4]
3AA7FC:  BEQ             loc_3AA824
3AA7FE:  LDR.W           R0, [R4,#0xA0]; this
3AA802:  CBZ             R0, loc_3AA80E
3AA804:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3AA808:  MOVS            R0, #0
3AA80A:  STR.W           R0, [R4,#0xA0]
3AA80E:  LDR.W           R0, [R4,#0xA4]; this
3AA812:  CBZ             R0, loc_3AA81E
3AA814:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3AA818:  MOVS            R0, #0
3AA81A:  STR.W           R0, [R4,#0xA4]
3AA81E:  MOVS            R0, #0
3AA820:  STRH.W          R0, [R4,#0x88]
3AA824:  LDR             R0, =(_ZTV14CAEAudioEntity_ptr - 0x3AA82A)
3AA826:  ADD             R0, PC; _ZTV14CAEAudioEntity_ptr
3AA828:  LDR             R0, [R0]; `vtable for'CAEAudioEntity ...
3AA82A:  ADD.W           R1, R0, #8
3AA82E:  MOV             R0, R4
3AA830:  STR.W           R1, [R0],#8; this
3AA834:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AA838:  MOV             R0, R4
3AA83A:  POP             {R4,R6,R7,PC}
