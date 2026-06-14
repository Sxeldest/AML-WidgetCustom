; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel13SynchPlaybackEv
; Address            : 0x3A93C8 - 0x3A9454
; =========================================================

3A93C8:  PUSH            {R4-R7,LR}
3A93CA:  ADD             R7, SP, #0xC
3A93CC:  PUSH.W          {R11}
3A93D0:  SUB             SP, SP, #8
3A93D2:  MOV             R4, R0
3A93D4:  LDR             R0, [R4,#4]; this
3A93D6:  CMP             R0, #0
3A93D8:  ITT NE
3A93DA:  LDRBNE.W        R1, [R4,#0x2D]
3A93DE:  CMPNE           R1, #0
3A93E0:  BEQ             loc_3A944C
3A93E2:  LDRB            R1, [R4,#0x1C]
3A93E4:  CBNZ            R1, loc_3A944C
3A93E6:  LDRB.W          R1, [R4,#0x2C]
3A93EA:  CBZ             R1, loc_3A9412
3A93EC:  MOVS            R1, #0; float
3A93EE:  MOVS            R5, #0
3A93F0:  BLX             j__ZN9OALSource9SetVolumeEf; OALSource::SetVolume(float)
3A93F4:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3A9400)
3A93F6:  MOV             R3, #0xFFFFFFFE; __int16
3A93FA:  LDR             R1, [R4,#4]; OALSource *
3A93FC:  ADD             R0, PC; AESmoothFadeThread_ptr
3A93FE:  LDR             R2, [R4,#0x18]; float
3A9400:  STR             R5, [SP,#0x18+var_18]; bool
3A9402:  LDR             R0, [R0]; AESmoothFadeThread ; this
3A9404:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3A9408:  CBNZ            R0, loc_3A9412
3A940A:  LDR             R0, [R4,#4]; this
3A940C:  LDR             R1, [R4,#0x18]; float
3A940E:  BLX             j__ZN9OALSource9SetVolumeEf; OALSource::SetVolume(float)
3A9412:  LDR             R6, [R4,#4]
3A9414:  LDRB.W          R5, [R4,#0x28]
3A9418:  MOV             R0, R6; this
3A941A:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A941E:  LDR             R0, [R6,#0xC]
3A9420:  CMP             R0, #2
3A9422:  BEQ             loc_3A9436
3A9424:  CMP             R5, #0
3A9426:  MOVW            R1, #0x1007
3A942A:  IT NE
3A942C:  MOVNE           R5, #1
3A942E:  LDR             R0, [R6,#8]
3A9430:  MOV             R2, R5
3A9432:  BLX             j_alSourcei
3A9436:  LDR             R0, [R4,#4]; this
3A9438:  BLX             j__ZN9OALSource4PlayEv; OALSource::Play(void)
3A943C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3A9444)
3A943E:  MOVS            R1, #0
3A9440:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3A9442:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3A9444:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3A9446:  STRB.W          R1, [R4,#0x2D]
3A944A:  STR             R0, [R4,#0x3C]
3A944C:  ADD             SP, SP, #8
3A944E:  POP.W           {R11}
3A9452:  POP             {R4-R7,PC}
