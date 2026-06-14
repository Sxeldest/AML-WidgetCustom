; =========================================================
; Game Engine Function: _ZN16CAEStaticChannelD0Ev
; Address            : 0x3A9094 - 0x3A90CA
; =========================================================

3A9094:  PUSH            {R4,R6,R7,LR}
3A9096:  ADD             R7, SP, #8
3A9098:  MOV             R4, R0
3A909A:  LDR             R0, =(_ZTV16CAEStaticChannel_ptr - 0x3A90A0)
3A909C:  ADD             R0, PC; _ZTV16CAEStaticChannel_ptr
3A909E:  LDR             R1, [R0]; `vtable for'CAEStaticChannel ...
3A90A0:  LDR             R0, [R4,#4]; this
3A90A2:  ADDS            R1, #8
3A90A4:  STR             R1, [R4]
3A90A6:  CBZ             R0, loc_3A90B8
3A90A8:  LDR             R1, =(g_numSoundChannelsUsed_ptr - 0x3A90AE)
3A90AA:  ADD             R1, PC; g_numSoundChannelsUsed_ptr
3A90AC:  LDR             R1, [R1]; g_numSoundChannelsUsed
3A90AE:  LDR             R2, [R1]
3A90B0:  SUBS            R2, #1
3A90B2:  STR             R2, [R1]
3A90B4:  BLX             j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A90B8:  MOVS            R0, #0
3A90BA:  STR             R0, [R4,#4]
3A90BC:  MOV             R0, R4; this
3A90BE:  BLX             j__ZN15CAEAudioChannelD2Ev; CAEAudioChannel::~CAEAudioChannel()
3A90C2:  POP.W           {R4,R6,R7,LR}
3A90C6:  B.W             j__ZdlPv; operator delete(void *)
