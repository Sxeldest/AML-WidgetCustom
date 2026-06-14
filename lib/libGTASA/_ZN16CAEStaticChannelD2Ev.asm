; =========================================================
; Game Engine Function: _ZN16CAEStaticChannelD2Ev
; Address            : 0x3A9058 - 0x3A908A
; =========================================================

3A9058:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CAEStaticChannel::~CAEStaticChannel()'
3A905A:  ADD             R7, SP, #8
3A905C:  MOV             R4, R0
3A905E:  LDR             R0, =(_ZTV16CAEStaticChannel_ptr - 0x3A9064)
3A9060:  ADD             R0, PC; _ZTV16CAEStaticChannel_ptr
3A9062:  LDR             R1, [R0]; `vtable for'CAEStaticChannel ...
3A9064:  LDR             R0, [R4,#4]; this
3A9066:  ADDS            R1, #8
3A9068:  STR             R1, [R4]
3A906A:  CBZ             R0, loc_3A907C
3A906C:  LDR             R1, =(g_numSoundChannelsUsed_ptr - 0x3A9072)
3A906E:  ADD             R1, PC; g_numSoundChannelsUsed_ptr
3A9070:  LDR             R1, [R1]; g_numSoundChannelsUsed
3A9072:  LDR             R2, [R1]
3A9074:  SUBS            R2, #1
3A9076:  STR             R2, [R1]
3A9078:  BLX             j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A907C:  MOVS            R0, #0
3A907E:  STR             R0, [R4,#4]
3A9080:  MOV             R0, R4; this
3A9082:  POP.W           {R4,R6,R7,LR}
3A9086:  B.W             j_j__ZN15CAEAudioChannelD2Ev; j_CAEAudioChannel::~CAEAudioChannel()
