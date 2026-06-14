; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel15IsBufferPlayingEv
; Address            : 0x391AA8 - 0x391AE2
; =========================================================

391AA8:  PUSH            {R4,R6,R7,LR}
391AAA:  ADD             R7, SP, #8
391AAC:  LDR             R4, [R0,#4]
391AAE:  CBZ             R4, loc_391ADE
391AB0:  MOV             R0, R4; this
391AB2:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
391AB6:  MOV             R2, R4
391AB8:  LDR.W           R1, [R2,#0x28]!
391ABC:  CBNZ            R1, loc_391AD0
391ABE:  LDR             R0, [R4,#8]
391AC0:  MOVW            R1, #0x1014
391AC4:  STR             R1, [R4,#0x28]
391AC6:  MOVW            R1, #0x1010
391ACA:  BLX             j_alGetSourcei
391ACE:  LDR             R1, [R4,#0x28]
391AD0:  MOVW            R2, #0x1012
391AD4:  MOVS            R0, #0
391AD6:  CMP             R1, R2
391AD8:  IT EQ
391ADA:  MOVEQ           R0, #1
391ADC:  POP             {R4,R6,R7,PC}
391ADE:  MOVS            R0, #0
391AE0:  POP             {R4,R6,R7,PC}
