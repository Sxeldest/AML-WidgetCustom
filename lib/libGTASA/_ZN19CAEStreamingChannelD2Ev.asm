; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannelD2Ev
; Address            : 0x3A9650 - 0x3A9704
; =========================================================

3A9650:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CAEStreamingChannel::~CAEStreamingChannel()'
3A9652:  ADD             R7, SP, #8
3A9654:  SUB             SP, SP, #8
3A9656:  MOV             R4, R0
3A9658:  LDR             R0, =(_ZTV19CAEStreamingChannel_ptr - 0x3A9662)
3A965A:  LDR             R3, =(AESmoothFadeThread_ptr - 0x3A9666)
3A965C:  MOVS            R2, #0
3A965E:  ADD             R0, PC; _ZTV19CAEStreamingChannel_ptr
3A9660:  LDR             R1, [R4,#4]; OALSource *
3A9662:  ADD             R3, PC; AESmoothFadeThread_ptr
3A9664:  MOVT            R2, #0xC2C8; float
3A9668:  LDR             R5, [R0]; `vtable for'CAEStreamingChannel ...
3A966A:  LDR             R0, [R3]; AESmoothFadeThread ; this
3A966C:  ADD.W           R3, R5, #8
3A9670:  STR             R3, [R4]
3A9672:  MOVS            R5, #1
3A9674:  MOVS            R3, #0x23 ; '#'; __int16
3A9676:  STR             R5, [SP,#0x10+var_10]; bool
3A9678:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3A967C:  CBNZ            R0, loc_3A96A2
3A967E:  LDR             R5, [R4,#4]
3A9680:  LDR             R0, [R5,#0xC]
3A9682:  CMP             R0, #2
3A9684:  ITT EQ
3A9686:  MOVEQ           R0, R5; this
3A9688:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A968C:  LDR             R0, [R5,#8]
3A968E:  BLX             j_alSourceStop
3A9692:  MOVW            R0, #0x1014
3A9696:  STR             R0, [R5,#0x28]
3A9698:  MOVS            R0, #0
3A969A:  STR             R0, [R5,#0x20]
3A969C:  MOVS            R0, #1
3A969E:  STRB.W          R0, [R5,#0x2C]
3A96A2:  MOVW            R1, #:lower16:(elf_hash_chain+0x13EE8)
3A96A6:  LDR             R0, [R4,#4]; this
3A96A8:  MOVT            R1, #:upper16:(elf_hash_chain+0x13EE8)
3A96AC:  MOVS            R5, #0
3A96AE:  STR             R5, [R4,R1]
3A96B0:  MOVW            R1, #:lower16:(elf_hash_chain+0x13ED8)
3A96B4:  CMP             R0, #0
3A96B6:  MOVT            R1, #:upper16:(elf_hash_chain+0x13ED8)
3A96BA:  MOV             R2, #0xFFFFFFFB
3A96BE:  STR             R2, [R4,R1]
3A96C0:  IT NE
3A96C2:  BLXNE           j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A96C6:  MOVW            R1, #:lower16:(elf_hash_chain+0x13ED0)
3A96CA:  STR             R5, [R4,#4]
3A96CC:  MOVT            R1, #:upper16:(elf_hash_chain+0x13ED0)
3A96D0:  LDR             R0, [R4,R1]
3A96D2:  CBZ             R0, loc_3A96E0
3A96D4:  ADDS            R5, R4, R1
3A96D6:  LDR             R1, [R0]
3A96D8:  LDR             R1, [R1,#0x1C]
3A96DA:  BLX             R1
3A96DC:  MOVS            R0, #0
3A96DE:  STR             R0, [R5]
3A96E0:  MOV             R1, #0x2403C
3A96E8:  LDR             R0, [R4,R1]
3A96EA:  CBZ             R0, loc_3A96F8
3A96EC:  ADDS            R5, R4, R1
3A96EE:  LDR             R1, [R0]
3A96F0:  LDR             R1, [R1,#0x1C]
3A96F2:  BLX             R1
3A96F4:  MOVS            R0, #0
3A96F6:  STR             R0, [R5]
3A96F8:  MOV             R0, R4; this
3A96FA:  ADD             SP, SP, #8
3A96FC:  POP.W           {R4,R5,R7,LR}
3A9700:  B.W             j_j__ZN15CAEAudioChannelD2Ev; j_CAEAudioChannel::~CAEAudioChannel()
