; =========================================================
; Game Engine Function: alIsEnabled
; Address            : 0x25CF50 - 0x25CFB6
; =========================================================

25CF50:  PUSH            {R4,R5,R7,LR}
25CF52:  ADD             R7, SP, #8
25CF54:  MOV             R5, R0
25CF56:  BLX             j_GetContextRef
25CF5A:  MOV             R4, R0
25CF5C:  CBZ             R4, loc_25CF6A
25CF5E:  CMP.W           R5, #0x200
25CF62:  BNE             loc_25CF70
25CF64:  LDRB.W          R5, [R4,#0x5C]
25CF68:  B               loc_25CFAC
25CF6A:  MOVS            R5, #0
25CF6C:  MOV             R0, R5
25CF6E:  POP             {R4,R5,R7,PC}
25CF70:  LDR             R0, =(TrapALError_ptr - 0x25CF76)
25CF72:  ADD             R0, PC; TrapALError_ptr
25CF74:  LDR             R0, [R0]; TrapALError
25CF76:  LDRB            R0, [R0]
25CF78:  CMP             R0, #0
25CF7A:  ITT NE
25CF7C:  MOVNE           R0, #5; sig
25CF7E:  BLXNE           raise
25CF82:  LDREX.W         R0, [R4,#0x50]
25CF86:  CBNZ            R0, loc_25CFA2
25CF88:  ADD.W           R0, R4, #0x50 ; 'P'
25CF8C:  MOVW            R1, #0xA002
25CF90:  DMB.W           ISH
25CF94:  STREX.W         R2, R1, [R0]
25CF98:  CBZ             R2, loc_25CFA6
25CF9A:  LDREX.W         R2, [R0]
25CF9E:  CMP             R2, #0
25CFA0:  BEQ             loc_25CF94
25CFA2:  CLREX.W
25CFA6:  MOVS            R5, #0
25CFA8:  DMB.W           ISH
25CFAC:  MOV             R0, R4
25CFAE:  BLX             j_ALCcontext_DecRef
25CFB2:  MOV             R0, R5
25CFB4:  POP             {R4,R5,R7,PC}
