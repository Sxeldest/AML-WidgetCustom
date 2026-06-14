; =========================================================
; Game Engine Function: _ZN9OALSource14UnqueueBuffersEv
; Address            : 0x27FA5C - 0x27FB0A
; =========================================================

27FA5C:  PUSH            {R4-R7,LR}
27FA5E:  ADD             R7, SP, #0xC
27FA60:  PUSH.W          {R8-R11}
27FA64:  SUB             SP, SP, #0xC
27FA66:  MOV.W           R8, #0
27FA6A:  MOV             R11, R0
27FA6C:  STR.W           R8, [SP,#0x28+var_20]
27FA70:  ADD             R2, SP, #0x28+var_20
27FA72:  LDR.W           R0, [R11,#8]
27FA76:  MOVW            R1, #0x1016
27FA7A:  BLX             j_alGetSourcei
27FA7E:  LDR             R0, [SP,#0x28+var_20]
27FA80:  CMP             R0, #0
27FA82:  SUB.W           R1, R0, #1
27FA86:  STR             R1, [SP,#0x28+var_20]
27FA88:  BEQ             loc_27FB02
27FA8A:  ADD.W           R10, SP, #0x28+var_24
27FA8E:  MOV             R9, #0xFFFFFFFC
27FA92:  STR.W           R8, [SP,#0x28+var_24]
27FA96:  MOVS            R1, #1
27FA98:  LDR.W           R0, [R11,#8]
27FA9C:  MOV             R2, R10
27FA9E:  BLX             j_alSourceUnqueueBuffers
27FAA2:  LDR.W           R1, [R11,#0x18]
27FAA6:  CBZ             R1, loc_27FAF6
27FAA8:  LDR             R3, [SP,#0x28+var_24]
27FAAA:  ADD.W           R2, R9, R1,LSL#2; n
27FAAE:  LDR.W           R0, [R11,#0x1C]; dest
27FAB2:  MOVS            R5, #0
27FAB4:  LDR             R6, [R0]
27FAB6:  LDR             R4, [R6,#8]
27FAB8:  CMP             R4, R3
27FABA:  ITT NE
27FABC:  LDRNE           R4, [R6,#0xC]
27FABE:  CMPNE           R4, R3
27FAC0:  BEQ             loc_27FACE
27FAC2:  ADDS            R5, #1
27FAC4:  ADDS            R0, #4
27FAC6:  SUBS            R2, #4
27FAC8:  CMP             R5, R1
27FACA:  BCC             loc_27FAB4
27FACC:  B               loc_27FAF6
27FACE:  LDR             R1, [R6,#0x10]
27FAD0:  LDR.W           R3, [R11,#0x20]
27FAD4:  ADD             R1, R3
27FAD6:  STR.W           R1, [R11,#0x20]
27FADA:  ADDS            R1, R0, #4; src
27FADC:  BLX             memmove_1
27FAE0:  LDR.W           R0, [R11,#0x18]
27FAE4:  CMP             R6, #0
27FAE6:  SUB.W           R0, R0, #1
27FAEA:  STR.W           R0, [R11,#0x18]
27FAEE:  ITT NE
27FAF0:  MOVNE           R0, R6; this
27FAF2:  BLXNE           j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
27FAF6:  LDR             R0, [SP,#0x28+var_20]
27FAF8:  CMP             R0, #0
27FAFA:  SUB.W           R1, R0, #1
27FAFE:  STR             R1, [SP,#0x28+var_20]
27FB00:  BNE             loc_27FA92
27FB02:  ADD             SP, SP, #0xC
27FB04:  POP.W           {R8-R11}
27FB08:  POP             {R4-R7,PC}
