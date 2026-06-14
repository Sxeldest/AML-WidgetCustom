; =========================================================
; Game Engine Function: alGetListeneri
; Address            : 0x255C10 - 0x255C96
; =========================================================

255C10:  PUSH            {R4,R5,R7,LR}
255C12:  ADD             R7, SP, #8
255C14:  MOV             R5, R1
255C16:  BLX             j_GetContextRef
255C1A:  MOV             R4, R0
255C1C:  CMP             R4, #0
255C1E:  IT EQ
255C20:  POPEQ           {R4,R5,R7,PC}
255C22:  LDR             R0, =(TrapALError_ptr - 0x255C2A)
255C24:  CMP             R5, #0
255C26:  ADD             R0, PC; TrapALError_ptr
255C28:  LDR             R0, [R0]; TrapALError
255C2A:  LDRB            R0, [R0]
255C2C:  BEQ             loc_255C5A
255C2E:  CMP             R0, #0
255C30:  ITT NE
255C32:  MOVNE           R0, #5; sig
255C34:  BLXNE           raise
255C38:  LDREX.W         R0, [R4,#0x50]
255C3C:  CBNZ            R0, loc_255C84
255C3E:  ADD.W           R0, R4, #0x50 ; 'P'
255C42:  MOVW            R1, #0xA002
255C46:  DMB.W           ISH
255C4A:  STREX.W         R2, R1, [R0]
255C4E:  CBZ             R2, loc_255C88
255C50:  LDREX.W         R2, [R0]
255C54:  CMP             R2, #0
255C56:  BEQ             loc_255C4A
255C58:  B               loc_255C84
255C5A:  CMP             R0, #0
255C5C:  ITT NE
255C5E:  MOVNE           R0, #5; sig
255C60:  BLXNE           raise
255C64:  LDREX.W         R0, [R4,#0x50]
255C68:  CBNZ            R0, loc_255C84
255C6A:  ADD.W           R0, R4, #0x50 ; 'P'
255C6E:  MOVW            R1, #0xA003
255C72:  DMB.W           ISH
255C76:  STREX.W         R2, R1, [R0]
255C7A:  CBZ             R2, loc_255C88
255C7C:  LDREX.W         R2, [R0]
255C80:  CMP             R2, #0
255C82:  BEQ             loc_255C76
255C84:  CLREX.W
255C88:  DMB.W           ISH
255C8C:  MOV             R0, R4
255C8E:  POP.W           {R4,R5,R7,LR}
255C92:  B.W             ALCcontext_DecRef
