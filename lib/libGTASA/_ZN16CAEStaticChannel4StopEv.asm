; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel4StopEv
; Address            : 0x3A953C - 0x3A95CE
; =========================================================

3A953C:  PUSH            {R4,R5,R7,LR}
3A953E:  ADD             R7, SP, #8
3A9540:  SUB             SP, SP, #8
3A9542:  MOV             R4, R0
3A9544:  LDR             R5, [R4,#4]
3A9546:  CBZ             R5, loc_3A95C4
3A9548:  MOV             R0, R5; this
3A954A:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A954E:  MOV             R2, R5
3A9550:  LDR.W           R0, [R2,#0x28]!
3A9554:  CBNZ            R0, loc_3A9568
3A9556:  LDR             R0, [R5,#8]
3A9558:  MOVW            R1, #0x1014
3A955C:  STR             R1, [R5,#0x28]
3A955E:  MOVW            R1, #0x1010
3A9562:  BLX             j_alGetSourcei
3A9566:  LDR             R0, [R5,#0x28]
3A9568:  MOVW            R1, #0x1012
3A956C:  CMP             R0, R1
3A956E:  BNE             loc_3A95B0
3A9570:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3A957E)
3A9572:  MOVS            R2, #1
3A9574:  LDR             R1, [R4,#4]; OALSource *
3A9576:  MOV.W           R3, #0xFFFFFFFF; __int16
3A957A:  ADD             R0, PC; AESmoothFadeThread_ptr
3A957C:  STR             R2, [SP,#0x10+var_10]; bool
3A957E:  MOVS            R2, #0
3A9580:  LDR             R0, [R0]; AESmoothFadeThread ; this
3A9582:  MOVT            R2, #0xC2C8; float
3A9586:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3A958A:  CBNZ            R0, loc_3A95B0
3A958C:  LDR             R5, [R4,#4]
3A958E:  LDR             R0, [R5,#0xC]
3A9590:  CMP             R0, #2
3A9592:  ITT EQ
3A9594:  MOVEQ           R0, R5; this
3A9596:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A959A:  LDR             R0, [R5,#8]
3A959C:  BLX             j_alSourceStop
3A95A0:  MOVW            R0, #0x1014
3A95A4:  STR             R0, [R5,#0x28]
3A95A6:  MOVS            R0, #0
3A95A8:  STR             R0, [R5,#0x20]
3A95AA:  MOVS            R0, #1
3A95AC:  STRB.W          R0, [R5,#0x2C]
3A95B0:  LDR             R0, [R4,#4]; this
3A95B2:  CBZ             R0, loc_3A95C4
3A95B4:  LDR             R1, =(g_numSoundChannelsUsed_ptr - 0x3A95BA)
3A95B6:  ADD             R1, PC; g_numSoundChannelsUsed_ptr
3A95B8:  LDR             R1, [R1]; g_numSoundChannelsUsed
3A95BA:  LDR             R2, [R1]
3A95BC:  SUBS            R2, #1
3A95BE:  STR             R2, [R1]
3A95C0:  BLX             j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A95C4:  MOVS            R0, #0
3A95C6:  STRB            R0, [R4,#0x1C]
3A95C8:  STR             R0, [R4,#4]
3A95CA:  ADD             SP, SP, #8
3A95CC:  POP             {R4,R5,R7,PC}
