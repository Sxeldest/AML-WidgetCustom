; =========================================================
; Game Engine Function: alDistanceModel
; Address            : 0x25DA08 - 0x25DA7C
; =========================================================

25DA08:  PUSH            {R4,R5,R7,LR}
25DA0A:  ADD             R7, SP, #8
25DA0C:  MOV             R5, R0
25DA0E:  BLX             j_GetContextRef
25DA12:  MOV             R4, R0
25DA14:  CMP             R4, #0
25DA16:  IT EQ
25DA18:  POPEQ           {R4,R5,R7,PC}
25DA1A:  MOVW            R0, #0xD001
25DA1E:  SUBS            R0, R5, R0
25DA20:  CMP             R0, #6
25DA22:  BCS             loc_25DA3C
25DA24:  STR             R5, [R4,#0x58]
25DA26:  LDRB.W          R0, [R4,#0x5C]
25DA2A:  CMP             R0, #0
25DA2C:  ITT EQ
25DA2E:  MOVEQ           R0, #1
25DA30:  STREQ           R0, [R4,#0x54]
25DA32:  MOV             R0, R4
25DA34:  POP.W           {R4,R5,R7,LR}
25DA38:  B.W             ALCcontext_DecRef
25DA3C:  CMP             R5, #0
25DA3E:  BEQ             loc_25DA24
25DA40:  LDR             R0, =(TrapALError_ptr - 0x25DA46)
25DA42:  ADD             R0, PC; TrapALError_ptr
25DA44:  LDR             R0, [R0]; TrapALError
25DA46:  LDRB            R0, [R0]
25DA48:  CMP             R0, #0
25DA4A:  ITT NE
25DA4C:  MOVNE           R0, #5; sig
25DA4E:  BLXNE           raise
25DA52:  LDREX.W         R0, [R4,#0x50]
25DA56:  CBNZ            R0, loc_25DA72
25DA58:  ADD.W           R0, R4, #0x50 ; 'P'
25DA5C:  MOVW            R1, #0xA003
25DA60:  DMB.W           ISH
25DA64:  STREX.W         R2, R1, [R0]
25DA68:  CBZ             R2, loc_25DA76
25DA6A:  LDREX.W         R2, [R0]
25DA6E:  CMP             R2, #0
25DA70:  BEQ             loc_25DA64
25DA72:  CLREX.W
25DA76:  DMB.W           ISH
25DA7A:  B               loc_25DA32
