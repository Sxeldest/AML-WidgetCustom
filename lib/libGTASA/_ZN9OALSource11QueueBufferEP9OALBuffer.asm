; =========================================================
; Game Engine Function: _ZN9OALSource11QueueBufferEP9OALBuffer
; Address            : 0x27FD2C - 0x27FDB6
; =========================================================

27FD2C:  PUSH            {R4-R7,LR}
27FD2E:  ADD             R7, SP, #0xC
27FD30:  PUSH.W          {R8-R10}
27FD34:  MOV             R4, R1
27FD36:  MOV             R5, R0
27FD38:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
27FD3C:  MOV             R0, R5; this
27FD3E:  BLX             j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
27FD42:  LDR             R0, [R5,#8]
27FD44:  ADD.W           R2, R4, #8
27FD48:  MOVS            R1, #1
27FD4A:  BLX             j_alSourceQueueBuffers
27FD4E:  LDRD.W          R1, R6, [R5,#0x14]
27FD52:  ADDS            R0, R6, #1
27FD54:  CMP             R1, R0
27FD56:  BCS             loc_27FD9C
27FD58:  MOVW            R1, #0xAAAB
27FD5C:  LSLS            R0, R0, #2
27FD5E:  MOVT            R1, #0xAAAA
27FD62:  UMULL.W         R0, R1, R0, R1
27FD66:  MOVS            R0, #3
27FD68:  ADD.W           R10, R0, R1,LSR#1
27FD6C:  MOV.W           R0, R10,LSL#2; byte_count
27FD70:  BLX             malloc
27FD74:  LDR.W           R8, [R5,#0x1C]
27FD78:  MOV             R9, R0
27FD7A:  CMP.W           R8, #0
27FD7E:  BEQ             loc_27FD92
27FD80:  LSLS            R2, R6, #2; size_t
27FD82:  MOV             R0, R9; void *
27FD84:  MOV             R1, R8; void *
27FD86:  BLX             memcpy_0
27FD8A:  MOV             R0, R8; p
27FD8C:  BLX             free
27FD90:  LDR             R6, [R5,#0x18]
27FD92:  STR.W           R9, [R5,#0x1C]
27FD96:  STR.W           R10, [R5,#0x14]
27FD9A:  B               loc_27FDA0
27FD9C:  LDR.W           R9, [R5,#0x1C]
27FDA0:  STR.W           R4, [R9,R6,LSL#2]
27FDA4:  LDR             R0, [R5,#0x18]
27FDA6:  ADDS            R0, #1
27FDA8:  STR             R0, [R5,#0x18]
27FDAA:  LDR             R0, [R4,#4]
27FDAC:  ADDS            R0, #1
27FDAE:  STR             R0, [R4,#4]
27FDB0:  POP.W           {R8-R10}
27FDB4:  POP             {R4-R7,PC}
