; =========================================================
; Game Engine Function: _ZN9OALSource4PlayEv
; Address            : 0x27FDCA - 0x27FE8E
; =========================================================

27FDCA:  PUSH            {R4,R6,R7,LR}
27FDCC:  ADD             R7, SP, #8
27FDCE:  MOV             R4, R0
27FDD0:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
27FDD4:  LDR             R0, [R4,#0xC]
27FDD6:  CMP             R0, #2
27FDD8:  BNE             loc_27FE7A
27FDDA:  MOV             R0, R4; this
27FDDC:  BLX             j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
27FDE0:  LDR             R1, [R4,#0x10]
27FDE2:  LDR             R0, [R4,#8]
27FDE4:  ADD.W           R2, R1, #0xC
27FDE8:  MOVS            R1, #1
27FDEA:  BLX             j_alSourceQueueBuffers
27FDEE:  LDR             R1, [R4,#0x10]
27FDF0:  LDR             R0, [R4,#8]
27FDF2:  ADD.W           R2, R1, #8
27FDF6:  MOVS            R1, #1
27FDF8:  BLX             j_alSourceQueueBuffers
27FDFC:  LDR             R1, [R4,#0x10]
27FDFE:  LDR             R0, [R4,#8]
27FE00:  ADD.W           R2, R1, #8
27FE04:  MOVS            R1, #1
27FE06:  BLX             j_alSourceQueueBuffers
27FE0A:  LDR             R1, [R4,#0x10]
27FE0C:  LDR             R0, [R4,#8]
27FE0E:  ADD.W           R2, R1, #8
27FE12:  MOVS            R1, #1
27FE14:  BLX             j_alSourceQueueBuffers
27FE18:  LDR             R1, [R4,#0x10]
27FE1A:  LDR             R0, [R4,#8]
27FE1C:  ADD.W           R2, R1, #8
27FE20:  MOVS            R1, #1
27FE22:  BLX             j_alSourceQueueBuffers
27FE26:  LDR             R1, [R4,#0x10]
27FE28:  LDR             R0, [R4,#8]
27FE2A:  ADD.W           R2, R1, #8
27FE2E:  MOVS            R1, #1
27FE30:  BLX             j_alSourceQueueBuffers
27FE34:  LDR             R1, [R4,#0x10]
27FE36:  LDR             R0, [R4,#8]
27FE38:  ADD.W           R2, R1, #8
27FE3C:  MOVS            R1, #1
27FE3E:  BLX             j_alSourceQueueBuffers
27FE42:  LDR             R1, [R4,#0x10]
27FE44:  LDR             R0, [R4,#8]
27FE46:  ADD.W           R2, R1, #8
27FE4A:  MOVS            R1, #1
27FE4C:  BLX             j_alSourceQueueBuffers
27FE50:  LDR             R1, [R4,#0x10]
27FE52:  LDR             R0, [R4,#8]
27FE54:  ADD.W           R2, R1, #8
27FE58:  MOVS            R1, #1
27FE5A:  BLX             j_alSourceQueueBuffers
27FE5E:  LDR             R1, [R4,#0x10]
27FE60:  LDR             R0, [R4,#8]
27FE62:  ADD.W           R2, R1, #8
27FE66:  MOVS            R1, #1
27FE68:  BLX             j_alSourceQueueBuffers
27FE6C:  LDR             R1, [R4,#0x10]
27FE6E:  LDR             R0, [R4,#8]
27FE70:  ADD.W           R2, R1, #8
27FE74:  MOVS            R1, #1
27FE76:  BLX             j_alSourceQueueBuffers
27FE7A:  LDR             R0, [R4,#8]
27FE7C:  BLX             j_alSourcePlay
27FE80:  MOVS            R0, #0
27FE82:  STRB.W          R0, [R4,#0x2C]
27FE86:  MOVW            R0, #0x1012
27FE8A:  STR             R0, [R4,#0x28]
27FE8C:  POP             {R4,R6,R7,PC}
