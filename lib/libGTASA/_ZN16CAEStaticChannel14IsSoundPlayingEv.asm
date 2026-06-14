; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel14IsSoundPlayingEv
; Address            : 0x3A94BC - 0x3A9508
; =========================================================

3A94BC:  PUSH            {R4,R6,R7,LR}
3A94BE:  ADD             R7, SP, #8
3A94C0:  LDR             R4, [R0,#4]
3A94C2:  CBZ             R4, loc_3A94D6
3A94C4:  LDRB            R1, [R0,#0x1C]
3A94C6:  CMP             R1, #0
3A94C8:  ITT EQ
3A94CA:  LDRBEQ.W        R0, [R0,#0x2D]
3A94CE:  CMPEQ           R0, #0
3A94D0:  BEQ             loc_3A94DA
3A94D2:  MOVS            R0, #1
3A94D4:  POP             {R4,R6,R7,PC}
3A94D6:  MOVS            R0, #0
3A94D8:  POP             {R4,R6,R7,PC}
3A94DA:  MOV             R0, R4; this
3A94DC:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A94E0:  MOV             R2, R4
3A94E2:  LDR.W           R1, [R2,#0x28]!
3A94E6:  CBNZ            R1, loc_3A94FA
3A94E8:  LDR             R0, [R4,#8]
3A94EA:  MOVW            R1, #0x1014
3A94EE:  STR             R1, [R4,#0x28]
3A94F0:  MOVW            R1, #0x1010
3A94F4:  BLX             j_alGetSourcei
3A94F8:  LDR             R1, [R4,#0x28]
3A94FA:  MOVW            R2, #0x1012
3A94FE:  MOVS            R0, #0
3A9500:  CMP             R1, R2
3A9502:  IT EQ
3A9504:  MOVEQ           R0, #1
3A9506:  POP             {R4,R6,R7,PC}
