; =========================================================
; Game Engine Function: _ZN9OALSource9SetBufferEP9OALBuffer
; Address            : 0x27FCAC - 0x27FCE8
; =========================================================

27FCAC:  PUSH            {R4,R5,R7,LR}
27FCAE:  ADD             R7, SP, #8
27FCB0:  MOV             R5, R0
27FCB2:  MOV             R4, R1
27FCB4:  LDR             R0, [R5,#0x10]; this
27FCB6:  CMP             R0, #0
27FCB8:  IT NE
27FCBA:  BLXNE           j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
27FCBE:  MOVS            R0, #0
27FCC0:  MOVS            R2, #1
27FCC2:  STR             R0, [R5,#0x10]
27FCC4:  LDR             R1, [R4,#0xC]
27FCC6:  LDR             R0, [R5,#8]
27FCC8:  CMP             R1, #0
27FCCA:  IT NE
27FCCC:  MOVNE           R2, #2
27FCCE:  CMP             R0, #0
27FCD0:  STR             R2, [R5,#0xC]
27FCD2:  ITTT NE
27FCD4:  LDRNE           R2, [R4,#8]
27FCD6:  MOVWNE          R1, #0x1009
27FCDA:  BLXNE           j_alSourcei
27FCDE:  STR             R4, [R5,#0x10]
27FCE0:  LDR             R0, [R4,#4]
27FCE2:  ADDS            R0, #1
27FCE4:  STR             R0, [R4,#4]
27FCE6:  POP             {R4,R5,R7,PC}
