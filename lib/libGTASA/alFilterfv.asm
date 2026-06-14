; =========================================================
; Game Engine Function: alFilterfv
; Address            : 0x254C0C - 0x254C8A
; =========================================================

254C0C:  PUSH            {R4-R7,LR}
254C0E:  ADD             R7, SP, #0xC
254C10:  PUSH.W          {R8}
254C14:  MOV             R8, R2
254C16:  MOV             R6, R1
254C18:  MOV             R5, R0
254C1A:  BLX             j_GetContextRef
254C1E:  MOV             R4, R0
254C20:  CBZ             R4, loc_254C3C
254C22:  LDR.W           R0, [R4,#0x88]
254C26:  MOV             R1, R5
254C28:  ADDS            R0, #0x88
254C2A:  BLX             j_LookupUIntMapKey
254C2E:  CBZ             R0, loc_254C42
254C30:  LDR             R5, [R0,#0x18]
254C32:  MOV             R1, R4
254C34:  MOV             R2, R6
254C36:  MOV             R3, R8
254C38:  BLX             R5
254C3A:  B               loc_254C7C
254C3C:  POP.W           {R8}
254C40:  POP             {R4-R7,PC}
254C42:  LDR             R0, =(TrapALError_ptr - 0x254C48)
254C44:  ADD             R0, PC; TrapALError_ptr
254C46:  LDR             R0, [R0]; TrapALError
254C48:  LDRB            R0, [R0]
254C4A:  CMP             R0, #0
254C4C:  ITT NE
254C4E:  MOVNE           R0, #5; sig
254C50:  BLXNE           raise
254C54:  LDREX.W         R0, [R4,#0x50]
254C58:  CBNZ            R0, loc_254C74
254C5A:  ADD.W           R0, R4, #0x50 ; 'P'
254C5E:  MOVW            R1, #0xA001
254C62:  DMB.W           ISH
254C66:  STREX.W         R2, R1, [R0]
254C6A:  CBZ             R2, loc_254C78
254C6C:  LDREX.W         R2, [R0]
254C70:  CMP             R2, #0
254C72:  BEQ             loc_254C66
254C74:  CLREX.W
254C78:  DMB.W           ISH
254C7C:  MOV             R0, R4
254C7E:  POP.W           {R8}
254C82:  POP.W           {R4-R7,LR}
254C86:  B.W             ALCcontext_DecRef
