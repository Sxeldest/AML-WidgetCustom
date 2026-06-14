; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel4StopEv
; Address            : 0x3AA250 - 0x3AA2B4
; =========================================================

3AA250:  PUSH            {R4,R5,R7,LR}
3AA252:  ADD             R7, SP, #8
3AA254:  SUB             SP, SP, #8
3AA256:  MOV             R4, R0
3AA258:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3AA262)
3AA25A:  LDR             R1, [R4,#4]; OALSource *
3AA25C:  MOVS            R2, #1
3AA25E:  ADD             R0, PC; AESmoothFadeThread_ptr
3AA260:  STR             R2, [SP,#0x10+var_10]; bool
3AA262:  MOVS            R2, #0
3AA264:  MOVS            R3, #0x23 ; '#'; __int16
3AA266:  LDR             R0, [R0]; AESmoothFadeThread ; this
3AA268:  MOVT            R2, #0xC2C8; float
3AA26C:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3AA270:  CBNZ            R0, loc_3AA296
3AA272:  LDR             R5, [R4,#4]
3AA274:  LDR             R0, [R5,#0xC]
3AA276:  CMP             R0, #2
3AA278:  ITT EQ
3AA27A:  MOVEQ           R0, R5; this
3AA27C:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3AA280:  LDR             R0, [R5,#8]
3AA282:  BLX             j_alSourceStop
3AA286:  MOVW            R0, #0x1014
3AA28A:  STR             R0, [R5,#0x28]
3AA28C:  MOVS            R0, #0
3AA28E:  STR             R0, [R5,#0x20]
3AA290:  MOVS            R0, #1
3AA292:  STRB.W          R0, [R5,#0x2C]
3AA296:  MOVW            R0, #:lower16:(elf_hash_chain+0x13EE8)
3AA29A:  MOVS            R1, #0
3AA29C:  MOVT            R0, #:upper16:(elf_hash_chain+0x13EE8)
3AA2A0:  STR             R1, [R4,R0]
3AA2A2:  MOV             R0, #0x24040
3AA2AA:  MOV             R1, #0xFFFFFFFB
3AA2AE:  STR             R1, [R4,R0]
3AA2B0:  ADD             SP, SP, #8
3AA2B2:  POP             {R4,R5,R7,PC}
