; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel4StopEb
; Address            : 0x3A9860 - 0x3A98D2
; =========================================================

3A9860:  PUSH            {R4-R7,LR}
3A9862:  ADD             R7, SP, #0xC
3A9864:  PUSH.W          {R11}
3A9868:  SUB             SP, SP, #8
3A986A:  MOV             R4, R0
3A986C:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3A9876)
3A986E:  MOV             R5, R1
3A9870:  LDR             R1, [R4,#4]; OALSource *
3A9872:  ADD             R0, PC; AESmoothFadeThread_ptr
3A9874:  MOVS            R2, #1
3A9876:  STR             R2, [SP,#0x18+var_18]; bool
3A9878:  MOVS            R2, #0
3A987A:  LDR             R0, [R0]; AESmoothFadeThread ; this
3A987C:  MOVT            R2, #0xC2C8; float
3A9880:  MOVS            R3, #0x23 ; '#'; __int16
3A9882:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3A9886:  CBNZ            R0, loc_3A98AC
3A9888:  LDR             R6, [R4,#4]
3A988A:  LDR             R0, [R6,#0xC]
3A988C:  CMP             R0, #2
3A988E:  ITT EQ
3A9890:  MOVEQ           R0, R6; this
3A9892:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A9896:  LDR             R0, [R6,#8]
3A9898:  BLX             j_alSourceStop
3A989C:  MOVW            R0, #0x1014
3A98A0:  STR             R0, [R6,#0x28]
3A98A2:  MOVS            R0, #0
3A98A4:  STR             R0, [R6,#0x20]
3A98A6:  MOVS            R0, #1
3A98A8:  STRB.W          R0, [R6,#0x2C]
3A98AC:  CMP             R5, #1
3A98AE:  BNE             loc_3A98CA
3A98B0:  MOVW            R0, #:lower16:(elf_hash_chain+0x13EE8)
3A98B4:  MOVS            R1, #0
3A98B6:  MOVT            R0, #:upper16:(elf_hash_chain+0x13EE8)
3A98BA:  STR             R1, [R4,R0]
3A98BC:  MOV             R0, #0x24040
3A98C4:  MOV             R1, #0xFFFFFFFB
3A98C8:  STR             R1, [R4,R0]
3A98CA:  ADD             SP, SP, #8
3A98CC:  POP.W           {R11}
3A98D0:  POP             {R4-R7,PC}
