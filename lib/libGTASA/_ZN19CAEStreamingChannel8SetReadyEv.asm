; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel8SetReadyEv
; Address            : 0x3AA060 - 0x3AA0CE
; =========================================================

3AA060:  PUSH            {R4-R7,LR}
3AA062:  ADD             R7, SP, #0xC
3AA064:  PUSH.W          {R11}
3AA068:  MOVW            R1, #:lower16:(elf_hash_chain+0x13ED8)
3AA06C:  MOV             R4, R0
3AA06E:  MOVT            R1, #:upper16:(elf_hash_chain+0x13ED8)
3AA072:  ADDS            R6, R4, R1
3AA074:  LDR             R0, [R4,R1]
3AA076:  ADDS            R1, R0, #6
3AA078:  BEQ             loc_3AA0B4
3AA07A:  ADDS            R0, #5
3AA07C:  BNE             loc_3AA0C8
3AA07E:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3AA086)
3AA080:  LDR             R1, [R4,#4]; OALSource *
3AA082:  ADD             R0, PC; AESmoothFadeThread_ptr
3AA084:  LDR             R0, [R0]; AESmoothFadeThread ; this
3AA086:  BLX             j__ZN19CAESmoothFadeThread10CancelFadeEP9OALSource; CAESmoothFadeThread::CancelFade(OALSource *)
3AA08A:  LDR             R5, [R4,#4]
3AA08C:  LDR             R0, [R5,#0xC]
3AA08E:  CMP             R0, #2
3AA090:  ITT EQ
3AA092:  MOVEQ           R0, R5; this
3AA094:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3AA098:  LDR             R0, [R5,#8]
3AA09A:  BLX             j_alSourceStop
3AA09E:  MOVW            R0, #0x1014
3AA0A2:  STR             R0, [R5,#0x28]
3AA0A4:  MOVS            R0, #0
3AA0A6:  STR             R0, [R5,#0x20]
3AA0A8:  MOVS            R0, #1
3AA0AA:  STRB.W          R0, [R5,#0x2C]
3AA0AE:  MOV             R0, #0xFFFFFFFA
3AA0B2:  STR             R0, [R6]
3AA0B4:  MOV             R0, #0x24038
3AA0BC:  LDR             R0, [R4,R0]
3AA0BE:  CMP             R0, #0
3AA0C0:  ITT NE
3AA0C2:  MOVNE           R0, #0xFFFFFFFE
3AA0C6:  STRNE           R0, [R6]
3AA0C8:  POP.W           {R11}
3AA0CC:  POP             {R4-R7,PC}
