; =========================================================
; Game Engine Function: _ZN9OALSource7SetDataEPvjjj
; Address            : 0x27FBF8 - 0x27FCA2
; =========================================================

27FBF8:  PUSH            {R4-R7,LR}
27FBFA:  ADD             R7, SP, #0xC
27FBFC:  PUSH.W          {R8-R11}
27FC00:  SUB             SP, SP, #4
27FC02:  MOV             R4, R0
27FC04:  MOVS            R0, #0x14; unsigned int
27FC06:  MOV             R10, R3
27FC08:  MOV             R11, R2
27FC0A:  MOV             R9, R1
27FC0C:  BLX             _Znwj; operator new(uint)
27FC10:  MOV             R5, R0
27FC12:  LDR             R0, =(_ZN7OALBase11livingCountE_ptr - 0x27FC1C)
27FC14:  LDR             R1, =(_ZTV9OALBuffer_ptr - 0x27FC22)
27FC16:  MOVS            R6, #1
27FC18:  ADD             R0, PC; _ZN7OALBase11livingCountE_ptr
27FC1A:  ADD.W           R8, R5, #8
27FC1E:  ADD             R1, PC; _ZTV9OALBuffer_ptr
27FC20:  STR             R6, [R5,#4]
27FC22:  LDR             R0, [R0]; OALBase::livingCount ...
27FC24:  LDR             R1, [R1]; `vtable for'OALBuffer ...
27FC26:  LDR             R2, [R0]; OALBase::livingCount
27FC28:  ADDS            R2, #1
27FC2A:  STR             R2, [R0]; OALBase::livingCount
27FC2C:  MOVS            R0, #0
27FC2E:  STR             R0, [R5,#0xC]
27FC30:  ADD.W           R0, R1, #8
27FC34:  STR             R0, [R5]
27FC36:  MOVS            R0, #1
27FC38:  MOV             R1, R8
27FC3A:  BLX             j_alGenBuffers
27FC3E:  LDR             R2, [R7,#arg_0]
27FC40:  MOVW            R1, #0x1103
27FC44:  LDR             R0, [R5,#8]
27FC46:  MOV             R3, R11
27FC48:  CMP             R2, #1
27FC4A:  STR.W           R10, [SP,#0x20+var_20]
27FC4E:  IT EQ
27FC50:  MOVWEQ          R1, #0x1101
27FC54:  MOV             R2, R9
27FC56:  BLX             j_alBufferData
27FC5A:  STR.W           R11, [R5,#0x10]
27FC5E:  LDR             R0, [R4,#0x10]; this
27FC60:  CMP             R0, #0
27FC62:  IT NE
27FC64:  BLXNE           j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
27FC68:  LDR             R1, [R5,#0xC]
27FC6A:  LDR             R0, [R4,#8]
27FC6C:  CMP             R1, #0
27FC6E:  MOV.W           R1, #0
27FC72:  IT NE
27FC74:  MOVNE           R6, #2
27FC76:  CMP             R0, #0
27FC78:  STR             R6, [R4,#0xC]
27FC7A:  STR             R1, [R4,#0x10]
27FC7C:  ITTT NE
27FC7E:  LDRNE.W         R2, [R8]
27FC82:  MOVWNE          R1, #0x1009
27FC86:  BLXNE           j_alSourcei
27FC8A:  STR             R5, [R4,#0x10]
27FC8C:  LDR             R0, [R5,#4]
27FC8E:  ADDS            R0, #1
27FC90:  STR             R0, [R5,#4]
27FC92:  MOV             R0, R5; this
27FC94:  ADD             SP, SP, #4
27FC96:  POP.W           {R8-R11}
27FC9A:  POP.W           {R4-R7,LR}
27FC9E:  B.W             j_j__ZN7OALBase7ReleaseEv; j_OALBase::Release(void)
