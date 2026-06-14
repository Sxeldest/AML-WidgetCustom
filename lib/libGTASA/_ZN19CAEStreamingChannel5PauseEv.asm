; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel5PauseEv
; Address            : 0x3AA1E4 - 0x3AA248
; =========================================================

3AA1E4:  PUSH            {R4,R5,R7,LR}
3AA1E6:  ADD             R7, SP, #8
3AA1E8:  SUB             SP, SP, #8
3AA1EA:  MOV             R4, R0
3AA1EC:  LDR             R0, [R4,#4]
3AA1EE:  CBZ             R0, loc_3AA244
3AA1F0:  MOV             R0, R4; this
3AA1F2:  BLX             j__ZN15CAEAudioChannel15IsBufferPlayingEv; CAEAudioChannel::IsBufferPlaying(void)
3AA1F6:  CBZ             R0, loc_3AA244
3AA1F8:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3AA204)
3AA1FA:  MOVS            R2, #1
3AA1FC:  LDR             R1, [R4,#4]; OALSource *
3AA1FE:  MOVS            R3, #0x23 ; '#'; __int16
3AA200:  ADD             R0, PC; AESmoothFadeThread_ptr
3AA202:  STR             R2, [SP,#0x10+var_10]; bool
3AA204:  MOVS            R2, #0
3AA206:  LDR             R0, [R0]; AESmoothFadeThread ; this
3AA208:  MOVT            R2, #0xC2C8; float
3AA20C:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3AA210:  CBNZ            R0, loc_3AA236
3AA212:  LDR             R5, [R4,#4]
3AA214:  LDR             R0, [R5,#0xC]
3AA216:  CMP             R0, #2
3AA218:  ITT EQ
3AA21A:  MOVEQ           R0, R5; this
3AA21C:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3AA220:  LDR             R0, [R5,#8]
3AA222:  BLX             j_alSourceStop
3AA226:  MOVW            R0, #0x1014
3AA22A:  STR             R0, [R5,#0x28]
3AA22C:  MOVS            R0, #0
3AA22E:  STR             R0, [R5,#0x20]
3AA230:  MOVS            R0, #1
3AA232:  STRB.W          R0, [R5,#0x2C]
3AA236:  MOVW            R0, #:lower16:(elf_hash_chain+0x13ED8)
3AA23A:  MOV             R1, #0xFFFFFFF9
3AA23E:  MOVT            R0, #:upper16:(elf_hash_chain+0x13ED8)
3AA242:  STR             R1, [R4,R0]
3AA244:  ADD             SP, SP, #8
3AA246:  POP             {R4,R5,R7,PC}
